// ignore_for_file: avoid_positional_boolean_parameters

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// ValueSetExpanderSimple
class ValueSetExpanderSimple implements ValueSetExpander {
  /// Create a new ValueSet expander
  ValueSetExpanderSimple(this.context, [this.logger]);

  /// The worker context
  final WorkerContext context;

  /// Optional logger
  final LoggingService? logger;

  /// List of all errors encountered during expansion
  final List<String> _allErrors = [];

  /// Get all errors from the expansion
  List<String> getAllErrors() => List.unmodifiable(_allErrors);

  @override
  Future<ValueSetExpansionOutcome> expand(
    ValueSet source,
    Parameters? parameters,
  ) async {
    _allErrors.clear();

    // Check if the ValueSet is already expanded
    if (source.expansion != null) {
      return ValueSetExpansionOutcome(source);
    }

    // Check that the ValueSet has a composition
    if (source.compose == null ||
        (source.compose!.include.isEmpty &&
            (source.compose!.exclude == null ||
                source.compose!.exclude!.isEmpty))) {
      _allErrors.add('ValueSet has no compose element, or the compose element '
          'has no include or exclude element');
      return ValueSetExpansionOutcome.withError(
        null,
        'ValueSet has no compose element, or the compose element '
        'has no include or exclude element',
        TerminologyServiceErrorClass.valueSetUnsupported,
      );
    }

    try {
      // Create a copy of the ValueSet to expand
      final result = source.toJson();
      var expansion = ValueSet.fromJson(result);

      // Clear any existing expansion
      expansion = expansion.copyWith(expansion: null);

      // Extract parameters
      final excludeNested = getParameterBool(parameters, 'excludeNested', true);
      final includeDefinition =
          getParameterBool(parameters, 'includeDefinition', false);

      // Set up the expansion
      var vsExpansion = ValueSetExpansion(
        identifier: FhirUri(DateTime.now().millisecondsSinceEpoch.toString()),
        timestamp: FhirDateTime.fromDateTime(DateTime.now()),
      );

      expansion = expansion.copyWith(expansion: vsExpansion);

      // Process includes
      for (final include in source.compose!.include) {
        vsExpansion = await processIncludeExclude(
          include,
          vsExpansion,
          true,
          excludeNested,
          includeDefinition,
        );
      }

      // Process excludes
      if (source.compose!.exclude != null) {
        for (final exclude in source.compose!.exclude!) {
          vsExpansion = await processIncludeExclude(
            exclude,
            vsExpansion,
            false,
            excludeNested,
            includeDefinition,
          );
        }
      }

      // Return the expanded ValueSet
      return ValueSetExpansionOutcome(expansion);
    } catch (e) {
      _allErrors.add('Error expanding ValueSet: $e');
      return ValueSetExpansionOutcome.withError(
        null,
        'Error expanding ValueSet: $e',
        TerminologyServiceErrorClass.unknown,
      );
    }
  }

  /// Process an include or exclude component
  Future<ValueSetExpansion> processIncludeExclude(
    ValueSetInclude component,
    ValueSetExpansion expansion,
    bool include,
    bool excludeNested,
    bool includeDefinition,
  ) async {
    if (component.system == null) {
      _allErrors.add(
        'ValueSet compose ${include ? 'include' : 'exclude'} has no system',
      );
      return expansion;
    }

    final system = component.system!.valueString!;
    var newExpansion = expansion;

    // Handle concept lists (direct list of included codes)
    if (component.concept != null && component.concept!.isNotEmpty) {
      for (final concept in component.concept!) {
        if (include) {
          newExpansion = addCodeToExpansion(
            system,
            concept,
            newExpansion,
            includeDefinition,
          );
        } else {
          newExpansion = removeCodeFromExpansion(
            system,
            concept.code.valueString!,
            newExpansion,
          );
        }
      }
    }

    // Handle filters (rules for including codes)
    if (component.filter != null && component.filter!.isNotEmpty) {
      newExpansion = await processFilters(
        component,
        system,
        expansion,
        include,
        excludeNested,
        includeDefinition,
      );
    }

    // Handle valueSet references
    // (includes all codes from the referenced ValueSet)
    if (component.valueSet != null && component.valueSet!.isNotEmpty) {
      for (final vsRef in component.valueSet!) {
        newExpansion = await processValueSetReference(
          vsRef.valueString!,
          expansion,
          include,
          excludeNested,
          includeDefinition,
        );
      }
    }
    return newExpansion;
  }

