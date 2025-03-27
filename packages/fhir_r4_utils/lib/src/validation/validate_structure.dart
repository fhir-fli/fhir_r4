import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Validates the structure of a FHIR resource against a given
/// StructureDefinition.
///
/// Starts from the root node and traverses its structure recursively,
/// ensuring it matches the constraints defined in the provided [elements].
Future<ValidationResults> validateStructure({
  required ObjectNode node,
  required Map<String, ElementDefinition> elements,
  required String type,
  String? url,
  required ResourceCache resourceCache,
}) async {
  return _objectNode(
    url,
    node,
    type,
    type,
    elements,
    ValidationResults(),
    resourceCache,
  );
}

/// Recursively traverses the Abstract Syntax Tree (AST) of a FHIR resource.
///
/// Determines the type of [Node] (ObjectNode, ArrayNode, or PropertyNode) and
/// routes validation to the appropriate handler function.
///
/// Throws an exception for unsupported or invalid node types.
Future<ValidationResults> _traverseAst(
  String? url,
  Node node,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  if (node is ObjectNode) {
    return _objectNode(
      url,
      node,
      originalPath,
      replacePath,
      elements,
      results,
      resourceCache,
    );
  } else if (node is ArrayNode) {
    return _arrayNode(
      url,
      node,
      originalPath,
      replacePath,
      elements,
      results,
      resourceCache,
    );
  } else if (node is PropertyNode) {
    return _propertyNode(
      url,
      node,
      originalPath,
      replacePath,
      elements,
      results,
      resourceCache,
    );
  } else {
    throw Exception('Invalid node type: ${node.runtimeType} at ${node.path}');
  }
}

/// Validates the structure of an ObjectNode.
///
/// Iterates through all child properties and validates each one using
/// `_propertyNode`. Additionally, validates invariants defined for the
/// current [ElementDefinition].
Future<ValidationResults> _objectNode(
  String? url,
  ObjectNode node,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  var newResults = results.copyWith();

  // Process each child property of the ObjectNode.
  for (final property in node.children) {
    newResults = await _propertyNode(
      url,
      property,
      originalPath,
      replacePath,
      elements,
      newResults,
      resourceCache,
    );
  }

  // Validate invariants for the current node, if applicable.
  final element =
      _findElementDefinitionFromNode(originalPath, replacePath, node, elements);
  if (element != null) {
    newResults = validateInvariants(
      url: url,
      node: node,
      element: element,
      results: newResults,
      resourceCache: resourceCache,
    );
  }

  return newResults;
}

/// Validates the structure of an ArrayNode.
///
/// Iterates through all child nodes in the array, validating each one
/// either as a LiteralNode or by recursively traversing its structure.
Future<ValidationResults> _arrayNode(
  String? url,
  ArrayNode node,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  var newResults = results.copyWith();

  for (final child in node.children) {
    if (child is LiteralNode) {
      // Handle literal values within the array.
      final element = _findElementDefinitionFromNode(
        originalPath,
        replacePath,
        child,
        elements,
      );
      if (element != null) {
        newResults =
            await _literalNode(url, child, element, newResults, resourceCache);
      } else {
        // Report an error if no matching element definition is found.
        newResults.addResult(
          child,
          withUrlIfExists(
            'Element not found in StructureDefinition - ${child.raw}',
            url,
          ),
          Severity.error,
        );
      }
    } else {
      // Recursively traverse the AST for non-literal child nodes.
      newResults = await _traverseAst(
        url,
        child,
        originalPath,
        replacePath,
        elements,
        newResults,
        resourceCache,
      );
    }
  }

  return newResults;
}

