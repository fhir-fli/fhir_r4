// ignore_for_file: public_member_api_docs, avoid_print,
// ignore_for_file: omit_local_variable_types, constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:uuid/uuid.dart';

Future<FhirBase?> fhirMappingEngine(
  FhirBase source,
  StructureMap map,
  FhirDb cache,
) async {
  final mapEngine = FhirMapEngine(cache, map);
  final transform = await mapEngine.transform('', source, map, null);
  return transform;
}

class FhirMapEngine {
  FhirMapEngine(this.cache, this.map)
      : resolver = DefinitionResolver(cache, map) {
    context = TransformationContext(resolver);
    // transformer = Transformer(map, context, resolver);
  }
  final FhirDb cache;
  final StructureMap map;
  final DefinitionResolver resolver;
  late final TransformationContext context;
  // late final Transformer transformer;
  final FHIRPathEngine fpe = FHIRPathEngine(WorkerContext());
  int rules = 0;

  static const String MAP_WHERE_CHECK = 'map.where.check';
  static const String MAP_WHERE_LOG = 'map.where.log';
  static const String MAP_SEARCH_EXPRESSION = 'map.search.expression';
  static const String MAP_WHERE_EXPRESSION = 'map.where.expression';
  static const String MAP_EXPRESSION = 'map.transform.expression';

  Future<FhirBase> transformFromFhir(
    Resource sourceResource,
    StructureMap map,
    Resource? targetResource,
  ) async {
    return transform('', sourceResource, map, targetResource);
  }

  /// Main transform method
  Future<FhirBase> transform(
    Object appInfo,
    FhirBase source,
    StructureMap map,
    FhirBase? target,
  ) async {
    final context = TransformContext(appInfo);
    final g = map.group.firstOrNull;
    if (g == null) {
      throw FHIRException(message: 'No group found');
    }

    final inputName = _getInputName(g, StructureMapInputMode.source, 'source');
    if (inputName == null) {
      throw MappingDefinitionException(message: 'No input name found');
    }
    final vars = Variables()..add(VariableMode.INPUT, inputName, source);
    String? targetName;
    if (target != null) {
      targetName = _getInputName(g, StructureMapInputMode.target, 'target');
      if (targetName == null) {
        throw MappingDefinitionException(message: 'No target name found');
      }
      vars.add(VariableMode.OUTPUT, targetName, target);
    } else if (_getInputName(g, StructureMapInputMode.target, null) != null) {
      final type = _getInputType(g, StructureMapInputMode.target) ?? '';
      throw FHIRException(message: 'Not handled yet: creating a type of $type');
    }

    await _executeGroup('', context, map, vars, g, true);
    final result = vars.getOutputVar(targetName);
    if (result == null) {
      throw FHIRException(message: 'No output found');
    } else {
      return result;
    }
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
    TransformContext context,
    StructureMap? map,
    Variables vars,
    StructureMapGroup? group,
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
      map?.url.toString(),
      indent,
    );
    print(
      '$indent Source variables after _processSource: '
      '${sourceVarsList?.map((e) => e.summary()).toList()}',
    );

