// ignore_for_file: public_member_api_docs, avoid_print, prefer_final_locals,
// ignore_for_file: omit_local_variable_types, constant_identifier_names

import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

Future<FhirBase?> fhirMappingEngine(
  FhirBase source,
  StructureMap map,
  FhirDb cache,
) async {
  final mapEngine = FhirMapEngine(cache, map);
  final transform = await mapEngine.transform(source, null);
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
  final FHIRPathEngine fpe = FHIRPathEngine(WorkerContext());
  int rules = 0;

  static const String MAP_WHERE_CHECK = 'map.where.check';
  static const String MAP_WHERE_LOG = 'map.where.log';
  static const String MAP_SEARCH_EXPRESSION = 'map.search.expression';
  static const String MAP_WHERE_EXPRESSION = 'map.where.expression';

  void transformFromFhir(
    Resource sourceResource,
    StructureMap map,
    Resource? targetResource,
  ) {
    transform(sourceResource, targetResource);
  }

  /// Main transform method
  Future<void> transform(
    Object appInfo,
    FhirBase source,
    StructureMap map,
    FhirBase? target,
  ) async {
    final context = TransformContext(appInfo);
    final g = map.group.firstOrNull;
    if (g == null) return;

    final inputName = _getInputName(g, StructureMapInputMode.source, 'source');
    if (inputName == null) {
      throw MappingDefinitionException(message: 'No input name found');
    }
    final vars = Variables()..add(VariableMode.INPUT, inputName, source);
    if (target != null) {
      final targetName =
          _getInputName(g, StructureMapInputMode.target, 'target');
      if (targetName == null) {
        throw MappingDefinitionException(message: 'No target name found');
      }
      vars.add(VariableMode.OUTPUT, targetName, target);
    } else if (_getInputName(g, StructureMapInputMode.target, null) != null) {
      final type = _getInputType(g, StructureMapInputMode.target) ?? '';
      throw FHIRException(message: 'Not handled yet: creating a type of $type');
    }

    await _executeGroup('', context, map, vars, g, true);
  }

  String? _getInputType(StructureMapGroup g, StructureMapInputMode mode) {
    String? type;
    for (final inp in g.input) {
      if (inp.mode == mode) {
        if (type != null) {
          throw MappingDefinitionException(
            message: 'This engine does not support multiple source inputs',
          );
        } else {
          type = inp.type?.value;
        }
      }
    }
    return type;
  }

  String? _getInputName(
    StructureMapGroup g,
    StructureMapInputMode mode,
    String? def,
  ) {
    String? name;
    for (final inp in g.input) {
      if (inp.mode == mode) {
        if (name != null) {
          throw MappingDefinitionException(
            message: 'This engine does not support multiple source inputs',
          );
        } else {
          name = inp.name.value;
        }
      }
    }
    return name ?? def;
  }

  Future<void> _executeGroup(
    String indent,
    TransformContext context,
    StructureMap? map,
    Variables vars,
    StructureMapGroup? group,
    bool atRoot,
  ) async {
    // Resolve and execute extended group first if it exists
    final resolvedGroup = group?.extends_?.toString().isNotEmpty ?? false
        ? _resolveGroupReference(map, group!, group.extends_!.toString())
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
    TransformContext context,
    StructureMap map,
    Variables vars,
    StructureMapGroup group,
    StructureMapRule rule,
    bool atRoot,
  ) async {
    print('$indent Executing Rule: ${rule.name}');

    // Ensure single source and create copy of variables
    if (rule.source.length != 1) {
      throw Exception('Rule "${rule.name}" has multiple sources.');
    }
    final srcVars = vars.copy();
    print('$indent Created copy of vars: ${srcVars.summary()}');

    // Process rule sources and targets
    final sourceVarsList = _processSource(
      rule.name.toString(),
      context,
      srcVars,
      rule.source.first,
      map.url.toString(),
      indent,
    );
    print(
      '$indent Source variables after _processSource: '
      '${sourceVarsList?.map((e) => e.summary()).toList()}',
    );

    for (final sourceVars in sourceVarsList ?? <Variables>[]) {
      for (final target in rule.target ?? <StructureMapTarget>[]) {
        print('$indent Processing target: ${target.context}');
        _processTarget(
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
      if (rule.rule?.isNotEmpty ?? false) {
        for (final childrule in rule.rule ?? <StructureMapRule>[]) {
          await _executeRule(
            '$indent  ',
            context,
            map,
            srcVars,
            group,
            childrule,
            false,
          );
        }
      } else if (rule.dependent?.isNotEmpty ?? false) {
        for (final dependent in rule.dependent ?? <StructureMapDependent>[]) {
          _executeDependency(
            '$indent  ',
            context,
            map,
            srcVars,
            group,
            dependent,
          );
        }
      } else if (rule.source.length == 1 &&
          rule.source.first.variable != null &&
          rule.target?.length == 1 &&
          rule.target?.first.variable != null &&
          rule.target?.first.transform == StructureMapTransform.create &&
          !(rule.target?.first.parameter?.isNotEmpty ?? false)) {
        FhirBase? src =
            srcVars.get(VariableMode.INPUT, rule.source.first.variable?.value);
        FhirBase? tgt = srcVars.get(
          VariableMode.OUTPUT,
          rule.target?.firstOrNull?.variable?.value,
        );
        if (src == null || tgt == null) {
          continue;
        }
        String srcType = src.fhirType;
        String tgtType = tgt.fhirType;
        ResolvedGroup defGroup = await _resolveGroupByTypes(
          map,
          rule.name.value ?? '',
          group,
          srcType,
          tgtType,
        );
        Variables vdef = Variables();
        final inputName = defGroup.target!.input[0].name.value;
        if (inputName == null) {
          throw MappingDefinitionException(message: 'No input name found');
        }
        final targetName = defGroup.target!.input[1].name.value;
        if (targetName == null) {
          throw MappingDefinitionException(message: 'No target name found');
        }
        vdef
          ..add(VariableMode.INPUT, inputName, src)
          ..add(VariableMode.OUTPUT, targetName, tgt);
        await _executeGroup(
          '$indent  ',
          context,
          defGroup.targetMap,
          vdef,
          defGroup.target,
          false,
        );
      }
    }
  }

  void _executeDependency(
    String indent,
    TransformContext context,
    StructureMap map,
    Variables vin,
    StructureMapGroup group,
    StructureMapDependent dependent,
  ) {
    final rg = _resolveGroupReference(map, group, dependent.name.value!);

    if (rg.target!.input.length != dependent.variable.length) {
      throw FHIRException(
        message: "Rule '${dependent.name}' has ${rg.target!.input.length} but "
            'the invocation has ${dependent.variable.length} variables',
      );
    }
    Variables v = Variables();
    for (int i = 0; i < rg.target!.input.length; i++) {
      final input = rg.target!.input[i];
      final varVal = dependent.variable[i].value;
      final mode = input.mode == StructureMapInputMode.source
          ? VariableMode.INPUT
          : VariableMode.OUTPUT;
      var vv = varVal == null ? null : vin.get(mode, varVal);
      if (vv == null && mode == VariableMode.INPUT) {
        vv = vin.get(VariableMode.OUTPUT, varVal);
      }
      if (vv == null) {
        throw FHIRException(
          message: "Rule '${dependent.name}' $mode variable '${input.name}' "
              "named '$varVal' has no value (vars = ${vin.summary()})",
        );
      }

      v.add(mode, input.name.toString(), vv);
    }

    // Execute the resolved group
    _executeGroup(
      '$indent  ',
      context,
      rg.targetMap,
      v,
      rg.target,
      false,
    );
  }

  Future<String> _determineTypeFromSourceType(
    StructureMap map,
    StructureMapGroup source,
    FhirBase fhirBase,
    List<String> types,
  ) async {
    String type = fhirBase.fhirType;
    String kn = 'type^$type';
    if (source.hasUserData(kn)) {
      return source.getUserData(kn) as String;
    }

    ResolvedGroup res = ResolvedGroup(null, null);
    for (final grp in map.group) {
      if (await _matchesByType(map, grp, type)) {
        if (res.targetMap == null) {
          res
            ..targetMap = map
            ..target = grp;
        } else {
          throw FHIRException(
            message: 'Multiple possible matches looking for '
                "default rule for '$type'",
          );
        }
      }
    }
    if (res.targetMap != null) {
      String result = await _getActualType(
        res.targetMap!,
        res.target!.input.first.type?.value ?? '',
      );
      source.setUserData(kn, result);
      return result;
    }

    for (final imp in map.import_ ?? <FhirCanonical>[]) {
      List<StructureMap> impMapList = _findMatchingMaps(imp.toString());
      if (impMapList.isEmpty) {
        throw FHIRException(message: 'Unable to find map(s) for $imp');
      }
      for (final impMap in impMapList) {
        if (impMap.url != map.url) {
          for (final grp in impMap.group) {
            if (await _matchesByType(impMap, grp, type)) {
              if (res.targetMap == null) {
                res
                  ..targetMap = impMap
                  ..target = grp;
              } else {
                throw FHIRException(
                  message: 'Multiple possible matches for default rule for '
                      "'$type' in ${res.targetMap!.url} (${res.target!.name}) "
                      'and ${impMap.url} (${grp.name})',
                );
              }
            }
          }
        }
      }
    }
    if (res.target == null) {
      throw FHIRException(
        message:
            "No matches found for default rule for '$type' from ${map.url}",
      );
    }
    String result = await _getActualType(
      res.targetMap!,
      res.target!.input.first.type?.value ?? '',
    );
    source.setUserData(kn, result);
    return result;
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

  bool _urlMatches(String mask, String url) {
    if (!mask.contains('*')) return mask == url;
    int starIndex = mask.indexOf('*');
    String start = mask.substring(0, starIndex);
    String end = mask.substring(starIndex + 1);
    return url.startsWith(start) && url.endsWith(end);
  }

  Future<ResolvedGroup> _resolveGroupByTypes(
    StructureMap map,
    String ruleid,
    StructureMapGroup source,
    String srcType,
    String tgtType,
  ) async {
    String kn = 'types^$srcType:$tgtType';
    if (source.hasUserData(kn)) {
      return source.getUserData(kn) as ResolvedGroup;
    }

    ResolvedGroup res = ResolvedGroup(null, null);
    for (final grp in map.group) {
      if (await _matchesByType(map, grp, srcType, tgtType)) {
        if (res.targetMap == null) {
          res
            ..targetMap = map
            ..target = grp;
        } else {
          throw FHIRException(
            message: 'Multiple possible matches looking for rule for '
                "'$srcType/$tgtType', from rule '$ruleid'",
          );
        }
      }
    }
    if (res.targetMap != null) {
      source.setUserData(kn, res);
      return res;
    }

    for (final imp in map.import_ ?? <FhirCanonical>[]) {
      List<StructureMap> impMapList = _findMatchingMaps(imp.toString());
      if (impMapList.isEmpty) {
        throw FHIRException(message: 'Unable to find map(s) for $imp');
      }
      for (final impMap in impMapList) {
        if (impMap.url != map.url) {
          for (final grp in impMap.group) {
            if (await _matchesByType(impMap, grp, srcType, tgtType)) {
              if (res.targetMap == null) {
                res
                  ..targetMap = impMap
                  ..target = grp;
              } else {
                throw FHIRException(
                  message: 'Multiple possible matches for rule for '
                      "'$srcType/$tgtType' in ${res.targetMap!.url} and "
                      "${impMap.url}, from rule '$ruleid'",
                );
              }
            }
          }
        }
      }
    }
    if (res.target == null) {
      throw FHIRException(
        message: "No matches found for rule for '$srcType to $tgtType' "
            "from ${map.url}, from rule '$ruleid'",
      );
    }
    source.setUserData(kn, res);
    return res;
  }

  Future<bool> _matchesByType(
    StructureMap map,
    StructureMapGroup grp,
    String srcType, [
    String? tgtType,
  ]) async {
    if (tgtType == null &&
        grp.typeMode != StructureMapGroupTypeMode.type_and_types) {
      return false;
    }
    if (grp.input.length != 2 ||
        grp.input.first.mode != StructureMapInputMode.source ||
        grp.input[1].mode != StructureMapInputMode.target) {
      return false;
    }
    if (tgtType == null) {
      return _matchesType(map, srcType, grp.input.first.type?.value ?? '');
    }
    if (grp.input.first.type == null || grp.input[1].type == null) {
      return false;
    }
    return await _matchesType(
          map,
          srcType,
          grp.input.first.type?.value ?? '',
        ) &&
        await _matchesType(map, tgtType, grp.input[1].type?.value ?? '');
  }

  Future<bool> _matchesType(
    StructureMap map,
    String actualType,
    String statedType,
  ) async {
    var newStatedType = statedType;
    var newActualType = actualType;
    // check the aliases
    for (final imp in map.structure ?? <StructureMapStructure>[]) {
      if (imp.alias != null && newStatedType == imp.alias!.value) {
        // If we can fetch the underlying StructureDefinition
        StructureDefinition? sd = await resolver
            .fetchResource<StructureDefinition>(imp.url.toString());
        if (sd != null) {
          newStatedType = sd.type.toString();
        }
        break;
      }
    }

    if (newActualType.isAbsoluteUrl()) {
      StructureDefinition? sd =
          await resolver.fetchResource<StructureDefinition>(newActualType);
      if (sd != null) {
        newActualType = sd.type.toString();
      }
    }
    if (newStatedType.isAbsoluteUrl()) {
      StructureDefinition? sd =
          await resolver.fetchResource<StructureDefinition>(newStatedType);
      if (sd != null) {
        newStatedType = sd.type.toString();
      }
    }
    return actualType == statedType;
  }

  Future<String> _getActualType(StructureMap map, String statedType) async {
    // check the aliases
    for (final imp in map.structure ?? <StructureMapStructure>[]) {
      if (imp.alias != null && statedType == imp.alias?.value) {
        final sd = await resolver
            .fetchResource<StructureDefinition>(imp.url.toString());
        if (sd == null) {
          throw FHIRException(
            message: 'Unable to resolve structure ${imp.url}',
          );
        }
        // Should be sd.type, but R2 example used sd.id
        return sd.id?.value ?? statedType;
      }
    }
    return statedType;
  }

  ResolvedGroup _resolveGroupReference(
    StructureMap? map,
    StructureMapGroup source,
    String name,
  ) {
    String kn = 'ref^$name';
    if (source.hasUserData(kn)) {
      return source.getUserData(kn) as ResolvedGroup;
    }

    ResolvedGroup res = ResolvedGroup(null, null);
    for (final grp in map?.group ?? <StructureMapGroup>[]) {
      if (grp.name.value == name) {
        if (res.targetMap == null) {
          res
            ..targetMap = map
            ..target = grp;
        } else {
          throw FHIRException(
            message: 'Multiple possible matches for rule "$name"',
          );
        }
      }
    }
    if (res.targetMap != null) {
      source.setUserData(kn, res);
      return res;
    }

    for (final imp in map?.import_ ?? <FhirCanonical>[]) {
      List<StructureMap> impMapList = _findMatchingMaps(imp.toString());
      if (impMapList.isEmpty) {
        throw FHIRException(message: 'Unable to find map(s) for $imp');
      }
      for (final impMap in impMapList) {
        if (impMap.url != map!.url) {
          for (final grp in impMap.group) {
            if (grp.name.value == name) {
              if (res.targetMap == null) {
                res
                  ..targetMap = impMap
                  ..target = grp;
              } else {
                throw FHIRException(
                  message:
                      'Multiple possible matches for rule group "$name" in '
                      '${res.targetMap!.url}#${res.target!.name} '
                      'and ${impMap.url}#${grp.name}',
                );
              }
            }
          }
        }
      }
    }
    if (res.target == null) {
      throw FHIRException(
        message:
            'No matches found for rule "$name". Reference found in ${map?.url}',
      );
    }
    source.setUserData(kn, res);
    return res;
  }

  List<Variables>? _processSource(
    String ruleId,
    TransformContext context,
    Variables vars,
    StructureMapSource src,
    String pathForErrors,
    String indent,
  ) {
    List<FhirBase> items = <FhirBase>[];
    if (src.context.value == '@search') {
      // Evaluate an expression, then do a search
      ExpressionNode? expr =
          src.getUserData(MAP_SEARCH_EXPRESSION) as ExpressionNode?;
      if (expr == null) {
        expr = fpe.parse(src.element?.value ?? '');
        src.setUserData(MAP_SEARCH_EXPRESSION, expr);
      }
      String search =
          fpe.evaluateToString(vars, null, null, ''.toFhirString, expr);
      // TODO(Dokotela): implement services
      // if (services != null) {
      //   items = services!.performSearch(context.appInfo, search);
      // }
    } else {
      FhirBase? b = vars.get(VariableMode.INPUT, src.context.value);
      if (b == null) {
        throw FHIRException(
          message: 'Unknown input variable ${src.context} in $pathForErrors '
              'rule $ruleId (vars = ${vars.summary()})',
        );
      }

      if (src.element != null) {
        items.add(b);
      } else {
        _getChildrenByName(b, src.element?.value ?? '', items);
        if (items.isEmpty && src.defaultValueX != null) {
          items.add(src.defaultValueX!);
        }
      }
    }

    if (src.type != null) {
      items.removeWhere((item) => !_isType(item, src.type!.value!));
    }

    if (src.condition != null) {
      ExpressionNode? expr =
          src.getUserData(MAP_WHERE_EXPRESSION) as ExpressionNode?;
      if (expr == null) {
        expr = fpe.parse(src.condition?.value ?? '');
        src.setUserData(MAP_WHERE_EXPRESSION, expr);
      }
      List<FhirBase> remove = <FhirBase>[];
      for (final item in items) {
        Variables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(VariableMode.INPUT, src.variable!.value!, item);
        }
        bool passed =
            fpe.evaluateToBoolean(varsForSource, null, null, item, expr);
        if (!passed) {
          remove.add(item);
        }
      }
      for (final x in remove) {
        items.remove(x);
      }
    }

    if (src.check != null) {
      ExpressionNode? expr =
          src.getUserData(MAP_WHERE_CHECK) as ExpressionNode?;
      if (expr == null) {
        expr = fpe.parse(src.check?.value ?? '');
        src.setUserData(MAP_WHERE_CHECK, expr);
      }
      for (final item in items) {
        Variables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(VariableMode.INPUT, src.variable!.value!, item);
        }
        bool passed =
            fpe.evaluateToBoolean(varsForSource, null, null, item, expr);
        if (!passed) {
          throw FHIRException(
            message: 'Rule "$ruleId": Check condition failed',
          );
        }
      }
    }

    if (src.logMessage != null) {
      ExpressionNode? expr = src.getUserData(MAP_WHERE_LOG) as ExpressionNode?;
      if (expr == null) {
        expr = fpe.parse(src.logMessage!.value!);
        src.setUserData(MAP_WHERE_LOG, expr);
      }
      List<String> logs = <String>[];
      for (final item in items) {
        Variables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(VariableMode.INPUT, src.variable!.value!, item);
        }
        logs.add(fpe.evaluateToString(varsForSource, null, null, item, expr));
      }
      // TODO(Dokotela): implement services
      // if (logs.isNotEmpty && services != null) {
      //   services!.log(logs.join(', '));
      // }
    }

    if (src.listMode != null && items.isNotEmpty) {
      switch (src.listMode?.value) {
        case 'first':
          final bt = items.first;
          items.clear();
          items.add(bt);
        case 'not_first':
          if (items.isNotEmpty) {
            items.removeAt(0);
          }
        case 'last':
          final bt = items.last;
          items.clear();
          items.add(bt);
        case 'not_last':
          if (items.isNotEmpty) {
            items.removeLast();
          }
        case 'only_one':
          if (items.length > 1) {
            throw FHIRException(
              message: 'Rule "$ruleId": Check condition failed: '
                  'the collection has more than one item',
            );
          }
        default:
          // no-op
          break;
      }
    }

    List<Variables> result = <Variables>[];
    for (final r in items) {
      Variables v = vars.copy();
      if (src.variable != null) {
        v.add(VariableMode.INPUT, src.variable!.value!, r);
      }
      result.add(v);
    }
    return result;
  }

  bool _isType(FhirBase item, String type) {
    return type == item.fhirType;
  }

  Future<void> _getChildrenByName(
    FhirBase parentNode,
    String? elementName,
    List<FhirBase> resultItems,
  ) async {
    if (elementName != null) {
      final children = parentNode.getChildrenByName(elementName);
      resultItems.addAll(children);
    }
  }

  void _processTarget(
    String rulePath,
    TransformContext context,
    Variables vars,
    StructureMap map,
    StructureMapGroup group,
    StructureMapTarget tgt,
    String? srcVar,
    bool atRoot,
    Variables sharedVars,
  ) {
    FhirBase? dest;
    if (tgt.context != null) {
      dest = vars.get(VariableMode.OUTPUT, tgt.context!.value);
      if (dest == null) {
        throw FHIRException(
          message: 'Rul "$rulePath": target context not known: ${tgt.context}',
        );
      }
    }
    FhirBase? v;
    if (tgt.transform != null) {
      v = _runTransform(
        rulePath,
        context,
        map,
        group,
        tgt,
        vars,
        dest,
        tgt.element?.value ?? '',
        srcVar,
        atRoot,
      );
      if (v != null && dest != null) {
        try {
          if (tgt.element == null) {
            throw FHIRException(message: 'Element is null');
          }
          v = dest.setChildByName(tgt.element!.value!, v);
        } catch (e) {
          throw FHIRException(
            message: 'Error setting ${tgt.element} on ${dest.fhirType} '
                'for rule $rulePath to value $v: $e',
          );
        }
      }
    } else if (dest != null) {
      if (tgt.listMode?.contains(StructureMapTargetListMode.share) ?? false) {
        v = sharedVars.get(VariableMode.SHARED, tgt.listRuleId?.value);
        if (v == null) {
          v = dest.makeProperty(tgt.element?.value ?? '');
          if (tgt.listRuleId != null) {
            sharedVars.add(VariableMode.SHARED, tgt.listRuleId!.value!, v);
          }
        }
      } else if (tgt.element != null) {
        if (tgt.element != null) {
          v = dest.makeProperty(tgt.element!.value!);
        }
      } else {
        v = dest;
      }
    }
    if (tgt.variable != null && v != null) {
      vars.add(VariableMode.OUTPUT, tgt.variable!.value!, v);
    }
  }

  FhirBase? _runTransform(
      String rulePath,
      TransformContext context,
      StructureMap map,
      StructureMapGroup group,
      StructureMapTarget tgt,
      Variables vars,
      FhirBase? dest,
      String element,
      String? srcVar,
      bool root) {
    try {
      switch (tgt.transform) {
        case StructureMapTransform.CREATE:
          {
            String tn;
            if (tgt.parameter.isEmpty) {
              // must figure out type
              List<String> types = <String>[];
              if (dest != null) {
                // In Java code: dest.getTypesForProperty(...) => you need a way to get the available types
                // We'll keep a placeholder here for demonstration:
                types = <String>['*']; // or as needed
              }
              if (types.length == 1 &&
                  types[0] != '*' &&
                  types[0] != 'Resource') {
                tn = types[0];
              } else if (srcVar != null) {
                FhirBase? srcObj = vars.get(VariableMode.INPUT, srcVar);
                if (srcObj != null) {
                  tn = _determineTypeFromSourceType(map, group, srcObj, types);
                } else {
                  throw FHIRException(
                      'Cannot determine type from source variable: $srcVar');
                }
              } else {
                throw FHIRException(
                    'Cannot determine type implicitly because there is no single input variable');
              }
            } else {
              tn =
                  _getParamStringNoNull(vars, tgt.parameter[0], tgt.toString());
              // attempt to resolve alias in map's structure
              for (StructureMapStructure uses in map.structure) {
                if (uses.mode == StructureMapModelMode.TARGET &&
                    uses.hasAlias() &&
                    tn == uses.alias) {
                  tn = uses.url ?? tn;
                  break;
                }
              }
            }
            FhirBase res;
            if (services != null) {
              res = services!.createType(context.appInfo, tn, profileUtilities);
            } else {
              res = _typeFactory(tn);
            }
            if (res.isResource() && res.fhirType != 'Parameters') {
              if (services != null) {
                res =
                    services!.createResource(context.appInfo, res, root) ?? res;
              }
            }
            return res;
          }

        case StructureMapTransform.COPY:
          {
            return _getParam(vars, tgt.parameter[0]);
          }

        case StructureMapTransform.EVALUATE:
          {
            ExpressionNode? expr =
                tgt.getUserData(MAP_EXPRESSION) as ExpressionNode?;
            if (expr == null) {
              expr = fpe.parse(_getParamStringNoNull(
                  vars, tgt.parameter.last, tgt.toString()));
              tgt.setUserData(MAP_EXPRESSION, expr);
            }
            FhirBase test = tgt.parameter.length == 2
                ? (_getParam(vars, tgt.parameter[0]) ?? BooleanType('false'))
                : BooleanType('false');
            List<FhirBase> v = fpe.evaluate(vars, null, null, test, expr);
            if (v.isEmpty) {
              return null;
            } else if (v.length != 1) {
              throw FHIRException(
                  'Rule "$rulePath": Evaluation of ${expr.toString()} returned ${v.length} objects');
            } else {
              return v.first;
            }
          }

        case StructureMapTransform.TRUNCATE:
          {
            String src = _getParamString(vars, tgt.parameter[0]) ?? '';
            String len =
                _getParamStringNoNull(vars, tgt.parameter[1], tgt.toString());
            if (int.tryParse(len) != null) {
              int l = int.parse(len);
              if (src.length > l) {
                src = src.substring(0, l);
              }
            }
            return StringType(src);
          }

        case StructureMapTransform.ESCAPE:
          {
            throw FHIRException(
                'Rule "$rulePath": Transform ESCAPE not supported yet');
          }

        case StructureMapTransform.CAST:
          {
            String src = _getParamString(vars, tgt.parameter[0]) ?? '';
            if (tgt.parameter.length == 1) {
              throw FHIRException(
                  'Implicit type parameters on cast not yet supported');
            }
            String t = _getParamString(vars, tgt.parameter[1]) ?? '';
            switch (t) {
              case 'boolean':
                return BooleanType(src);
              case 'integer':
                return IntegerType(src);
              case 'integer64':
                return Integer64Type(src);
              case 'string':
                return StringType(src);
              case 'decimal':
                return DecimalType(src);
              case 'uri':
                return UriType(src);
              case 'base64Binary':
                return FhirBase64BinaryType(src);
              case 'instant':
                return InstantType(src);
              case 'date':
                return DateType(src);
              case 'dateTime':
                return DateTimeType(src);
              case 'time':
                return TimeType(src);
              case 'code':
                return CodeType(src);
              case 'oid':
                return OidType(src);
              case 'id':
                return IdType(src);
              case 'markdown':
                return MarkdownType(src);
              case 'unsignedInt':
                return UnsignedIntType(src);
              case 'positiveInt':
                return PositiveIntType(src);
              case 'uuid':
                return UuidType(src);
              case 'url':
                return UrlType(src);
              case 'canonical':
                return CanonicalType(src);
            }
            throw FHIRException('cast to $t not yet supported');
          }

        case StructureMapTransform.APPEND:
          {
            StringBuffer sb =
                StringBuffer(_getParamString(vars, tgt.parameter[0]) ?? '');
            for (int i = 1; i < tgt.parameter.length; i++) {
              sb.write(_getParamString(vars, tgt.parameter[i]) ?? '');
            }
            return StringType(sb.toString());
          }

        case StructureMapTransform.TRANSLATE:
          {
            return _translate(context, map, vars, tgt.parameter);
          }

        case StructureMapTransform.REFERENCE:
          {
            FhirBase? b = _getParam(vars, tgt.parameter[0]);
            if (b == null) {
              throw FHIRException(
                  'Rule "$rulePath": Unable to find parameter ${(tgt.parameter[0].value as IdType).asStringValue()}');
            }
            if (!b.isResource()) {
              throw FHIRException(
                  'Rule "$rulePath": Transform engine cannot point at an element of type ${b.fhirType}');
            } else {
              String? id = b.getIdBase();
              if (id == null) {
                id =
                    '${UuidType('').primitiveValue()}'; // or use `UUID.randomUUID()` analog
                b.setIdBase(id);
              }
              return StringType('${b.fhirType}/$id');
            }
          }

        case StructureMapTransform.DATEOP:
          {
            throw FHIRException(
                'Rule "$rulePath": Transform DATEOP not supported yet');
          }

        case StructureMapTransform.UUID:
          {
            return IdType('${UuidType('').primitiveValue()}');
          }

        case StructureMapTransform.POINTER:
          {
            FhirBase? b = _getParam(vars, tgt.parameter[0]);
            if (b is Resource) {
              return UriType('urn:uuid:${b.getIdBase()}');
            } else {
              throw FHIRException(
                  'Rule "$rulePath": Transform engine cannot point at an element of type ${b?.fhirType}');
            }
          }

        case StructureMapTransform.CC:
          {
            String uri =
                _getParamStringNoNull(vars, tgt.parameter[0], tgt.toString());
            String code =
                _getParamStringNoNull(vars, tgt.parameter[1], tgt.toString());
            Coding c = _buildCoding(uri, code);
            CodeableConcept cc = CodeableConcept();
            cc.addCoding(c);
            return cc;
          }

        case StructureMapTransform.C:
          {
            String uri =
                _getParamStringNoNull(vars, tgt.parameter[0], tgt.toString());
            String code =
                _getParamStringNoNull(vars, tgt.parameter[1], tgt.toString());
            return _buildCoding(uri, code);
          }

        default:
          {
            throw FHIRException(
                'Rule "$rulePath": Transform Unknown: ${tgt.transform}');
          }
      }
    } catch (e, st) {
      throw FHIRException(
          'Exception executing transform ${tgt.toString()} on Rule "$rulePath": ${e.toString()}',
          e is Exception ? e : null);
    }
  }

  FhirBase _typeFactory(String tn) {
    if (Utilities.isAbsoluteUrl(tn) &&
        !tn.startsWith('http://hl7.org/fhir/StructureDefinition')) {
      StructureDefinition? sd = worker.fetchTypeDefinition(tn);
      if (sd == null) {
        // For demonstration: if user tries "http://hl7.org/fhirpath/System.String"
        if (tn == 'http://hl7.org/fhirpath/System.String') {
          sd = worker.fetchTypeDefinition('string');
        }
      }
      if (sd == null) {
        throw FHIRException('Unable to create type $tn');
      } else {
        return Manager.build(worker, sd, profileUtilities);
      }
    } else {
      // See ResourceFactory in original
      // Provide your own creation logic or placeholders for types
      return FhirBase(); // For demonstration
    }
  }

  Coding _buildCoding(String uri, String code) {
    String? system;
    String? display;
    String? version;
    if (uri.isEmpty) {
      // no system
      system = null;
    } else {
      ValueSet? vs = worker.fetchResource(ValueSet, uri);
      if (vs != null) {
        ValueSetExpansionOutcome vse = worker.expandVS(vs, true, false);
        if (vse.error != null) {
          throw FHIRException(vse.error!);
        }
        List<ValueSetExpansionContains> expanded = vse.valueset.contains;
        bool found = false;
        for (ValueSetExpansionContains t in expanded) {
          if (t.hasCode()) {
            if (t.getCode() == code) {
              system = t.getSystem();
              version = t.getVersion();
              display = t.getDisplay();
              found = true;
              break;
            } else if (code.toLowerCase() ==
                (t.getDisplay() ?? '').toLowerCase()) {
              system = t.getSystem();
              version = t.getVersion();
              display = t.getDisplay();
              found = true;
              break;
            }
          }
        }
        if (!found) {
          throw FHIRException(
              'The code "$code" is not in the value set "$uri" (also checked displays)');
        }
      } else {
        system = uri;
      }
    }
    ValidationResult? vr = worker.validateCode(
        TerminologyServiceOptions().withVersionFlexible(true),
        system,
        version,
        code,
        null);
    if (vr != null && vr.display != null) {
      display = vr.display;
    }
    return Coding(
        system: system, code: code, display: display, version: version);
  }

  String _getParamStringNoNull(
      Variables vars, StructureMapTargetParameter parameter, String message) {
    FhirBase? b = _getParam(vars, parameter);
    if (b == null) {
      throw FHIRException(
          'Unable to find a value for ${parameter.toString()}. Context: $message');
    }
    if (!b.hasPrimitiveValue()) {
      throw FHIRException(
          'Found a value for ${parameter.toString()}, but it has type ${b.fhirType} and cannot be treated as a string. Context: $message');
    }
    return b.primitiveValue();
  }

  String? _getParamString(
      Variables vars, StructureMapTargetParameter parameter) {
    FhirBase? b = _getParam(vars, parameter);
    if (b == null || !b.hasPrimitiveValue()) {
      return null;
    }
    return b.primitiveValue();
  }

  FhirBase? _getParam(Variables vars, StructureMapTargetParameter parameter) {
    DataType p = parameter.getValue();
    if (p is! IdType) {
      return p;
    } else {
      String n = p.asStringValue();
      FhirBase? b = vars.get(VariableMode.INPUT, n);
      b ??= vars.get(VariableMode.OUTPUT, n);
      if (b == null) {
        throw MappingDefinitionException(
            'Variable $n not found (${vars.summary()})');
      }
      return b;
    }
  }

  FhirBase? _translate(TransformContext context, StructureMap map,
      Variables vars, List<StructureMapTargetParameter> parameter) {
    FhirBase? src = _getParam(vars, parameter[0]);
    if (src == null) {
      throw FHIRException('Null source for translate');
    }
    String id = _getParamString(vars, parameter[1]) ?? '';
    String? fld =
        parameter.length > 2 ? _getParamString(vars, parameter[2]) : null;
    return translate_(context, map, src, id, fld);
  }

  /// Public method that parallels the Java version
  FhirBase? translate_(TransformContext context, StructureMap map,
      FhirBase source, String conceptMapUrl, String? fieldToReturn) {
    Coding srcC = Coding();
    if (source.hasPrimitiveValue()) {
      srcC.code = source.primitiveValue();
    } else if (source.fhirType == 'Coding') {
      // mimic: source.getProperty("system", ...)
      // for demonstration: do your own retrieving logic
      // ...
      srcC.system = ''; // fill as needed
      srcC.code = ''; // fill as needed
    } else if (source.fhirType == 'CE') {
      // ...
      srcC.system = ''; // fill as needed
      srcC.code = ''; // fill as needed
    } else {
      throw FHIRException('Unable to translate source ${source.fhirType}');
    }

    if (conceptMapUrl == 'http://hl7.org/fhir/ConceptMap/special-oid2uri') {
      String? uri = ContextUtilities(worker).oid2Uri(srcC.code ?? '');
      uri ??= 'urn:oid:${srcC.code}';
      if (fieldToReturn == 'uri') {
        return UriType(uri);
      } else {
        throw FHIRException('Error in return code');
      }
    } else {
      ConceptMap? cmap;
      String su = conceptMapUrl;
      if (conceptMapUrl.startsWith('#')) {
        for (Resource r in map.getContained()) {
          if (r is ConceptMap && r.getIdBase() == conceptMapUrl.substring(1)) {
            cmap = r;
            su = '${map.getUrl()}#$conceptMapUrl';
          }
        }
        if (cmap == null) {
          throw FHIRException(
              'Unable to translate - cannot find map $conceptMapUrl');
        }
      } else {
        if (conceptMapUrl.contains('#')) {
          List<String> p = conceptMapUrl.split('#');
          StructureMap? mapU = worker.fetchResource(StructureMap, p[0]);
          if (mapU != null) {
            for (Resource r in mapU.getContained()) {
              if (r is ConceptMap && r.getIdBase() == p[1]) {
                cmap = r;
                su = conceptMapUrl;
              }
            }
          }
        }
        cmap ??= worker.fetchResource(ConceptMap, conceptMapUrl);
      }
      Coding? outcome;
      bool done = false;
      String? message;
      if (cmap == null) {
        // Attempt external services
        if (services == null) {
          message = 'No map found for $conceptMapUrl';
        } else {
          outcome = services!.translate(context.appInfo, srcC, conceptMapUrl);
          done = true;
        }
      } else {
        List<_SourceElementWrapper> list = <_SourceElementWrapper>[];
        for (ConceptMapGroup g in cmap.group) {
          for (SourceElement e in g.element) {
            if ((srcC.system?.isEmpty ?? true) && (srcC.code == e.code)) {
              list.add(_SourceElementWrapper(g, e));
            } else if ((srcC.system == g.source) && (srcC.code == e.code)) {
              list.add(_SourceElementWrapper(g, e));
            }
          }
        }
        if (list.isEmpty) {
          done = true;
        } else if (list[0].comp.target.isEmpty) {
          message = 'Concept map $su found no translation for ${srcC.code}';
        } else {
          bool foundOne = false;
          for (TargetElement tgt in list[0].comp.target) {
            // Relationship check
            if (tgt.relationship == null ||
                tgt.relationship == ConceptMapRelationship.RELATEDTO ||
                tgt.relationship == ConceptMapRelationship.EQUIVALENT ||
                tgt.relationship ==
                    ConceptMapRelationship.SOURCEISNARROWERTHANTARGET) {
              if (foundOne) {
                message =
                    'Concept map $su found multiple matches for ${srcC.code}';
                done = false;
                break;
              } else {
                foundOne = true;
                done = true;
                outcome = Coding(
                    code: tgt.code,
                    system: list[0].group.target,
                    display: null // will fill later
                    );
              }
            }
          }
          if (!foundOne && message == null) {
            message =
                'Concept map $su found no usable translation for ${srcC.code}';
          }
        }
      }
      if (!done) {
        throw FHIRException(message ?? 'Unknown translation error');
      }
      if (outcome == null) {
        return null;
      }
      // Attempt to get a display from the worker
      ValidationResult? vr = worker.validateCode(
          TerminologyServiceOptions().withVersionFlexible(true),
          outcome.system,
          outcome.version,
          outcome.code,
          null);
      if (vr != null && vr.display != null) {
        outcome.display = vr.display;
      }
      if (fieldToReturn == 'code') {
        return CodeType(outcome.code ?? '');
      } else {
        return outcome;
      }
    }
  }
}

/// Helper class to replicate Java usage for storing group + source together
class _SourceElementWrapper {
  final ConceptMapGroup group;
  final SourceElement comp;

  _SourceElementWrapper(this.group, this.comp);
}