/// Validates a PropertyNode by checking its corresponding element definition.
///
/// If the node represents a known resource type, it skips further validation.
/// Otherwise, it validates the node using the appropriate element definition.
Future<ValidationResults> _propertyNode(
  String? url,
  PropertyNode node,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  var newResults = results.copyWith();

  // Attempt to find the matching element definition for this node.
  final element =
      _findElementDefinitionFromNode(originalPath, replacePath, node, elements);

  // Skip validation if the node represents a resource type.
  if (_isAResourceType(node, element)) {
    return newResults;
  }

  // Validate the node if a matching element is found.
  if (element != null) {
    newResults = await _withElement(
      url,
      node,
      element,
      originalPath,
      replacePath,
      elements,
      newResults,
      resourceCache,
    );

    // Validate invariants defined for the element.
    newResults = validateInvariants(
      url: url,
      node: node,
      element: element,
      results: newResults,
      resourceCache: resourceCache,
    );
  } else {
    // Add an error if no matching element is found.
    newResults.addResult(
      node,
      withUrlIfExists('Element not found in StructureDefinition', url),
      Severity.error,
    );
  }

  return newResults;
}

/// Handles a PropertyNode that has a corresponding element definition.
///
/// If the element definition includes a `code`, the function delegates
/// validation based on whether the code represents a primitive or complex type.
Future<ValidationResults> _withElement(
  String? url,
  PropertyNode node,
  ElementDefinition element,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  final code = findCode(element, node.path);

  // If the element has a defined type code, validate accordingly.
  if (code != null) {
    return _withCode(
      url,
      code,
      node,
      element,
      originalPath,
      replacePath,
      elements,
      results,
      resourceCache,
    );
  } else {
    // Handle cases where the element has no specific type code.
    return _withoutCode(
      url,
      node,
      element,
      originalPath,
      replacePath,
      results,
      resourceCache,
    );
  }
}

/// Handles elements without a defined type code by checking for extensions.
///
/// If the element has extensions, it fetches the associated StructureDefinition
/// and validates the node recursively using the new element definitions.
Future<ValidationResults> _withoutCode(
  String? url,
  PropertyNode node,
  ElementDefinition element,
  String originalPath,
  String replacePath,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  for (final ext in element.extension_ ?? <FhirExtension>[]) {
    final url = ext.url.toString();
    final structureDefinition = await resourceCache.getStructureDefinition(url);

    // If the extension references a StructureDefinition, extract elements
    //and validate.
    if (structureDefinition != null) {
      final newElements = extractElements(structureDefinition);

      return _traverseAst(
        structureDefinition.url?.toString(),
        node,
        originalPath,
        replacePath,
        newElements,
        results,
        resourceCache,
      );
    }
  }

  // Add an error if no valid structure is found for the element.
  return results
    ..addResult(
      node,
      withUrlIfExists('Element not found in StructureDefinition', url),
      Severity.error,
    );
}

/// Handles elements with a defined type code.
///
/// If the code represents a primitive type, validates its value directly.
/// Otherwise, delegates validation to `_codeIsComplexType` for complex types.
Future<ValidationResults> _withCode(
  String? url,
  String code,
  PropertyNode node,
  ElementDefinition element,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  if (isPrimitiveType(code)) {
    return _codeIsPrimitiveType(
      url,
      node,
      element,
      originalPath,
      replacePath,
      elements,
      results,
      resourceCache,
    );
  } else {
    return _codeIsComplexType(
      url,
      code,
      node,
      element,
      originalPath,
      replacePath,
      elements,
      results,
      resourceCache,
    );
  }
}

/// Handles validation for complex types by fetching their StructureDefinition.
///
/// If the StructureDefinition is found, it extracts new element definitions
/// and validates the node recursively.
Future<ValidationResults> _codeIsComplexType(
  String? url,
  String code,
  PropertyNode node,
  ElementDefinition element,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  final structureDefinition = await resourceCache.getStructureDefinition(code);

  // Handle cases where the StructureDefinition is missing.
  if (structureDefinition == null) {
    return _noStructureDefinitionOrProfile(url, code, node, results);
  }

  // Extract elements from the StructureDefinition and validate recursively.
  final newElements = extractElements(structureDefinition);
  if (newElements.isNotEmpty) {
    if (node.value != null) {
      return _traverseAst(
        url,
        node.value!,
        node.path,
        code,
        newElements,
        results,
        resourceCache,
      );
    } else {
      throw Exception('node is ${node.runtimeType} with null node.value');
    }
  } else {
    return _noStructureDefinitionOrProfile(url, code, node, results);
  }
}