    for (final sourceVars in sourceVarsList ?? <Variables>[]) {
      for (final target in rule.target ?? <StructureMapTarget>[]) {
        print('$indent Processing target: ${target.context}');
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
        final FhirBase? src =
            srcVars.get(VariableMode.INPUT, rule.source.first.variable?.value);
        final FhirBase? tgt = srcVars.get(
          VariableMode.OUTPUT,
          rule.target?.firstOrNull?.variable?.value,
        );
        if (src == null || tgt == null) {
          continue;
        }
        final String srcType = src.fhirType;
        final String tgtType = tgt.fhirType;
        final ResolvedGroup defGroup = await _resolveGroupByTypes(
          map,
          rule.name.value ?? '',
          group,
          srcType,
          tgtType,
        );
        final Variables vdef = Variables();
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
    StructureMap? map,
    Variables vin,
    StructureMapGroup? group,
    StructureMapDependent dependent,
  ) {
    final rg = _resolveGroupReference(map, group, dependent.name.value!);

    if (rg.target!.input.length != dependent.variable.length) {
      throw FHIRException(
        message: "Rule '${dependent.name}' has ${rg.target!.input.length} but "
            'the invocation has ${dependent.variable.length} variables',
      );
    }
    final Variables v = Variables();
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
    StructureMap? map,
    StructureMapGroup? source,
    FhirBase fhirBase,
    List<String> types,
  ) async {
    final String type = fhirBase.fhirType;
    final String kn = 'type^$type';
    if (source?.hasUserData(kn) ?? false) {
      return source!.getUserData(kn) as String;
    }

    final ResolvedGroup res = ResolvedGroup(null, null);
    for (final grp in map?.group ?? <StructureMapGroup>[]) {
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
      final String result = await _getActualType(
        res.targetMap!,
        res.target!.input.first.type?.value ?? '',
      );
      source?.setUserData(kn, result);
      return result;
    }

    for (final imp in map?.import_ ?? <FhirCanonical>[]) {
      final List<StructureMap> impMapList = _findMatchingMaps(imp.toString());
      if (impMapList.isEmpty) {
        throw FHIRException(message: 'Unable to find map(s) for $imp');
      }
      for (final impMap in impMapList) {
        if (impMap.url != map!.url) {
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
            "No matches found for default rule for '$type' from ${map?.url}",
      );
    }
    final String result = await _getActualType(
      res.targetMap!,
      res.target!.input.first.type?.value ?? '',
    );
    source?.setUserData(kn, result);
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

  Future<ResolvedGroup> _resolveGroupByTypes(
    StructureMap? map,
    String ruleid,
    StructureMapGroup? source,
    String srcType,
    String tgtType,
  ) async {
    final String kn = 'types^$srcType:$tgtType';
    if (source?.hasUserData(kn) ?? false) {
      return source!.getUserData(kn) as ResolvedGroup;
    }

    final ResolvedGroup res = ResolvedGroup(null, null);
    for (final grp in map?.group ?? <StructureMapGroup>[]) {
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
      source?.setUserData(kn, res);
      return res;
    }

    for (final imp in map?.import_ ?? <FhirCanonical>[]) {
      final List<StructureMap> impMapList = _findMatchingMaps(imp.toString());
      if (impMapList.isEmpty) {
        throw FHIRException(message: 'Unable to find map(s) for $imp');
      }
      for (final impMap in impMapList) {
        if (impMap.url != map!.url) {
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
            "from ${map?.url}, from rule '$ruleid'",
      );
    }
    source?.setUserData(kn, res);
    return res;
  }

  Future<bool> _matchesByType(
    StructureMap? map,
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
    StructureMap? map,
    String actualType,
    String statedType,
  ) async {
    var newStatedType = statedType;
    var newActualType = actualType;
    // check the aliases
    for (final imp in map?.structure ?? <StructureMapStructure>[]) {
      if (imp.alias != null && newStatedType == imp.alias!.value) {
        // If we can fetch the underlying StructureDefinition
        final StructureDefinition? sd = await resolver
            .fetchResource<StructureDefinition>(imp.url.toString());
        if (sd != null) {
          newStatedType = sd.type.toString();
        }
        break;
      }
    }

    if (newActualType.isAbsoluteUrl()) {
      final StructureDefinition? sd =
          await resolver.fetchResource<StructureDefinition>(newActualType);
      if (sd != null) {
        newActualType = sd.type.toString();
      }
    }
    if (newStatedType.isAbsoluteUrl()) {
      final StructureDefinition? sd =
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
    StructureMapGroup? source,
    String name,
  ) {
    final String kn = 'ref^$name';
    if (source?.hasUserData(kn) ?? false) {
      return source!.getUserData(kn) as ResolvedGroup;
    }

    final ResolvedGroup res = ResolvedGroup(null, null);
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
      source?.setUserData(kn, res);
      return res;
    }

    for (final imp in map?.import_ ?? <FhirCanonical>[]) {
      final List<StructureMap> impMapList = _findMatchingMaps(imp.toString());
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
    source?.setUserData(kn, res);
    return res;
  }

  List<Variables>? _processSource(
    String ruleId,
    TransformContext context,
    Variables vars,
    StructureMapSource src,
    String? pathForErrors,
    String indent,
  ) {
    final List<FhirBase> items = <FhirBase>[];
    if (src.context.value == '@search') {
      // Evaluate an expression, then do a search
      ExpressionNode? expr =
          src.getUserData(MAP_SEARCH_EXPRESSION) as ExpressionNode?;
      if (expr == null) {
        expr = fpe.parse(src.element?.value ?? '');
        src.setUserData(MAP_SEARCH_EXPRESSION, expr);
      }
      final String search =
          fpe.evaluateToString(vars, null, null, ''.toFhirString, expr);
      // TODO(Dokotela): implement services
      // if (services != null) {
      //   items = services!.performSearch(context.appInfo, search);
      // }
    } else {
      final FhirBase? b = vars.get(VariableMode.INPUT, src.context.value);
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
      final List<FhirBase> remove = <FhirBase>[];
      for (final item in items) {
        final Variables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(VariableMode.INPUT, src.variable!.value!, item);
        }
        final bool passed =
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
        final Variables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(VariableMode.INPUT, src.variable!.value!, item);
        }
        final bool passed =
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
      final List<String> logs = <String>[];
      for (final item in items) {
        final Variables varsForSource = vars.copy();
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

    final List<Variables> result = <Variables>[];
    for (final r in items) {
      final Variables v = vars.copy();
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

  Future<void> _processTarget(
    String rulePath,
    TransformContext context,
    Variables vars,
    StructureMap? map,
    StructureMapGroup? group,
    StructureMapTarget tgt,
    String? srcVar,
    bool atRoot,
    Variables sharedVars,
  ) async {
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
      v = await _runTransform(
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
          dest = dest.createProperty(tgt.element?.value ?? '');
          v = dest.getChildByName(tgt.element?.value ?? '');
          if (tgt.listRuleId != null && v != null) {
            sharedVars.add(VariableMode.SHARED, tgt.listRuleId!.value!, v);
          }
        }
      } else if (tgt.element != null) {
        if (tgt.element != null) {
          dest = dest.createProperty(tgt.element!.value!);
          v = dest.getChildByName(tgt.element!.value!);
        }
      } else {
        v = dest;
      }
    }
    if (tgt.variable != null && v != null) {
      vars.add(VariableMode.OUTPUT, tgt.variable!.value!, v);
    }
  }

  Future<FhirBase?> _runTransform(
    String rulePath,
    TransformContext context,
    StructureMap? map,
    StructureMapGroup? group,
    StructureMapTarget tgt,
    Variables vars,
    FhirBase? dest,
    String element,
    String? srcVar,
    bool root,
  ) async {
    try {
      switch (tgt.transform?.toString()) {
        case 'create':
          {
            String tn;
            if (tgt.parameter?.isEmpty ?? true) {
              // must figure out type
              List<String> types = <String>[];
              if (dest != null) {
                types = dest.typeByElementName(element);
              }
              if (types.length == 1 &&
                  types[0] != '*' &&
                  types[0] != 'Resource') {
                tn = types[0];
              } else if (srcVar != null) {
                final FhirBase? srcObj = vars.get(VariableMode.INPUT, srcVar);
                if (srcObj != null) {
                  tn = await _determineTypeFromSourceType(
                    map,
                    group,
                    srcObj,
                    types,
                  );
                } else {
                  throw FHIRException(
                    message:
                        'Cannot determine type from source variable: $srcVar',
                  );
                }
              } else {
                throw FHIRException(
                  message: 'Cannot determine type implicitly because there is '
                      'no single input variable',
                );
              }
            } else if (tgt.parameter?.isNotEmpty ?? false) {
              tn = _getParamStringNoNull(
                vars,
                tgt.parameter!.first,
                tgt.toString(),
              );
              // attempt to resolve alias in map's structure
              for (final uses in map?.structure ?? <StructureMapStructure>[]) {
                if (uses.mode == StructureMapModelMode.target &&
                    uses.alias != null &&
                    tn == uses.alias!.value) {
                  tn = uses.url.toString();
                  break;
                }
              }
            } else {
              throw FHIRException(
                message: 'Cannot determine type implicitly because there is '
                    'no single input variable',
              );
            }

            FhirBase res;
            // if (services != null) {
            //   res = services!.createType(context.appInfo, tn, profileUtilities);
            // } else {
            res = _typeFactory(tn);
            // }
            if (res is Resource && res.fhirType != 'Parameters') {
              // if (services != null) {
              //   res =
              //       services!.createResource(context.appInfo, res, root) ?? res;
              // }
            }
            return res;
          }

        case 'copy':
          {
            if (tgt.parameter?.isEmpty ?? true) {
              throw FHIRException(
                message:
                    'Rule "$rulePath": Transform COPY requires a parameter',
              );
            }
            return _getParam(vars, tgt.parameter!.first);
          }

        case 'evaluate':
          {
            ExpressionNode? expr =
                tgt.getUserData(MAP_EXPRESSION) as ExpressionNode?;
            if (expr == null && (tgt.parameter?.isNotEmpty ?? false)) {
              expr = fpe.parse(
                _getParamStringNoNull(
                  vars,
                  tgt.parameter!.last,
                  tgt.toString(),
                ),
              );
              tgt.setUserData(MAP_EXPRESSION, expr);
            }
            final FhirBase test = tgt.parameter?.length == 2
                ? (_getParam(vars, tgt.parameter!.first) ?? false.toFhirBoolean)
                : false.toFhirBoolean;
            final List<FhirBase> v = expr == null
                ? <FhirBase>[]
                : fpe.evaluateWithContext(vars, null, null, test, expr);
            if (v.isEmpty) {
              return null;
            } else if (v.length != 1) {
              throw FHIRException(
                message: 'Rule "$rulePath": '
                    'Evaluation of $expr returned ${v.length} objects',
              );
            } else {
              return v.first;
            }
          }

        case 'truncate':
          {
            if (tgt.parameter?.length == 2) {
              String src = _getParamString(vars, tgt.parameter![0]) ?? '';
              final String len = _getParamStringNoNull(
                vars,
                tgt.parameter![1],
                tgt.toString(),
              );
              if (int.tryParse(len) != null) {
                final int l = int.parse(len);
                if (src.length > l) {
                  src = src.substring(0, l);
                }
              }
              return src.toFhirString;
            } else {
              throw FHIRException(
                message: 'Rule "$rulePath": '
                    'Transform TRUNCATE requires two parameters',
              );
            }
          }

        case 'escape':
          {
            if (tgt.parameter == null || tgt.parameter!.length < 3) {
              throw FHIRException(
                message: 'Escape transform requires source, '
                    'fmt1, and fmt2 parameters',
              );
            }

            final sourceNode = _getParam(vars, tgt.parameter![0]);
            final fmt1 = _getParamStringGeneral(
              vars,
              tgt.parameter![1],
              map,
              throwIfNull: true,
            )!;
            final fmt2 = _getParamStringGeneral(
              vars,
              tgt.parameter![2],
              map,
              throwIfNull: true,
            )!;

            if (sourceNode is! PrimitiveType || sourceNode.value is! String) {
              throw FHIRException(
                message: 'Source for escape must be a string LeafNode',
              );
            }

            final sourceString = sourceNode.value as String;
            String resultString;

            // Handle escaping transformations between formats
            resultString = _convertEscaping(sourceString, fmt1, fmt2);

            return resultString.toFhirString;
          }

        case 'cast':
          {
            final String src = (tgt.parameter?.isEmpty ?? true)
                ? ''
                : _getParamString(vars, tgt.parameter!.first) ?? '';
            if (tgt.parameter?.length == 1) {
              throw FHIRException(
                message: 'Implicit type parameters on cast not yet supported',
              );
            }
            final String t = _getParamString(vars, tgt.parameter![1]) ?? '';
            try {
              switch (t.toLowerCase()) {
                case 'string':
                case 'fhirstring':
                case 'fhir.string':
                  return src.toFhirString;

                case 'integer':
                case 'fhirinteger':
                case 'fhir.integer':
                  return _castToInt(src, rulePath, t);

                case 'boolean':
                case 'fhirboolean':
                case 'fhir.boolean':
                  return (src.toLowerCase() == 'true').toFhirBoolean;

                case 'decimal':
                case 'fhirdecimal':
                case 'fhir.decimal':
                  return double.parse(src).toFhirDecimal;

                case 'date':
                case 'fhirdate':
                case 'fhir.date':
                  return src.toFhirDate;

                case 'datetime':
                case 'fhirdatetime':
                case 'fhir.datetime':
                  return src.toFhirDateTime;

                case 'time':
                case 'fhirtime':
                case 'fhir.time':
                  return src.toFhirTime;

                case 'instant':
                case 'fhirinstant':
                case 'fhir.instant':
                  return src.toFhirInstant;

                case 'uri':
                case 'fhiruri':
                case 'fhir.uri':
                  return src.toFhirUri;

                case 'oid':
                case 'fhiroid':
                case 'fhir.oid':
                  return src.toFhirOid;

                case 'id':
                case 'fhirid':
                case 'fhir.id':
                  return src.toFhirId;

                case 'base64binary':
                case 'fhirbase64binary':
                case 'fhir.base64binary':
                  return src.toFhirBase64Binary;

                case 'code':
                case 'fhircode':
                case 'fhir.code':
                case 'fhircodeenum':
                  return src.toFhirCode;

                case 'canonical':
                case 'fhircanonical':
                case 'fhir.canonical':
                  return src.toFhirCanonical;

                case 'url':
                case 'fhirurl':
                case 'fhir.url':
                  return src.toFhirUrl;

                case 'unsignedint':
                case 'fhirunsignedint':
                case 'fhir.unsignedint':
                  return int.parse(src).toFhirUnsignedInt;

                case 'positiveint':
                case 'fhirpositiveint':
                case 'fhir.positiveint':
                  final intValue = int.parse(src);
                  if (intValue <= 0) {
                    throw FHIRMappingCastException(
                      message: "Rule '$rulePath': "
                          'PositiveInt must be greater than zero.',
                    );
                  }
                  return intValue.toFhirPositiveInt;

                case 'markdown':
                case 'fhirmarkdown':
                case 'fhir.markdown':
                  return src.toFhirMarkdown;

                default:
                  throw FHIRMappingCastException(
                    message: "Rule '$rulePath': Unsupported cast to type '$t'.",
                  );
              }
            } catch (e) {
              if (e is FHIRMappingCastException) {
                rethrow;
              } else {
                throw FHIRMappingCastException(
                  message: "Rule '$rulePath': Failed to cast '$src' to type "
                      "'$t'. $e",
                );
              }
            }
          }

        case 'append':
          {
            if (tgt.parameter?.isEmpty ?? true) {
              throw FHIRException(
                message: 'Append transform requires a source parameter',
              );
            }

            final StringBuffer sb =
                StringBuffer(_getParamString(vars, tgt.parameter!.first) ?? '');
            for (int i = 1; i < tgt.parameter!.length; i++) {
              sb.write(_getParamString(vars, tgt.parameter![i]) ?? '');
            }
            return sb.toString().toFhirString;
          }

        case 'translate':
          {
            return _translate(
              context,
              map,
              vars,
              tgt.parameter ?? <StructureMapParameter>[],
            );
          }

        case 'reference':
          {
            if (tgt.parameter?.isEmpty ?? true) {
              throw FHIRException(
                message: 'Reference transform requires a source parameter',
              );
            }
            final FhirBase? b = _getParam(vars, tgt.parameter!.first);
            if (b == null) {
              throw FHIRException(
                message: 'Rule "$rulePath": Unable to find parameter '
                    '${tgt.parameter!.first.valueId?.value}',
              );
            }
            if (b is! Resource) {
              throw FHIRException(
                message:
                    'Rule "$rulePath": Transform engine cannot point at an '
                    'element of type ${b.fhirType}',
              );
            } else {
              return b.path.toFhirString;
            }
          }

        case 'dateOp':
          {
            if (tgt.parameter == null || tgt.parameter!.length < 2) {
              throw FHIRException(
                message: 'dateOp transform requires a source date and an '
                    'operation parameter',
              );
            }

            final sourceNode = _getParam(vars, tgt.parameter![0]);
            final operation = _getParamStringGeneral(
              vars,
              tgt.parameter![1],
              map,
              throwIfNull: true,
            )!;

            if (sourceNode is! PrimitiveType || sourceNode.value is! String) {
              throw FHIRException(
                message: 'Source for dateOp must be a string LeafNode '
                    'representing a date',
              );
            }

            final sourceDateStr = sourceNode.value as String;
            final sourceDate = DateTime.parse(sourceDateStr);
            DateTime resultDate;

            // Example operation: add days
            if (operation.startsWith('addDays(')) {
              final daysStr = operation.substring(8, operation.length - 1);
              final days = int.parse(daysStr);
              resultDate = sourceDate.add(Duration(days: days));
            } else {
              throw FHIRException(
                message: 'Unsupported date operation: $operation',
              );
            }

            return resultDate.toIso8601String().toFhirString;
          }

        case 'uuid':
          {
            return const Uuid().v4().toFhirId;
          }

        case 'pointer':
          {
            if (tgt.parameter?.isEmpty ?? true) {
              throw FHIRException(
                message: 'Pointer transform requires a source parameter',
              );
            }
            final FhirBase? b = _getParam(vars, tgt.parameter!.first);
            if (b is Resource) {
              return 'urn:uuid:${b.id}'.toFhirUri;
            } else {
              throw FHIRException(
                message:
                    'Rule "$rulePath": Transform engine cannot point at an '
                    'element of type ${b?.fhirType}',
              );
            }
          }

        case 'cc':
          {
            if (tgt.parameter?.length != 2) {
              throw FHIRException(
                message: 'cc transform requires two parameters',
              );
            }
            final String uri = _getParamStringNoNull(
              vars,
              tgt.parameter!.first,
              tgt.toString(),
            );
            final String code =
                _getParamStringNoNull(vars, tgt.parameter![1], tgt.toString());
            final Coding c = await _buildCoding(uri, code);
            return CodeableConcept(coding: [c]);
          }

        case 'c':
          {
            if (tgt.parameter?.length != 2) {
              throw FHIRException(
                message: 'c transform requires two parameters',
              );
            }
            final String uri = _getParamStringNoNull(
              vars,
              tgt.parameter!.first,
              tgt.toString(),
            );
            final String code =
                _getParamStringNoNull(vars, tgt.parameter![1], tgt.toString());
            return _buildCoding(uri, code);
          }

        default:
          {
            throw FHIRException(
              message: 'Rule "$rulePath": Transform Unknown: ${tgt.transform}',
            );
          }
      }
    } catch (e) {
      throw FHIRException(
        message: 'Exception executing transform $tgt on Rule "$rulePath": $e',
        cause: e is Exception ? e : null,
      );
    }
  }

  FhirBase _typeFactory(String tn) {
    final newObject = emptyFromType(tn);
    if (newObject == null) {
      throw FHIRException(message: 'Unable to create object of type $tn');
    }
    return newObject;
  }

  Future<Coding> _buildCoding(String uri, String code) async {
    String? system;
    String? display;
    String? version;
    if (uri.isEmpty) {
      // no system
      system = null;
    } else {
      final ValueSet? vs = await resolver.fetchResource<ValueSet>(uri);
      final ValueSetExpansionOutcome vse = resolver.expandVS(vs);
      if (vse.error != null) {
        throw FHIRException(message: vse.error);
      }
      final List<ValueSetContains>? expanded =
          vse.valueSet?.expansion?.contains;
      bool found = false;
      for (final ValueSetContains t in expanded ?? <ValueSetContains>[]) {
        if (t.code?.value != null) {
          if (t.code!.value == code) {
            system = t.system?.toString();
            version = t.version?.toString();
            display = t.display?.toString();
            found = true;
            break;
          } else if (code.toLowerCase() ==
              (t.display?.value ?? '').toLowerCase()) {
            system = t.system?.toString();
            version = t.version?.toString();
            display = t.display?.toString();
            found = true;
            break;
          }
        }
      }
      if (!found) {
        throw FHIRException(
          message: 'The code "$code" is not in the value set '
              '"$uri" (also checked displays)',
        );
      }
    }
    final ValidationResult? vr = resolver.validateCode(
      ValidationOptions().withVersionFlexible(true),
      system,
      version,
      code,
      null,
    );
    if (vr?.display != null) {
      display = vr!.display;
    }
    return Coding(
      system: system?.toFhirUri,
      code: code.toFhirCode,
      display: display?.toFhirString,
      version: version?.toFhirString,
    );
  }

  String _getParamStringNoNull(
    Variables vars,
    StructureMapParameter parameter,
    String message,
  ) {
    final FhirBase? b = _getParam(vars, parameter);
    if (b == null) {
      throw FHIRException(
        message: 'Unable to find a value for $parameter. Context: $message',
      );
    }
    if (b is! PrimitiveType) {
      throw FHIRException(
        message: 'Found a value for $parameter, but it has type ${b.fhirType} '
            'and cannot be treated as a string. Context: $message',
      );
    }
    if (b.value is! String) {
      throw FHIRException(
        message: 'Found a value for $parameter, but it has type ${b.fhirType} '
            'and cannot be treated as a string. Context: $message',
      );
    }
    return b.primitiveValue!;
  }

  String? _getParamString(
    Variables vars,
    StructureMapParameter parameter,
  ) {
    final FhirBase? b = _getParam(vars, parameter);
    if (b == null || b is! PrimitiveType || b.value is! String?) {
      return null;
    }
    return b.primitiveValue!;
  }

  FhirBase? _getParam(Variables vars, StructureMapParameter parameter) {
    final DataType p = parameter.valueX;
    if (p is! FhirId) {
      return p;
    } else {
      final String n = p.toString();
      FhirBase? b = vars.get(VariableMode.INPUT, n);
      b ??= vars.get(VariableMode.OUTPUT, n);
      if (b == null) {
        throw MappingDefinitionException(
          message: 'Variable $n not found (${vars.summary()})',
        );
      }
      return b;
    }
  }

  Future<FhirBase?> _translate(
    TransformContext context,
    StructureMap? map,
    Variables variables,
    List<StructureMapParameter> parameters,
  ) async {
    final sourceElement = _getParam(variables, parameters.first);
    final conceptMapUrl = _getParamStringGeneral(
      variables,
      parameters[1],
      map,
      throwIfNull: false,
    );
    final fieldToReturn = parameters.length > 2
        ? _getParamStringGeneral(
            variables,
            parameters[2],
            map,
            throwIfNull: false,
          )
        : 'code';

    try {
      return await _processConceptMapTranslation(
        sourceElement,
        conceptMapUrl,
        fieldToReturn,
        map,
      );
    } catch (e) {
      throw Exception('Error during translation for value $sourceElement: $e');
    }
  }

  Future<FhirBase?> _processConceptMapTranslation(
    FhirBase? sourceElement,
    String? conceptMapUrl,
    String? fieldToReturn,
    StructureMap? map,
  ) async {
    final sourceCoding = sourceElement == null
        ? null
        : sourceElement is PrimitiveType
            ? sourceElement.value
            : sourceElement.toJson()['coding'];

    final conceptMap = await _findConceptMap(conceptMapUrl, map);

    return conceptMap == null
        ? null
        : await _translateCoding(conceptMap, sourceCoding, fieldToReturn);
  }

  Future<FhirBase?> _translateCoding(
    ConceptMap conceptMap,
    dynamic sourceCoding,
    String? fieldToReturn,
  ) async {
    Coding? outcome;

    for (final group in conceptMap.group ?? <ConceptMapGroup>[]) {
      if (sourceCoding is String) {
        outcome = _findMatchInGroup(group, sourceCoding);
      } else if (sourceCoding is Coding) {
        outcome = _findMatchInGroup(
          group,
          sourceCoding.code?.value,
          sourceCoding.system?.toString(),
        );
      }
      if (outcome != null) break; // Stop if a match is found
    }

    if (outcome == null) {
      final errorSource = sourceCoding is String
          ? sourceCoding
          : (sourceCoding as Map<String, dynamic>)['code'];
      throw Exception('No translation found for $errorSource');
    }

    return fieldToReturn == 'code' ? outcome.code : outcome;
  }

  // Helper method to find a matching Coding in a ConceptMapGroup
  Coding? _findMatchInGroup(
    ConceptMapGroup group,
    String? code, [
    String? system,
  ]) {
    for (final element in group.element) {
      if ((system == null && element.code?.value == code) ||
          (system == group.source?.toString() && element.code?.value == code)) {
        final matchingTarget = element.target?.firstWhereOrNull(
          (target) => _isValidEquivalence(target.equivalence.toString()),
        );

        if (matchingTarget != null) {
          return Coding(
            system: group.target,
            code: matchingTarget.code,
          );
        }
      }
    }
    return null;
  }

  bool _isValidEquivalence(String? equivalence) {
    return equivalence == null ||
        ['equal', 'relatedto', 'equivalent', 'wider'].contains(equivalence);
  }

  Future<ConceptMap?> _findConceptMap(
    String? conceptMapUrl,
    StructureMap? map,
  ) async {
    if (conceptMapUrl == null) return null;

    if (conceptMapUrl.startsWith('#')) {
      return map?.contained?.firstWhereOrNull(
        (resource) =>
            resource is ConceptMap &&
            resource.id?.value == conceptMapUrl.substring(1),
      ) as ConceptMap?;
    }

    return resolver.fetchResource<ConceptMap>(conceptMapUrl);
  }

  String? _getParamStringGeneral(
    Variables variables,
    StructureMapParameter parameter,
    StructureMap? map, {
    required bool throwIfNull,
    String? contextMessage,
  }) {
    final paramValue = _getParam(variables, parameter);

    if (paramValue is PrimitiveType && paramValue.value != null) {
      return paramValue.value.toString();
    }

    if (paramValue is String || paramValue is int || paramValue is double) {
      return paramValue.toString();
    }

    if (throwIfNull) {
      throw FHIRException(
        message: 'Expected a non-null, string-compatible value for parameter '
            '"$parameter" in context: $contextMessage, but found '
            '${paramValue.runtimeType}',
      );
    }
    return null;
  }

  String _convertEscaping(String source, String fmt1, String fmt2) {
    // Implement the logic to convert from fmt1 to fmt2
    // For simplicity, here's a basic example handling 'xml' and 'json' escapes
    String unescaped;
    switch (fmt1.toLowerCase()) {
      case 'xml':
        unescaped = htmlEscape.convert(source);
      case 'json':
        unescaped = jsonDecode('"$source"') as String;
      default:
        unescaped = source;
    }

    String escaped;
    switch (fmt2.toLowerCase()) {
      case 'xml':
        escaped = htmlEscape.convert(unescaped);
      case 'json':
        escaped = jsonEncode(unescaped).replaceAll('"', '');
      default:
        escaped = unescaped;
    }

    return escaped;
  }

  FhirBase _castToInt(String value, String ruleId, String targetType) {
    try {
      final intValue = int.parse(value);
      return intValue.toFhirInteger;
    } catch (e) {
      final errorMessage = e is FormatException
          ? "Rule '$ruleId': Failed to cast '$value' to type "
              "'$targetType'. Invalid number format."
          : "Rule '$ruleId': Failed to cast '$value' to type "
              "'$targetType'. $e";
      throw FHIRMappingCastException(message: errorMessage);
    }
  }
}