  /// Process filters in a component
  Future<ValueSetExpansion> processFilters(
    ValueSetInclude component,
    String system,
    ValueSetExpansion expansion,
    bool include,
    bool excludeNested,
    bool includeDefinition,
  ) async {
    // Get the CodeSystem
    final cs = await context.fetchCodeSystem(system);
    if (cs == null) {
      _allErrors.add('Code system $system not found');
      return expansion;
    }

    // We can only process filters for code systems
    // that we have complete content for
    if (cs.content != CodeSystemContentMode.complete) {
      _allErrors.add('Cannot process filters for code system '
          '$system with content mode ${cs.content}');
      return expansion;
    }

    var newExpansion = expansion;

    // Process each filter
    for (final filter in component.filter!) {
      final property = filter.property.valueString!;
      final op = filter.op;
      final value = filter.value.valueString!;

      // Find all concepts that match the filter
      final matchingConcepts =
          findConceptsMatchingFilter(cs.concept!, property, op, value);

      for (final concept in matchingConcepts) {
        if (include) {
          newExpansion = addCodeToExpansion(
            system,
            ValueSetConcept(
              code: concept.code,
              display: concept.display,
            ),
            newExpansion,
            includeDefinition,
          );

          // Add child concepts for hierarchical expansions if needed
          if (!excludeNested) {
            newExpansion = addChildConcepts(
              concept,
              system,
              newExpansion,
              includeDefinition,
            );
          }
        } else {
          newExpansion = removeCodeFromExpansion(
            system,
            concept.code.valueString!,
            newExpansion,
          );

          // Remove child concepts too
          if (!excludeNested) {
            newExpansion =
                await removeChildConcepts(concept, system, newExpansion);
          }
        }
      }
    }
    return newExpansion;
  }

  /// Find concepts matching a filter
  List<CodeSystemConcept> findConceptsMatchingFilter(
    List<CodeSystemConcept> concepts,
    String property,
    FilterOperator op,
    String value,
  ) {
    final matches = <CodeSystemConcept>[];

    for (final concept in concepts) {
      if (matchesFilter(concept, property, op, value)) {
        matches.add(concept);
      }

      // Check child concepts
      if (concept.concept != null && concept.concept!.isNotEmpty) {
        matches.addAll(
          findConceptsMatchingFilter(
            concept.concept!,
            property,
            op,
            value,
          ),
        );
      }
    }

    return matches;
  }

  /// Check if a concept matches a filter
  bool matchesFilter(
    CodeSystemConcept concept,
    String property,
    FilterOperator op,
    String value,
  ) {
    // Handle special property for code
    if (property == 'code') {
      final code = concept.code.valueString!;

      switch (op.toString()) {
        case '=':
          return code == value;
        case 'is-a':
          return code == value || isChildOf(concept, value);
        case 'descendent-of':
          return isChildOf(concept, value);
        case 'is-not-a':
          return code != value && !isChildOf(concept, value);
        case 'regex':
          return RegExp(value).hasMatch(code);
        case 'in':
          return value.split(',').contains(code);
        case 'not-in':
          return !value.split(',').contains(code);
        case 'generalizes':
          return false; // Not implemented for 'code'
        case 'exists':
          return true; // Code always exists
        default:
          return false;
      }
    }

    // Handle special property for display
    if (property == 'display') {
      final display = concept.display?.valueString ?? '';

      switch (op.toString()) {
        case '=':
          return display == value;
        case 'regex':
          return RegExp(value).hasMatch(display);
        case 'in':
          return value.split(',').contains(display);
        case 'not-in':
          return !value.split(',').contains(display);
        case 'exists':
          return concept.display != null;
        default:
          return false;
      }
    }

    // Check concept properties
    if (concept.property != null) {
      for (final prop in concept.property!) {
        if (prop.code.valueString! == property) {
          return matchesPropertyValue(prop.valueX, op, value);
        }
      }
    }

    // Property not found
    return op == FilterOperator.exists && value.toLowerCase() == 'false';
  }