/// Adds an error for missing StructureDefinition or Profile for a complex type.
ValidationResults _noStructureDefinitionOrProfile(
  String? url,
  String code,
  PropertyNode node,
  ValidationResults results,
) =>
    results
      ..addResult(
        node,
        withUrlIfExists(
          'No StructureDefinition or Profile found for Element type $code',
          url,
        ),
        Severity.error,
      );

/// Validates the value of a primitive type node.
///
/// Checks whether the value conforms to the constraints of the corresponding
/// primitive type and ensures that it matches required patterns or ranges.
Future<ValidationResults> _codeIsPrimitiveType(
  String? url,
  PropertyNode node,
  ElementDefinition element,
  String originalPath,
  String replacePath,
  Map<String, ElementDefinition> elements,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  var newResults = results.copyWith();

  // If the node contains a literal value, validate it directly.
  if (node.value is LiteralNode) {
    newResults = await _literalNode(
      url,
      node.value! as LiteralNode,
      element,
      newResults,
      resourceCache,
    );
  } else if (node.value is ArrayNode) {
    // Handle cases where the node contains an array of values.
    newResults = await _arrayNode(
      url,
      node.value! as ArrayNode,
      originalPath,
      replacePath,
      elements,
      newResults,
      resourceCache,
    );
  } else {
    throw Exception(
      'Primitive element is not a Primitive or a List: '
      '${node.value.runtimeType}',
    );
  }

  return newResults;
}

/// Validates the value of a LiteralNode against its ElementDefinition.
///
/// Checks if the value matches the constraints defined for the corresponding
/// primitive type, such as valid enumerations, patterns, ranges, or date
/// formats.
Future<ValidationResults> _literalNode(
  String? url,
  LiteralNode node,
  ElementDefinition element,
  ValidationResults results,
  ResourceCache resourceCache,
) async {
  final primitiveClass = findCode(element, node.path);
  final dynamic value = node.value;

  // Validate the value against the primitive type.
  if (!isValueAValidPrimitive(primitiveClass.toString(), value)) {
    results.addResult(
      node,
      'Invalid value for primitive type: $primitiveClass',
      Severity.error,
    );
  }

  // Perform additional domain-specific checks.
  var newResults =
      await _checkEnumerations(element, value, results, node, resourceCache);
  newResults = _checkStringPatterns(url, element, value, newResults, node);
  newResults = _checkRangeConstraints(
    url,
    primitiveClass,
    element,
    value,
    newResults,
    node,
  );
  newResults = _checkDateTimeFormats(primitiveClass, value, newResults, node);

  return newResults;
}

/// Validates that a value matches the enumerations defined in the element's
/// binding.
///
/// Ensures the value is part of a required ValueSet if applicable.
Future<ValidationResults> _checkEnumerations(
  ElementDefinition element,
  dynamic value,
  ValidationResults results,
  Node node,
  ResourceCache resourceCache,
) async {
  if (element.binding != null &&
      element.binding!.strength == BindingStrength.required_ &&
      element.binding?.valueSet != null) {
    // Fetch the allowed codes from the specified ValueSet.
    final allowedCodes = await getValueSetCodes(
        element.binding!.valueSet.toString(), resourceCache);
    if (!allowedCodes.contains(value)) {
      results.addResult(
        node,
        withUrlIfExists(
          'Value "$value" is not a valid code in the required value set.',
          element.binding!.valueSet.toString(),
        ),
        Severity.error,
      );
    }
  }
  return results;
}

/// Validates that a string value matches the specified regular expression
/// pattern.
///
/// Checks if the value adheres to the pattern defined in the element's
/// `pattern[x]`.
ValidationResults _checkStringPatterns(
  String? url,
  ElementDefinition element,
  dynamic value,
  ValidationResults results,
  Node node,
) {
  if (element.patternX != null &&
      element.patternX is FhirString &&
      value is String) {
    final regex = RegExp((element.patternX! as FhirString).value!);
    if (!regex.hasMatch(value)) {
      results.addResult(
        node,
        withUrlIfExists(
          'Value "$value" does not match the required pattern: '
          '${element.patternX}',
          url,
        ),
        Severity.error,
      );
    }
  }
  return results;
}

