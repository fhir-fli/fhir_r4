// ignore_for_file: public_member_api_docs

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

void _log(String message, [bool shouldPrint = false, String level = 'INFO']) {
  if (shouldPrint) {
    print('[$level] $message');
  }
}

Future<FhirBase?> fhirMappingEngine(
  FhirBase source,
  StructureMap map,
  FhirDb cache, [
  FhirBase? Function(Map<String, dynamic>)? leftFromMap,
  FhirBase? Function(Map<String, dynamic>)? rightFromMap,
]) async {
  final mapEngine = FhirMapEngine(cache, map);
  final transform =
      await mapEngine.transform(source, null, leftFromMap, rightFromMap);
  return transform;
}

class FhirMapEngine {
  FhirMapEngine(this.cache, this.map)
      : resolver = DefinitionResolver(cache, map) {
    context = TransformationContext(resolver);
    transformer = Transformer(map, context, resolver);
  }
  final FhirDb cache;
  final StructureMap map;
  final DefinitionResolver resolver;
  late final TransformationContext context;
  late final Transformer transformer;
  final FHIRPathEngine fhirPathEngine = FHIRPathEngine(WorkerContext());
  FhirBase? Function(Map<String, dynamic>)? _leftFromMap;

  void transformFromFhir(
    Resource sourceResource,
    StructureMap map,
    Resource? targetResource,
  ) {
    transform(sourceResource, targetResource);
  }

  Future<FhirBase?> transform(
    FhirBase source,
    FhirBase? target, [
    FhirBase? Function(Map<String, dynamic>)? leftFromMap,
    FhirBase? Function(Map<String, dynamic>)? rightFromMap,
  ]) async {
    _leftFromMap = leftFromMap;
    try {
      final group = map.group.first;
      final sourceType = await _getInputType(group, 'source');
      final targetType = await _getInputType(group, 'target');

      final sourceNode = await _createMapNode(sourceType, source.toJson());
      final newTarget = target?.toJson() ?? await _generateEmptyTarget(map);
      final targetNode = await _createMapNode(targetType, newTarget);
      _log('Source: ${sourceNode.summary(2)}');
      _log('Target: ${targetNode.summary(2)}');

      final vars = _initializeVariables(group, sourceNode, targetNode);
      final outputVarName = _getOutputVarName(group, targetType);

      await _executeGroup('', context, map, vars, group, true);

      final finalMap =
          _retrieveTransformedTarget(vars, outputVarName, targetType);
      return fromType(finalMap, targetType) ??
          (rightFromMap != null ? rightFromMap(finalMap) : null);
    } catch (e, s) {
      _log('Error transforming source to target: $e');
      _log('Stack trace: $s');
      return createOperationOutcomeErrorNode(e.toString(), map, cache);
    }
  }

  Future<String> _getInputType(StructureMapGroup group, String mode) async {
    // Find the type based on the mode in the group's input
    final type = group.input
        .firstWhere((input) => input.mode.toString() == mode)
        .type
        ?.value;

    // Attempt resolution only if type is not null and hasn't already been
    // resolved
    final resolvedType = type != null && type.isNotEmpty
        ? (await resolver.resolveByType(type))?.type.toString() ?? type
        : type;

    if (resolvedType == null || resolvedType.isEmpty) {
      throw FHIRException(message: 'Input type not found for mode: $mode');
    }

    return resolvedType;
  }

  Future<ElementNode> _createMapNode(
    String type,
    Map<String, dynamic> data,
  ) async {
    return MapNode.fromMapAsync(type, null, null, data, resolver);
  }

  Variables _initializeVariables(
    StructureMapGroup group,
    ElementNode sourceNode,
    ElementNode targetNode,
  ) {
    final vars = Variables();

    for (final input in group.input) {
      final varName = input.name.toString();
      final mode = input.mode.toString() == 'source'
          ? VariableMode.INPUT
          : VariableMode.OUTPUT;
      final node = mode == VariableMode.INPUT ? sourceNode : targetNode;

      vars.add(mode, varName, node);
    }

    return vars;
  }