  /// Check if a property value matches a filter
  bool matchesPropertyValue(
    DataType? propValue,
    FilterOperator op,
    String value,
  ) {
    if (propValue == null) {
      return op == FilterOperator.exists && value.toLowerCase() == 'false';
    }

    // Convert the property value to a string for comparison
    String strValue;
    if (propValue is FhirCode) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is Coding) {
      strValue = propValue.code?.valueString ?? '';
    } else if (propValue is CodeableConcept) {
      strValue = propValue.coding?.firstOrNull?.code?.valueString ?? '';
    } else if (propValue is FhirBoolean) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is FhirString) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is FhirUri) {
      strValue = propValue.valueString ?? '';
    } else if (propValue is FhirDateTime) {
      strValue = propValue.valueString ?? '';
    } else {
      strValue = propValue.toJson().toString();
    }

    switch (op.toString()) {
      case '=':
        return strValue == value;
      case 'regex':
        return RegExp(value).hasMatch(strValue);
      case 'in':
        return value.split(',').contains(strValue);
      case 'not-in':
        return !value.split(',').contains(strValue);
      case 'exists':
        return value.toLowerCase() == 'true';
      default:
        return false;
    }
  }

  /// Check if a concept is a child of another concept
  bool isChildOf(CodeSystemConcept concept, String parentCode) {
    if (concept.concept == null) {
      return false;
    }

    for (final child in concept.concept!) {
      if (child.code.valueString! == parentCode) {
        return true;
      }

      if (isChildOf(child, parentCode)) {
        return true;
      }
    }

    return false;
  }

  /// Process a ValueSet reference in include/exclude
  Future<ValueSetExpansion> processValueSetReference(
    String vsRef,
    ValueSetExpansion expansion,
    bool include,
    bool excludeNested,
    bool includeDefinition,
  ) async {
    // Fetch the referenced ValueSet
    final vs = await context.fetchResource<ValueSet>(uri: vsRef);
    if (vs == null) {
      _allErrors.add('Referenced ValueSet $vsRef not found');
      return expansion;
    }

    var newExpansion = expansion;

    // If the ValueSet is already expanded, use its expansion
    if (vs.expansion != null && vs.expansion!.contains != null) {
      for (final item in vs.expansion!.contains!) {
        if (include) {
          newExpansion = newExpansion.copyWith(
            contains: [
              ...newExpansion.contains ?? <ValueSetContains>[],
              item,
            ],
          );
        } else {
          newExpansion = removeCodeFromExpansion(
            item.system!.valueString!,
            item.code!.valueString!,
            newExpansion,
          );
        }
      }
      return newExpansion;
    }

    // If not expanded, we need to expand it first
    // This would typically call the expand method,
    // but to avoid circular references
    // we'll handle it directly for the referenced ValueSet
    if (vs.compose != null) {
      for (final inc in vs.compose!.include) {
        newExpansion = await processIncludeExclude(
          inc,
          newExpansion,
          include,
          excludeNested,
          includeDefinition,
        );
      }

      if (vs.compose!.exclude != null) {
        for (final exc in vs.compose!.exclude!) {
          newExpansion = await processIncludeExclude(
            exc,
            newExpansion,
            !include,
            excludeNested,
            includeDefinition,
          );
        }
      }
    }
    return newExpansion;
  }

  /// Add a code to the expansion
  ValueSetExpansion addCodeToExpansion(
    String system,
    ValueSetConcept concept,
    ValueSetExpansion expansion,
    bool includeDefinition,
  ) {
    // Check if the code is already in the expansion
    if (isCodeInExpansion(system, concept.code.valueString!, expansion)) {
      return expansion;
    }

    // Create the contains item
    var item = ValueSetContains(
      system: FhirUri(system),
      code: concept.code,
      display: concept.display,
    );

    // Add definition if requested
    if (includeDefinition && concept.designation != null) {
      item = item.copyWith(designation: concept.designation);
    }

    return expansion.copyWith(
      contains: [...(expansion.contains ?? <ValueSetContains>[]), item],
    );
  }

  /// Check if a code is already in the expansion
  bool isCodeInExpansion(
    String system,
    String code,
    ValueSetExpansion expansion,
  ) {
    if (expansion.contains == null) {
      return false;
    }

    return _findCodeInContainsList(expansion.contains!, system, code) != null;
  }

  /// Find a code in a contains list
  ValueSetContains? _findCodeInContainsList(
    List<ValueSetContains> items,
    String system,
    String code,
  ) {
    for (final item in items) {
      if (item.system?.toString() == system && item.code?.valueString == code) {
        return item;
      }

      if (item.contains != null) {
        final found = _findCodeInContainsList(item.contains!, system, code);
        if (found != null) {
          return found;
        }
      }
    }

    return null;
  }

  /// Remove a code from the expansion
  ValueSetExpansion removeCodeFromExpansion(
    String system,
    String code,
    ValueSetExpansion expansion,
  ) {
    if (expansion.contains == null) {
      return expansion;
    }

    return expansion.copyWith(
      contains: _removeCodeFromContainsList(
        expansion.contains!.toList(),
        system,
        code,
      ),
    );
  }

  /// Remove a code from a contains list
  List<ValueSetContains> _removeCodeFromContainsList(
    List<ValueSetContains> items,
    String system,
    String code,
  ) {
    // Find and remove direct matches
    items.removeWhere(
      (item) =>
          item.system?.toString() == system && item.code?.valueString == code,
    );

    final newItems = <ValueSetContains>[];

    // Check nested items
    for (final item in items) {
      if (item.contains != null) {
        newItems.add(
          item.copyWith(
            contains: _removeCodeFromContainsList(item.contains!, system, code),
          ),
        );
      } else {
        newItems.add(item);
      }
    }
    return newItems;
  }

  /// Add child concepts to the expansion
  ValueSetExpansion addChildConcepts(
    CodeSystemConcept parent,
    String system,
    ValueSetExpansion expansion,
    bool includeDefinition,
  ) {
    if (parent.concept == null) {
      return expansion;
    }
    var newExpansion = expansion;

    for (final child in parent.concept!) {
      newExpansion = addCodeToExpansion(
        system,
        ValueSetConcept(
          code: child.code,
          display: child.display,
        ),
        newExpansion,
        includeDefinition,
      );

      // Recursively add the child's children
      newExpansion =
          addChildConcepts(child, system, newExpansion, includeDefinition);
    }
    return newExpansion;
  }

  /// Remove child concepts from the expansion
  Future<ValueSetExpansion> removeChildConcepts(
    CodeSystemConcept parent,
    String system,
    ValueSetExpansion expansion,
  ) async {
    if (parent.concept == null) {
      return expansion;
    }

    var newExpansion = expansion;

    for (final child in parent.concept!) {
      newExpansion = removeCodeFromExpansion(
        system,
        child.code.valueString!,
        newExpansion,
      );

      // Recursively remove the child's children
      newExpansion = await removeChildConcepts(child, system, newExpansion);
    }
    return newExpansion;
  }

  /// Check if code system needs to be handled on the server side
  Future<bool> isServerSide(String? system) async {
    if (system == null) {
      return false;
    }

    final cs = await context.fetchCodeSystem(system);
    if (cs == null) {
      // If we don't have the code system locally,
      // it needs server-side processing
      return true;
    }

    // If we have the code system but it's not a complete one, needs server-side
    return cs.content != CodeSystemContentMode.complete;
  }

  /// Get a boolean parameter from Parameters
  bool getParameterBool(
    Parameters? parameters,
    String name,
    bool defaultValue,
  ) {
    if (parameters == null) {
      return defaultValue;
    }

    for (final param in parameters.parameter ?? <ParametersParameter>[]) {
      if (param.name.valueString == name && param.valueX is FhirBoolean) {
        return (param.valueX! as FhirBoolean).valueBoolean ?? defaultValue;
      }
    }

    return defaultValue;
  }
}

/// A simple value set checker that only checks for membership