/// Validates that a numeric or comparable value falls within a specified range.
///
/// Checks if the value satisfies the `minValue[x]` and `maxValue[x]`
/// constraints.
ValidationResults _checkRangeConstraints(
  String? url,
  String? primitiveClass,
  ElementDefinition element,
  dynamic value,
  ValidationResults results,
  Node node,
) {
  if (primitiveClass == null || !isComparablePrimitive(primitiveClass)) {
    return results;
  }

  // Check the minimum value constraint.
  final dynamic minValue = _minimumValueConstraint(element);
  if (minValue != null && _compareValues(value, minValue) < 0) {
    results.addResult(
      node,
      withUrlIfExists(
        'Value "$value" is less than the minimum allowed value: $minValue',
        url,
      ),
      Severity.error,
    );
  }

  // Check the maximum value constraint.
  final dynamic maxValue = _maximumValueConstraint(element);
  if (maxValue != null && _compareValues(value, maxValue) > 0) {
    results.addResult(
      node,
      withUrlIfExists(
        'Value "$value" is greater than the maximum allowed value: $maxValue',
        url,
      ),
      Severity.error,
    );
  }

  return results;
}

/// Retrieves the minimum value constraint from an ElementDefinition.
dynamic _minimumValueConstraint(ElementDefinition element) {
  return element.minValueX;
}

/// Retrieves the maximum value constraint from an ElementDefinition.
dynamic _maximumValueConstraint(ElementDefinition element) {
  return element.maxValueX;
}

/// Compares two values and determines their ordering.
///
/// Returns:
/// - A negative number if `value1` is less than `value2`.
/// - Zero if `value1` equals `value2`.
/// - A positive number if `value1` is greater than `value2`.
int _compareValues(dynamic value1, dynamic value2) {
  if (value1 is Comparable && value2 is Comparable) {
    return value1.compareTo(value2);
  }
  throw Exception('Unsupported value types for comparison');
}

/// Validates that a date or time value matches the expected format.
///
/// Ensures the value is correctly formatted for `date`, `dateTime`, or
/// `instant`.
ValidationResults _checkDateTimeFormats(
  String? primitiveClass,
  dynamic value,
  ValidationResults results,
  Node node,
) {
  if (primitiveClass != null &&
      (primitiveClass == 'date' ||
          primitiveClass == 'dateTime' ||
          primitiveClass == 'instant')) {
    try {
      if (value is! String) {
        results.addResult(
          node,
          'Value "$value" is not a valid $primitiveClass format.',
          Severity.error,
        );
      } else {
        DateTime.parse(value);
      }
    } catch (e) {
      results.addResult(
        node,
        'Value "$value" is not a valid $primitiveClass format.',
        Severity.error,
      );
    }
  }
  return results;
}

/// Determines if a node represents a resource type.
///
/// Checks if the node is a PropertyNode with a `resourceType` key matching
/// known types.
bool _isAResourceType(PropertyNode node, ElementDefinition? element) =>
    element == null &&
    node.value is LiteralNode &&
    node.key?.value == 'resourceType' &&
    R4ResourceType.typesAsStrings.contains((node.value! as LiteralNode).value);

/// Finds a polymorphic element definition that matches a given path.
///
/// Polymorphic elements end with `[x]` and can match multiple data types.
ElementDefinition? _polymorphicElement(
  String path,
  Map<String, ElementDefinition> elements,
) {
  return elements.values.firstWhereOrNull(
    (ElementDefinition element) =>
        (element.path.value?.endsWith('[x]') ?? false) &&
        path.startsWith(element.path.value!.replaceFirst('[x]', '')),
  );
}

/// Finds the element definition corresponding to a node.
///
/// Cleans the node path and matches it with known element definitions,
/// including polymorphic elements if necessary.
ElementDefinition? _findElementDefinitionFromNode(
  String originalPath,
  String replacePath,
  Node node,
  Map<String, ElementDefinition> elements,
) {
  final cleanPath = cleanLocalPath(originalPath, replacePath, node.path);
  return elements[cleanPath] ?? _polymorphicElement(cleanPath, elements);
}