  String? _getOutputVarName(StructureMapGroup group, String targetType) {
    return group.input
            .firstWhereOrNull((input) => input.mode.toString() == 'target')
            ?.name
            .toString() ??
        targetType;
  }

  Map<String, dynamic> _retrieveTransformedTarget(
    Variables vars,
    String? outputVarName,
    String targetType,
  ) {
    final transformedTargetNode =
        vars.getOutputVar(outputVarName ?? targetType);

    final map = (transformedTargetNode! as MapNode).toMap();

    _log('Final vars: ${vars.summary()}');
    _log('map: $map');

    if (map is! Map<String, dynamic>) {
      throw FHIRException(
        message: 'Transformed target is not a Map<String, dynamic>',
      );
    }
    return map;
  }

  OperationOutcome createOperationOutcomeErrorNode(
    String error,
    StructureMap map,
    FhirDb cache,
  ) =>
      OperationOutcome(
        issue: [
          OperationOutcomeIssue(
            severity: IssueSeverity.error,
            code: IssueType.processing,
            diagnostics: error.toFhirString,
          ),
        ],
      );

  Future<Map<String, dynamic>> _generateEmptyTarget(StructureMap map) async {
    final targetStructure =
        map.structure?.firstWhereOrNull((s) => s.mode.toString() == 'target');

    if (targetStructure == null) return {'resourceType': 'Unknown'};

    final targetUrl = targetStructure.url.toString();
    final targetDefinition = await resolver.resolve(targetUrl);
    final resourceType = targetDefinition?.type.toString() ??
        _getResourceTypeFromAlias(targetStructure.alias);

    return {'resourceType': resourceType ?? 'Unknown'};
  }

  // Helper function to resolve `resourceType` from `alias`
  String? _getResourceTypeFromAlias(FhirString? alias) {
    if (alias == null) return null;

    if (alias.isFhirResourceType) return alias.value;
    if (alias.value?.isNotEmpty ?? false) {
      final formattedAlias =
          alias.value![0].toUpperCase() + alias.value!.substring(1);
      return formattedAlias.isFhirResourceType ? formattedAlias : alias.value;
    }
    return null;
  }

  Future<void> _executeGroup(
    String indent,
    TransformationContext context,
    StructureMap? map,
    Variables vars,
    StructureMapGroup? group,
    bool atRoot,
  ) async {
    // Resolve and execute extended group first if it exists
    final resolvedGroup = group?.extends_?.toString().isNotEmpty ?? false
        ? _resolveGroupReference(map, group, group!.extends_!.toString())
        : null;
    if (resolvedGroup != null) {
      await _executeGroup(
        '$indent ',
        context,
        resolvedGroup.targetMap,
        vars,
        resolvedGroup.target,
        false,
      );
    }

    // Execute rules within the group
    for (final rule in group?.rule ?? <StructureMapRule>[]) {
      await _executeRule('$indent  ', context, map, vars, group, rule, atRoot);
    }
  }

  Future<void> _executeRule(
    String indent,
    TransformationContext context,
    StructureMap? map,
    Variables vars,
    StructureMapGroup? group,
    StructureMapRule rule,
    bool atRoot,
  ) async {
    // Ensure single source and create copy of variables
    if (rule.source.length != 1) {
      throw Exception('Rule "${rule.name}" has multiple sources.');
    }
    final srcVars = vars.copy();

    // Process rule sources and targets
    final sourceVarsList = await _processSource(
      rule.name.toString(),
      context,
      srcVars,
      rule.source.first,
      map?.url.toString(),
      indent,
    );
    for (final sourceVars in sourceVarsList) {
      for (final target in rule.target ?? <StructureMapTarget>[]) {
        await _processTarget(
          rule.name.toString(),
          context,
          sourceVars,
          map,
          group,
          target,
          rule.source.first.variable?.toString(),
          atRoot,
          vars,
        );
      }

      // Process nested rules or dependencies if available
      await _processNestedRulesOrDependencies(
        rule,
        indent,
        context,
        map,
        sourceVars,
        group,
      );
    }
  }

  // Helper to handle nested rules or dependencies in a rule
  Future<void> _processNestedRulesOrDependencies(
    StructureMapRule rule,
    String indent,
    TransformationContext context,
    StructureMap? map,
    Variables vars,
    StructureMapGroup? group,
  ) async {
    if (rule.rule?.isNotEmpty ?? false) {
      for (final childRule in rule.rule!) {
        await _executeRule(
          '$indent  ',
          context,
          map,
          vars,
          group,
          childRule,
          false,
        );
      }
    } else if (rule.dependent?.isNotEmpty ?? false) {
      for (final dependent in rule.dependent!) {
        await _executeDependency(
          '$indent  ',
          context,
          map,
          vars,
          group,
          dependent,
          rule.name.toString(),
        );
      }
    }
  }

  Future<void> _executeDependency(
    String indent,
    TransformationContext context,
    StructureMap? map,
    Variables vin,
    StructureMapGroup? group,
    StructureMapDependent dependent,
    String? ruleName,
  ) async {
    final rg = _resolveGroupReference(map, group, dependent.name.toString());

    // Ensure both target and targetMap are not null before continuing
    if (rg.target == null || rg.targetMap == null) {
      _log(
        "Resolved group for '${dependent.name}' has null target or targetMap.",
      );
      return;
    }

    // Check that the number of input variables matches
    if (rg.target!.input.length != dependent.variable.length) {
      throw FHIRException(
        message: "Rule '${dependent.name}' expects ${rg.target!.input.length} "
            'variables, but got ${dependent.variable.length}',
      );
    }

    // Create new variables for the dependent group
    final v = Variables();
    for (var i = 0; i < rg.target!.input.length; i++) {
      final input = rg.target!.input[i];
      final varVal = dependent.variable[i].value;

      // Determine if the mode is input or output
      final mode = input.mode.toString() == 'source'
          ? VariableMode.INPUT
          : VariableMode.OUTPUT;

      // Try to retrieve the variable
      var vv = varVal == null ? null : vin.get(mode, varVal);
      if (vv == null && mode == VariableMode.INPUT) {
        // If it's an input variable and not found, also check output variables
        vv = vin.getOutputVar(varVal);
      }

      // If the variable is still null, throw an exception
      if (vv == null) {
        throw FHIRException(
          message: "Rule '${dependent.name}' $mode variable '${input.name}' "
              "named '$varVal' has no value (vars = ${vin.summary()})",
        );
      }

      v.add(mode, input.name.toString(), vv);
    }

    // Execute the resolved group
    await _executeGroup(
      '$indent  ',
      context,
      rg.targetMap,
      v,
      rg.target,
      false,
    );
  }

  Future<List<Variables>> _processSource(
    String ruleId,
    TransformationContext context,
    Variables vars,
    StructureMapSource source,
    String? pathForErrors,
    String indent,
  ) async {
    _log('_processSourceStart: ${vars.targetSummary()}');
    var items = <ElementNode>[];

    // Process @search context
    items = _processSearchContext(
          ruleId,
          source,
          vars,
          context,
          indent,
          pathForErrors,
        ) ??
        items;

    // Fetch children if not a search context
    if (source.context.toString() != '@search') {
      final sourceValue = vars.getInputVar(source.context.toString());
      if (sourceValue == null) {
        throw Exception(
          'Unknown input variable ${source.context} in rule $ruleId '
          '(vars = ${vars.summary()})',
        );
      }
      items = await _getItemsFromSourceValue(source, sourceValue);
    }

    // Apply condition and checks, if present
    items = await _applyCondition(source, ruleId, vars, items, resolver);
    await _applyCheck(source, ruleId, vars, items, resolver);

    // Handle list modes
    items = _handleListMode(items, source.listMode?.toString());

    return _finalizeSourceItems(items, vars, source.variable?.value);
  }

  // Helper function to handle @search context
  List<ElementNode>? _processSearchContext(
    String ruleId,
    StructureMapSource source,
    Variables vars,
    TransformationContext context,
    String indent,
    String? pathForErrors,
  ) {
    if (source.context.toString() != '@search') return null;

    var expr = source.getUserData('MAP_SEARCH_EXPRESSION') as ExpressionNode?;
    expr ??= parseFhirPath(source.element?.value ?? '');
    source.setUserData('MAP_SEARCH_EXPRESSION', expr);
    final node = fhirPathEngine.parse(source.element?.value ?? '');

    final search = fhirPathEngine.evaluateToString(
      vars,
      null,
      null,
      ''.toFhirString,
      node,
    );
    return context.performSearch(search);
  }

  // Helper function to retrieve items from sourceValue
  Future<List<ElementNode>> _getItemsFromSourceValue(
    StructureMapSource source,
    ElementNode? sourceValue,
  ) async {
    if (sourceValue == null) {
      throw Exception(
        'Failed to locate input variable ${source.context} '
        'for rule processing in `_getItemsFromSourceValue`.',
      );
    }

    final items = <ElementNode>[];
    if (source.element?.value == null || source.element!.value!.isEmpty) {
      items.add(sourceValue);
    } else {
      await _getChildrenByName(
        sourceValue,
        source.element!.value,
        items,
        map,
        resolver,
      );
      if (items.isEmpty && source.defaultValueX != null) {
        items.add(await source.defaultValueX!.toTypedElement(resolver));
      }
    }
    return items;
  }

  // Helper function to evaluate condition
  Future<List<ElementNode>> _applyCondition(
    StructureMapSource source,
    String ruleId,
    Variables vars,
    List<ElementNode> items,
    DefinitionResolver resolver,
  ) async {
    if (source.condition != null && source.condition!.isNotEmpty) {
      final conditionExpr =
          source.getUserData('MAP_WHERE_EXPRESSION') as ExpressionNode? ??
              parseFhirPath(source.condition!.value!);
      source.setUserData('MAP_WHERE_EXPRESSION', conditionExpr);
      final node = fhirPathEngine.parse(source.condition?.value ?? '');
      final filteredItems = <ElementNode>[];

      final src = vars.getInputVar(source.context.toString());
      final srcMap = src?.toMap();
      final srcType = await src?.getInstanceType(resolver);

      FhirBase? srcBase;
      if (srcMap is Map<String, dynamic>) {
        if (srcType != null) {
          srcBase = fromType(srcMap, srcType);
        }
        srcBase ??= _leftFromMap?.call(srcMap);
      }

      for (final item in items) {
        final base =
            (await item.preprocessElementNodeAsync(resolver)) as FhirBase;
        final conditionResult = fhirPathEngine.evaluateToBoolean(
          '',
          null,
          null,
          srcBase ?? base,
          node,
        );
        if (conditionResult) {
          filteredItems.add(item);
        } else {
          _log('Skipping rule $ruleId due to condition ${source.condition}');
        }
      }
      return filteredItems;
    }
    return items;
  }

  // Helper function to evaluate checks
  Future<void> _applyCheck(
    StructureMapSource source,
    String ruleId,
    Variables vars,
    List<ElementNode> items,
    DefinitionResolver resolver,
  ) async {
    if (source.check != null && source.check!.isNotEmpty) {
      final checkExpr =
          source.getUserData('MAP_WHERE_CHECK') as ExpressionNode? ??
              parseFhirPath(source.check!.value!);
      source.setUserData('MAP_WHERE_CHECK', checkExpr);
      final node = fhirPathEngine.parse(source.check?.value ?? '');

      final src = vars.getInputVar(source.context.toString());
      final srcMap = src?.toMap();
      final srcType = await src?.getInstanceType(resolver);

      FhirBase? srcBase;
      if (srcMap is Map<String, dynamic>) {
        if (srcType != null) {
          srcBase = fromType(srcMap, srcType);
        }
        srcBase ??= _leftFromMap?.call(srcMap);
      }

      for (final item in items) {
        final base =
            (await item.preprocessElementNodeAsync(resolver)) as FhirBase;
        final checkResult = fhirPathEngine.evaluateToBoolean(
          vars,
          null,
          null,
          srcBase ?? base,
          node,
        );
        if (!checkResult) {
          throw FHIRException(
            message: "Rule '$ruleId', Check condition failed, ${source.check}",
          );
        }
      }
    }
  }

  // Helper function to handle list modes
  List<ElementNode> _handleListMode(
    List<ElementNode> items,
    String? listMode,
  ) {
    if (listMode == null || items.isEmpty) return items;

    switch (listMode) {
      case 'first':
        return [items.first];
      case 'last':
        return [items.last];
      case 'not_first':
        items.removeAt(0);
        return items;
      case 'not_last':
        items.removeAt(items.length - 1);
        return items;
      case 'only_one':
        if (items.length > 1) {
          throw FHIRException(
            message: "Collection has more than one item in 'only_one' mode",
          );
        }
        return items;
      default:
        return items;
    }
  }

  // Finalize and wrap items in Variables
  List<Variables> _finalizeSourceItems(
    List<ElementNode> items,
    Variables vars,
    String? variableName,
  ) {
    final result = <Variables>[];
    for (final item in items) {
      final newVars = vars.copy();
      if (variableName != null && variableName.isNotEmpty) {
        newVars.add(VariableMode.INPUT, variableName, item);
      }
      result.add(newVars);
    }
    _log('_processSourceFinal: ${vars.targetSummary()}');
    return result;
  }

  Future<void> _getChildrenByName(
    ElementNode parentNode,
    String? elementName,
    List<ElementNode> resultItems,
    StructureMap map,
    DefinitionResolver resolver,
  ) async {
    if (parentNode is LeafNode) {
      // Leaf nodes don't have children; no action needed
      return;
    }

    if (parentNode is CompositeNode) {
      for (final child in parentNode.value) {
        final childEd =
            await resolver.resolveElementDefinition(child.childObjectLocation);
        String? polyName;
        if (childEd?.isPolymorphic ?? false) {
          polyName = childEd!.path.value?.split('.').last.replaceAll('[x]', '');
        }
        if (child.name == elementName ||
            (polyName != null && polyName == elementName)) {
          if (child is ListNode) {
            // If the child is a ListNode, add all its children to resultItems
            resultItems.addAll(child.value);
          } else {
            resultItems.add(child);
          }
        }
      }
    }
  }

  Future<void> _processTarget(
    String ruleId,
    TransformationContext context,
    Variables vars,
    StructureMap? map,
    StructureMapGroup? group,
    StructureMapTarget target,
    String? srcVar,
    bool atRoot,
    Variables sharedVars,
  ) async {
    ElementNode? dest;

    // Get the output variable (target context)
    if (target.context != null && target.context!.toString().isNotEmpty) {
      dest = vars.getOutputVar(target.context!.toString());

      if (dest == null) {
        throw FHIRException(
          message:
              'Rule "$ruleId": target context not known: ${target.context}',
        );
      }
      if (target.element == null || target.element!.toString().isEmpty) {
        throw FHIRException(
          message: 'Rule "$ruleId": target element is not specified',
        );
      }
    }

    ElementNode? value;
    // Check if there's a transformation and run it to get the value for the
    // target
    if (target.transform != null) {
      value = await transformer.runTransform(
        ruleId,
        group,
        target,
        vars,
        dest,
        target.element?.value ?? '',
        srcVar,
        atRoot,
      );

      print('value after transform: $value');

      if (dest != null && value != null) {
        // Set property based on the resolved element
        value = await dest.setProperty(target.element!.value!, value, resolver);
        dest = dest.updatePaths(dest.location!, dest.objectLocation!);
      }
    } else if (dest != null) {
      // Handle ListMode.Share or create a new property if not shared
      if (target.listMode?.contains(FhirCode('share')) ?? false) {
        value =
            sharedVars.get(VariableMode.SHARED, target.listRuleId!.toString());

        if (value == null) {
          if (dest is CompositeNode) {
            value = await dest.makeProperty(target.element!.value!, resolver);
            sharedVars.add(
              VariableMode.SHARED,
              target.listRuleId!.toString(),
              value,
            );
          } else {
            throw FHIRException(
              message:
                  "Rule '$ruleId': ListMode.Share requires a CompositeNode "
                  'destination',
            );
          }
        }
      } else if (dest is CompositeNode) {
        value = await dest.makeProperty(target.element!.value!, resolver);
      } else {
        throw FHIRException(
          message: "Rule '$ruleId': Destination is not a CompositeNode",
        );
      }
    }

    if (target.variable != null && value != null) {
      vars.add(VariableMode.OUTPUT, target.variable!.toString(), value);
    }
  }

  ResolvedGroup _resolveGroupReference(
    StructureMap? map,
    StructureMapGroup? source,
    String name,
  ) {
    final kn = 'ref^$name';

    // Check for existing user data for the group
    if (source?.hasUserData(kn) ?? false) {
      return source!.getUserData(kn) as ResolvedGroup;
    }

    // Initialize the resolved group
    final res = ResolvedGroup(null, null);

    // Search the groups in the map for a matching group name
    for (final group in map?.group ?? <StructureMapGroup>[]) {
      if (group.name.toString() == name) {
        if (res.targetMap == null) {
          res
            ..targetMap = map
            ..target = group;
        } else {
          throw FHIRException(
            message: "Multiple possible matches for rule '$name'",
          );
        }
      }
    }

    // If a matching group was found, cache the result and return
    if (res.targetMap != null) {
      source?.setUserData(kn, res);
      return res;
    }

    // Process imports if no match found in the map groups
    for (final imp in map?.import_ ?? <FhirCanonical>[]) {
      final impMapList = _findMatchingMaps(imp.value.toString());

      // Throw error if no matching maps are found for the import
      if (impMapList.isEmpty) {
        throw FHIRException(message: 'Unable to find map(s) for ${imp.value}');
      }

      // Search each imported map for the matching group name
      for (final impMap in impMapList) {
        if (impMap.url.toString() != map?.url.toString()) {
          for (final grp in impMap.group) {
            if (grp.name.toString() == name) {
              if (res.targetMap == null) {
                res
                  ..targetMap = impMap
                  ..target = grp;
              } else {
                throw FHIRException(
                  message:
                      "Multiple possible matches for rule group '$name' in "
                      '${res.targetMap!.url}#${res.target!.name} and '
                      '${impMap.url}#${grp.name}',
                );
              }
            }
          }
        }
      }
    }

    // If no match is found, throw an error
    if (res.target == null) {
      throw FHIRException(
        message:
            "No matches found for rule '$name'. Reference found in ${map?.url}",
      );
    }

    // Cache the result and return
    source?.setUserData(kn, res);
    return res;
  }

  List<StructureMap> _findMatchingMaps(String canonicalUrlTemplate) {
    final structureMapService = StructureMapService();
    final seenUrls = <String>{};
    var result = <StructureMap>[];

    if (canonicalUrlTemplate.contains('*')) {
      result = structureMapService.listTransforms(canonicalUrlTemplate);
    } else {
      final sm = structureMapService.getTransform(canonicalUrlTemplate);
      if (sm != null) {
        result.add(sm);
      }
    }

    result.removeWhere((sm) => !seenUrls.add(sm.url.toString()));
    return result;
  }

  /// Helper function to fetch a StructureDefinition resource
  Future<StructureDefinition?> fetchStructureDefinition(String? url) async {
    return url == null ? null : await resolver.resolve(url);
  }

  /// Utility function to check if a string is an absolute URL
  bool isAbsoluteUrl(String? url) {
    // This can be a simple check for 'http://' or 'https://'
    return url != null && (Uri.tryParse(url)?.hasAbsolutePath ?? false);
  }
}
