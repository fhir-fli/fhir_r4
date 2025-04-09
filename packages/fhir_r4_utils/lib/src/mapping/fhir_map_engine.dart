// ignore_for_file: public_member_api_docs, avoid_print, lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types, constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Coding,
        ConceptMap,
        ConceptMapGroup,
        DataType,
        FHIRException,
        FhirBase,
        FhirCanonical,
        FhirId,
        FhirNumber,
        FhirStringExtension,
        IssueSeverity,
        IssueType,
        OperationOutcome,
        OperationOutcomeIssue,
        Resource,
        StringExtensionForFHIR,
        StructureDefinition,
        StructureMap,
        StructureMapDependent,
        StructureMapGroup,
        StructureMapGroupTypeMode,
        StructureMapInputMode,
        StructureMapModelMode,
        StructureMapParameter,
        StructureMapRule,
        StructureMapSource,
        StructureMapStructure,
        StructureMapTarget,
        StructureMapTargetListMode,
        StructureMapTransform,
        ValueSet,
        ValueSetContains;
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:uuid/uuid.dart';

Future<FhirBase?> fhirMappingEngine(
  FhirBaseBuilder source,
  StructureMap map,
  ResourceCache cache,
  FhirBaseBuilder? target, [
  FhirBaseBuilder? Function(String)? extendedEmptyFromType,
]) async {
  final mapEngine = await FhirMapEngine.create(cache, map)
    ..extendedEmptyFromType = extendedEmptyFromType;
  final transform = await mapEngine.transformBuilder('', source, map, target);
  return transform;
}

class FhirMapEngine {
  FhirMapEngine._(ResourceCache cache, this.map)
      : resolver = DefinitionResolver(cache, map) {
    context = TransformationContext(resolver);
    services = FHIRPathHostServices();
  }

  static Future<FhirMapEngine> create(
    ResourceCache cache,
    StructureMap map,
  ) async {
    final engine = FhirMapEngine._(cache, map);
    engine.fpe = await FHIRPathEngine.create(WorkerContext(), engine.services);
    return engine;
  }

  final StructureMap map;
  final DefinitionResolver resolver;
  late final TransformationContext context;
  late final IEvaluationContext? services;
  FHIRPathEngine? fpe;
  int rules = 0;
  FhirBaseBuilder? Function(String)? extendedEmptyFromType;

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
    return transformBuilder(
      appInfo,
      source.toBuilder,
      map,
      target?.toBuilder,
    );
  }

  /// Main transform method
  Future<FhirBase> transformBuilder(
    Object appInfo,
    FhirBaseBuilder sourceBuilder,
    StructureMap map,
    FhirBaseBuilder? targetBuilder,
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

    final vars = MappingVariables()
      ..add(MappingVariableMode.INPUT, inputName, sourceBuilder);
    final String? targetName =
        _getInputName(g, StructureMapInputMode.target, 'target');
    if (targetName != null) {
      if (targetBuilder != null) {
        vars.add(MappingVariableMode.OUTPUT, targetName, targetBuilder);
      } else {
        final type = _getInputType(g, StructureMapInputMode.target);
        if (type != null) {
          final newTarget = emptyFromType(type);
          if (newTarget != null) {
            vars.add(MappingVariableMode.OUTPUT, targetName, newTarget);
          } else {
            throw FHIRException(
              message: 'Unable to create target of type $type',
            );
          }
        } else {
          throw FHIRException(
            message: 'Not handled yet: creating a type of $type',
          );
        }
      }
    } else {
      throw FHIRException(message: 'No target name found');
    }

    try {
      await _executeGroup('', context, map, vars, g, true);
      final result = vars.getOutputVar(targetName);

      if (result == null) {
        throw FHIRException(message: 'No output found');
      } else {
        return result.build();
      }
    } catch (e, s) {
      return e is FHIRException
          ? _createOutcome(e.message ?? e.toString(), s.toString())
          : _createOutcome(e.toString(), s.toString());
    }
  }

  OperationOutcome _createOutcome(String message, String stack) {
    return OperationOutcome(
      issue: [
        OperationOutcomeIssue(
          severity: IssueSeverity.error,
          code: IssueType.processing,
          diagnostics: message.toFhirString,
        ),
      ],
    );
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
          type = inp.type?.valueString;
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
          name = inp.name.valueString;
        }
      }
    }
    return name ?? def;
  }

  Future<void> _executeGroup(
    String indent,
    TransformContext context,
    StructureMap? map,
    MappingVariables vars,
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
    MappingVariables vars,
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
    final source = await _processSource(
      rule.name.toString(),
      context,
      srcVars,
      rule.source.first,
      map?.url.toString(),
      indent,
    );

    for (final MappingVariables v in source ?? <MappingVariables>[]) {
      for (final target in rule.target ?? <StructureMapTarget>[]) {
        await _processTarget(
          rule.name.toString(),
          context,
          v,
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
            v,
            group,
            childrule,
            false,
          );
        }
      } else if (rule.dependent?.isNotEmpty ?? false) {
        for (final dependent in rule.dependent ?? <StructureMapDependent>[]) {
          await _executeDependency(
            '$indent  ',
            context,
            map,
            v,
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
        final FhirBaseBuilder? src = v.get(
          MappingVariableMode.INPUT,
          rule.source.first.variable?.valueString,
        );
        final FhirBaseBuilder? tgt = v.get(
          MappingVariableMode.OUTPUT,
          rule.target?.firstOrNull?.variable?.valueString,
        );
        if (src == null || tgt == null) {
          continue;
        }

        final String srcType = src.fhirType;
        final String tgtType = tgt.fhirType;
        final ResolvedGroup defGroup = await _resolveGroupByTypes(
          map,
          rule.name.valueString ?? '',
          group,
          srcType,
          tgtType,
        );
        final MappingVariables vdef = MappingVariables();
        final inputName = defGroup.target!.input[0].name.valueString;
        if (inputName == null) {
          throw MappingDefinitionException(message: 'No input name found');
        }
        final targetName = defGroup.target!.input[1].name.valueString;
        if (targetName == null) {
          throw MappingDefinitionException(message: 'No target name found');
        }
        vdef
          ..add(MappingVariableMode.INPUT, inputName, src)
          ..add(MappingVariableMode.OUTPUT, targetName, tgt);
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

  Future<void> _executeDependency(
    String indent,
    TransformContext context,
    StructureMap? map,
    MappingVariables vin,
    StructureMapGroup? group,
    StructureMapDependent dependent,
  ) async {
    final rg = _resolveGroupReference(map, group, dependent.name.valueString!);

    if (rg.target!.input.length != dependent.variable.length) {
      throw FHIRException(
        message: "Rule '${dependent.name}' has ${rg.target!.input.length} but "
            'the invocation has ${dependent.variable.length} variables',
      );
    }
    final MappingVariables v = MappingVariables();
    for (int i = 0; i < rg.target!.input.length; i++) {
      final input = rg.target!.input[i];
      final varVal = dependent.variable[i].valueString;
      final mode = input.mode == StructureMapInputMode.source
          ? MappingVariableMode.INPUT
          : MappingVariableMode.OUTPUT;
      var vv = varVal == null ? null : vin.get(mode, varVal);
      if (vv == null && mode == MappingVariableMode.INPUT) {
        vv = vin.get(MappingVariableMode.OUTPUT, varVal);
      }
      if (vv == null) {
        throw FHIRException(
          message: "Rule '${dependent.name}' $mode variable '${input.name}' "
              "named '$varVal' has no value (vars = ${vin.summary()})",
        );
      }
      v.add(mode, input.name.toString(), vv);
    }
    await _executeGroup(
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
    FhirBaseBuilder fhirBase,
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
        res.target!.input.first.type?.valueString ?? '',
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
      res.target!.input.first.type?.valueString ?? '',
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
        grp.typeMode != StructureMapGroupTypeMode.typeAndTypes) {
      return false;
    }
    if (grp.input.length != 2 ||
        grp.input.first.mode != StructureMapInputMode.source ||
        grp.input[1].mode != StructureMapInputMode.target) {
      return false;
    }
    if (tgtType == null) {
      return _matchesType(
        map,
        srcType,
        grp.input.first.type?.valueString ?? '',
      );
    }
    if (grp.input.first.type == null || grp.input[1].type == null) {
      return false;
    }
    return await _matchesType(
          map,
          srcType,
          grp.input.first.type?.valueString ?? '',
        ) &&
        await _matchesType(map, tgtType, grp.input[1].type?.valueString ?? '');
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
      if (imp.alias != null && newStatedType == imp.alias!.valueString) {
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
      if (imp.alias != null && statedType == imp.alias?.valueString) {
        final sd = await resolver
            .fetchResource<StructureDefinition>(imp.url.toString());
        if (sd == null) {
          throw FHIRException(
            message: 'Unable to resolve structure ${imp.url}',
          );
        }
        // Should be sd.type, but R2 example used sd.id
        return sd.id?.valueString ?? statedType;
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
      if (grp.name.valueString == name) {
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
            if (grp.name.valueString == name) {
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

  Future<List<MappingVariables>?> _processSource(
    String ruleId,
    TransformContext context,
    MappingVariables vars,
    StructureMapSource src,
    String? pathForErrors,
    String indent,
  ) async {
    final List<FhirBaseBuilder> items = <FhirBaseBuilder>[];
    if (src.context.valueString == '@search') {
      // Evaluate an expression, then do a search
      ExpressionNode? expr =
          src.getUserData(MAP_SEARCH_EXPRESSION) as ExpressionNode?;
      if (expr == null) {
        expr = fpe?.parse(src.element?.valueString ?? '');
        src.setUserData(MAP_SEARCH_EXPRESSION, expr);
      }
      // TODO(Dokotela): implement services
      // final String search =
      //     fpe.evaluateToString(vars, null, null, ''.toFhirString, expr);

      // items = services.performSearch(context.appInfo, search);
      throw FHIRException(message: 'Search not implemented');
    } else {
      final FhirBaseBuilder? b =
          vars.get(MappingVariableMode.INPUT, src.context.valueString);

      if (b == null) {
        throw FHIRException(
          message: 'Unknown input variable ${src.context} in $pathForErrors '
              'rule $ruleId (vars = ${vars.summary()})',
        );
      }

      if (src.element == null) {
        items.add(b);
      } else {
        await _getChildrenByName(b, src.element?.valueString ?? '', items);

        if (items.isEmpty && src.defaultValueX != null) {
          items.add(src.defaultValueX!.toBuilder);
        }
      }
    }

    if (src.type != null) {
      items.removeWhere((item) => !_isType(item, src.type!.valueString!));
    }

    if (src.condition != null) {
      ExpressionNode? expr =
          src.getUserData(MAP_WHERE_EXPRESSION) as ExpressionNode?;
      if (expr == null) {
        expr = fpe?.parse(src.condition?.valueString ?? '');
        src.setUserData(MAP_WHERE_EXPRESSION, expr);
      }

      final List<FhirBaseBuilder> remove = <FhirBaseBuilder>[];
      for (final item in items) {
        final MappingVariables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(
            MappingVariableMode.INPUT,
            src.variable!.valueString!,
            item,
          );
        }
        final srcBase =
            vars.get(MappingVariableMode.INPUT, src.context.valueString);
        final children = srcBase?.listChildrenNames();
        for (final child in children ?? <String>[]) {
          final varBase = vars.get(MappingVariableMode.INPUT, child);
          if (varBase == null) {
            final childItem = srcBase!.getChildrenByName(child);

            if (childItem.length == 1) {
              varsForSource.add(
                MappingVariableMode.INPUT,
                child,
                childItem.first,
              );
            }
          }
        }

        final bool passed = await fpe?.evaluateToBoolean(
              varsForSource,
              null,
              null,
              item.build(),
              expr!,
            ) ??
            false;

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
        expr = fpe?.parse(src.check?.valueString ?? '');
        src.setUserData(MAP_WHERE_CHECK, expr);
      }
      for (final item in items) {
        final MappingVariables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(
            MappingVariableMode.INPUT,
            src.variable!.valueString!,
            item,
          );
        }
        final srcBase =
            vars.get(MappingVariableMode.INPUT, src.context.valueString);
        final children = srcBase?.listChildrenNames();
        for (final child in children ?? <String>[]) {
          final varBase = vars.get(MappingVariableMode.INPUT, child);
          if (varBase == null) {
            final childItem = srcBase!.getChildrenByName(child);

            if (childItem.length == 1) {
              varsForSource.add(
                MappingVariableMode.INPUT,
                child,
                childItem.first,
              );
            }
          }
        }
        final bool passed = await fpe?.evaluateToBoolean(
              varsForSource,
              null,
              null,
              item.build(),
              expr!,
            ) ??
            false;
        if (!passed) {
          throw FHIRException(
            message: "Rule '$ruleId', Check condition failed, $expr",
          );
        }
      }
    }

    if (src.logMessage != null) {
      ExpressionNode? expr = src.getUserData(MAP_WHERE_LOG) as ExpressionNode?;
      if (expr == null) {
        expr = fpe?.parse(src.logMessage!.valueString!);
        src.setUserData(MAP_WHERE_LOG, expr);
      }
      final List<String> logs = <String>[];
      for (final item in items) {
        final MappingVariables varsForSource = vars.copy();
        if (src.variable != null) {
          varsForSource.add(
            MappingVariableMode.INPUT,
            src.variable!.valueString!,
            item,
          );
        }
        logs.add(
          (await fpe?.evaluateToString(
                varsForSource,
                null,
                null,
                item.build(),
                expr!,
              )) ??
              '',
        );
      }
      // TODO(Dokotela): implement services
      // if (logs.isNotEmpty && services != null) {
      //   services!.log(logs.join(', '));
      // }
    }

    if (src.listMode != null && items.isNotEmpty) {
      switch (src.listMode?.valueString) {
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

    final List<MappingVariables> result = <MappingVariables>[];
    for (final r in items) {
      final MappingVariables v = vars.copy();
      if (src.variable != null) {
        v.add(MappingVariableMode.INPUT, src.variable!.valueString!, r);
      }
      result.add(v);
    }
    return result;
  }

  bool _isType(FhirBaseBuilder item, String type) {
    return type == item.fhirType;
  }

  Future<void> _getChildrenByName(
    FhirBaseBuilder parentNode,
    String? elementName,
    List<FhirBaseBuilder> resultItems,
  ) async {
    if (elementName != null) {
      final children = parentNode.getChildrenByName(elementName);
      resultItems.addAll(children);
    }
  }

  Future<void> _processTarget(
    String rulePath,
    TransformContext context,
    MappingVariables vars,
    StructureMap? map,
    StructureMapGroup? group,
    StructureMapTarget tgt,
    String? srcVar,
    bool atRoot,
    MappingVariables sharedVars,
  ) async {
    FhirBaseBuilder? dest;
    if (tgt.context != null) {
      dest = vars.get(MappingVariableMode.OUTPUT, tgt.context!.valueString);
      if (dest == null) {
        throw FHIRException(
          message: 'Rule "$rulePath": target context not known: ${tgt.context}',
        );
      }
      if (tgt.element == null) {
        throw FHIRException(message: 'Rule "$rulePath": Not supported yet');
      }
    }
    FhirBaseBuilder? v;

    if (tgt.transform != null) {
      v = await _runTransform(
        rulePath,
        context,
        map,
        group,
        tgt,
        vars,
        dest,
        tgt.element?.valueString ?? '',
        srcVar,
        atRoot,
      );

      if (v != null && dest != null) {
        try {
          dest.setChildByName(tgt.element!.valueString!, v);
        } catch (e) {
          throw FHIRException(
            message: 'Error setting ${tgt.element} on ${dest.fhirType} '
                'for rule $rulePath to value $v: $e',
          );
        }
      }
    } else if (dest != null) {
      if (tgt.listMode?.contains(StructureMapTargetListMode.share) ?? false) {
        v = sharedVars.get(
          MappingVariableMode.SHARED,
          tgt.listRuleId?.valueString,
        );
        if (v == null) {
          final types = dest.typeByElementName(tgt.element!.valueString!);
          if (types.isNotEmpty) {
            v = _typeFactory(types.first);
            dest.setChildByName(tgt.element!.valueString!, v);
          }
          if (tgt.listRuleId != null && v != null) {
            sharedVars.add(
              MappingVariableMode.SHARED,
              tgt.listRuleId!.valueString!,
              v,
            );
          }
        }
      } else {
        final types = dest.typeByElementName(tgt.element!.valueString!);
        if (types.isNotEmpty) {
          v = _typeFactory(types.first);
          dest.setChildByName(tgt.element!.valueString!, v);
        }
      }
    }

    if (tgt.variable != null && v != null) {
      vars.add(MappingVariableMode.OUTPUT, tgt.variable!.valueString!, v);
    }
  }

  Future<FhirBaseBuilder?> _runTransform(
    String rulePath,
    TransformContext context,
    StructureMap? map,
    StructureMapGroup? group,
    StructureMapTarget tgt,
    MappingVariables vars,
    FhirBaseBuilder? dest,
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
                final FhirBaseBuilder? srcObj =
                    vars.get(MappingVariableMode.INPUT, srcVar);
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
                    tn == uses.alias!.valueString) {
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

            final createdObject = _typeFactory(tn);
            if (createdObject is ResourceBuilder &&
                createdObject.fhirType != 'Parameters') {
              createdObject.id = const Uuid().v4().toFhirStringBuilder;
            }
            return createdObject;

            // TODO(Dokotela): implement services
            // FhirBase res;

            // if (services != null) {
            //   res = services!.createType(context.appInfo, tn, profileUtilities);
            // } else {
            // res = _typeFactory(tn);
            // }
            // if (res is Resource && res.fhirType != 'Parameters') {
            //   if (services != null) {
            //     res =
            //         services!.createResource(context.appInfo, res, root) ?? res;
            //   }
            // }
            // return res;
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
              expr = fpe?.parse(
                _getParamStringNoNull(
                  vars,
                  tgt.parameter!.last,
                  tgt.toString(),
                ),
              );
              tgt.setUserData(MAP_EXPRESSION, expr);
            }
            final FhirBaseBuilder test = tgt.parameter?.length == 2
                ? (_getParam(vars, tgt.parameter!.first) ??
                    false.toFhirBooleanBuilder)
                : false.toFhirBooleanBuilder;
            final List<FhirBase> v = expr == null
                ? <FhirBase>[]
                : (await fpe?.evaluateWithContext(
                      vars,
                      null,
                      null,
                      test.build(),
                      expr,
                    )) ??
                    <FhirBase>[];
            if (v.isEmpty) {
              return null;
            } else if (v.length != 1) {
              throw FHIRException(
                message: 'Rule "$rulePath": '
                    'Evaluation of $expr returned ${v.length} objects',
              );
            } else {
              return v.first.toBuilder;
            }
          }

        case 'truncate':
          {
            if (tgt.parameter?.length == 2) {
              String src = _getParamString(vars, tgt.parameter![0]) ?? '';
              if (tgt.parameter![1].value is FhirNumber) {
                final int? l =
                    (tgt.parameter![1].value! as FhirNumber).valueNum?.toInt();
                if (l == null) {
                  throw FHIRException(
                    message: 'Rule "$rulePath": Transform TRUNCATE requires a '
                        'number as the second parameter',
                  );
                }
                if (src.length > l) {
                  src = src.substring(0, l);
                }
                return src.toFhirStringBuilder;
              } else {
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
                return src.toFhirStringBuilder;
              }
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

            if (sourceNode is! PrimitiveTypeBuilder ||
                !sourceNode.stringBased ||
                sourceNode.valueString == null) {
              throw FHIRException(
                message: 'Source for escape must be a string primitive with '
                    'a valid string value',
              );
            }

            final sourceString = sourceNode.valueString;
            String resultString;

            // Handle escaping transformations between formats
            resultString = _convertEscaping(sourceString!, fmt1, fmt2);

            return resultString.toFhirStringBuilder;
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
                  return src.toFhirStringBuilder;

                case 'integer':
                case 'fhirinteger':
                case 'fhir.integer':
                  return _castToInt(src, rulePath, t);

                case 'boolean':
                case 'fhirboolean':
                case 'fhir.boolean':
                  return (src.toLowerCase() == 'true').toFhirBooleanBuilder;

                case 'decimal':
                case 'fhirdecimal':
                case 'fhir.decimal':
                  return double.parse(src).toFhirDecimalBuilder;

                case 'date':
                case 'fhirdate':
                case 'fhir.date':
                  return src.toFhirDateBuilder;

                case 'datetime':
                case 'fhirdatetime':
                case 'fhir.datetime':
                  return src.toFhirDateTimeBuilder;

                case 'time':
                case 'fhirtime':
                case 'fhir.time':
                  return src.toFhirTimeBuilder;

                case 'instant':
                case 'fhirinstant':
                case 'fhir.instant':
                  return src.toFhirInstantBuilder;

                case 'uri':
                case 'fhiruri':
                case 'fhir.uri':
                  return src.toFhirUriBuilder;

                case 'oid':
                case 'fhiroid':
                case 'fhir.oid':
                  return src.toFhirOidBuilder;

                case 'id':
                case 'fhirid':
                case 'fhir.id':
                  return src.toFhirIdBuilder;

                case 'base64binary':
                case 'fhirbase64binary':
                case 'fhir.base64binary':
                  return src.toFhirBase64BinaryBuilder;

                case 'code':
                case 'fhircode':
                case 'fhir.code':
                case 'fhircodeenum':
                  return src.toFhirCodeBuilder;

                case 'canonical':
                case 'fhircanonical':
                case 'fhir.canonical':
                  return src.toFhirCanonicalBuilder;

                case 'url':
                case 'fhirurl':
                case 'fhir.url':
                  return src.toFhirUrlBuilder;

                case 'unsignedint':
                case 'fhirunsignedint':
                case 'fhir.unsignedint':
                  return int.parse(src).toFhirUnsignedIntBuilder;

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
                  return intValue.toFhirPositiveIntBuilder;

                case 'markdown':
                case 'fhirmarkdown':
                case 'fhir.markdown':
                  return src.toFhirMarkdownBuilder;

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
            return sb.toString().toFhirStringBuilder;
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
            final FhirBaseBuilder? b = _getParam(vars, tgt.parameter!.first);
            if (b == null) {
              throw FHIRException(
                message: 'Rule "$rulePath": Unable to find parameter '
                    '${tgt.parameter!.first.valueId?.valueString}',
              );
            }
            if (b is! ResourceBuilder) {
              throw FHIRException(
                message:
                    'Rule "$rulePath": Transform engine cannot point at an '
                    'element of type ${b.fhirType}',
              );
            } else {
              return b.path.toFhirStringBuilder;
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

            if (sourceNode is! PrimitiveTypeBuilder ||
                !sourceNode.stringBased ||
                sourceNode.valueString == null) {
              throw FHIRException(
                message: 'Source for dateOp must be a string LeafNode '
                    'representing a date',
              );
            }

            final sourceDateStr = sourceNode.valueString!;
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

            return resultDate.toIso8601String().toFhirStringBuilder;
          }

        case 'uuid':
          {
            return const Uuid().v4().toFhirIdBuilder;
          }

        case 'pointer':
          {
            if (tgt.parameter?.isEmpty ?? true) {
              throw FHIRException(
                message: 'Pointer transform requires a source parameter',
              );
            }
            final FhirBaseBuilder? b = _getParam(vars, tgt.parameter!.first);
            if (b is ResourceBuilder) {
              return 'urn:uuid:${b.id}'.toFhirUriBuilder;
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
            if ((tgt.parameter?.length ?? 0) < 2) {
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
            final CodingBuilder c = await _buildCoding(uri, code);
            return CodeableConceptBuilder(coding: [c]);
          }

        case 'c':
          {
            if ((tgt.parameter?.length ?? 0) < 2) {
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
      throw e is FHIRException
          ? e
          : FHIRException(
              message: 'Exception executing transform ${tgt.toJson()} on Rule '
                  '"$rulePath": $e',
              cause: e is Exception ? e : null,
            );
    }
  }

  FhirBaseBuilder _typeFactory(String tn) {
    FhirBaseBuilder? newObject;
    if (extendedEmptyFromType != null) {
      newObject = extendedEmptyFromType!(tn);
      if (newObject != null) {
        return newObject;
      }
    }

    newObject = emptyFromType(tn);
    if (newObject != null) {
      return newObject;
    }

    // TODO(Dokotela): think about how much more robust this should be
    if (tn.contains('StructureDefinition/')) {
      final String type = tn.split('StructureDefinition/').last;
      if (type.isNotEmpty) {
        newObject = emptyFromType(type);
        if (newObject != null) {
          return newObject;
        }
      }
    }
    throw FHIRException(message: 'Unable to create object of type $tn');
  }

  Future<CodingBuilder> _buildCoding(String uri, String code) async {
    String? system;
    String? display;
    String? version;
    if (uri.isEmpty) {
      // no system
      system = null;
    } else {
      final ValueSet? vs = await resolver.fetchResource<ValueSet>(uri);
      if (vs != null) {
        final ValueSetExpansionOutcome vse = resolver.expandVS(vs);
        if (vse.error != null) {
          throw FHIRException(message: vse.error);
        }
        final List<ValueSetContains>? expanded =
            vse.valueSet?.expansion?.contains;
        bool found = false;
        for (final ValueSetContains t in expanded ?? <ValueSetContains>[]) {
          if (t.code?.valueString != null) {
            if (t.code!.valueString == code) {
              system = t.system?.toString();
              version = t.version?.toString();
              display = t.display?.toString();
              found = true;
              break;
            } else if (code.toLowerCase() ==
                (t.display?.valueString ?? '').toLowerCase()) {
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
      } else {
        system ??= uri;
      }
    }
    final ValidationResult? vr = await resolver.validateCode(
      ValidationOptions().withVersionFlexible(true),
      system,
      version,
      code,
      null,
    );
    if (vr?.display != null) {
      display = vr!.display;
    }
    return CodingBuilder(
      system: system?.toFhirUriBuilder,
      code: code.toFhirCodeBuilder,
      display: display?.toFhirStringBuilder,
      version: version?.toFhirStringBuilder,
    );
  }

  String _getParamStringNoNull(
    MappingVariables vars,
    StructureMapParameter parameter,
    String message,
  ) {
    final FhirBaseBuilder? b = _getParam(vars, parameter);

    if (b == null) {
      throw FHIRException(
        message: 'Unable to find a value for $parameter. Context: $message',
      );
    }
    if (b is! PrimitiveTypeBuilder) {
      throw FHIRException(
        message: 'Found a value for ${parameter.toJson()}, but it has type '
            '${b.fhirType} and cannot be treated as a string. '
            'Context: $message',
      );
    }
    if (b is FhirNumberBuilder ||
        b is FhirDateTimeBaseBuilder ||
        b is FhirBooleanBuilder) {
      throw FHIRException(
        message: 'Found a value for ${parameter.toJson()}, but it has type '
            '${b.fhirType} and cannot be treated as a string. '
            'Context: $message',
      );
    }
    return b.primitiveValue!;
  }

  String? _getParamString(
    MappingVariables vars,
    StructureMapParameter parameter,
  ) {
    final FhirBaseBuilder? b = _getParam(vars, parameter);

    if (b == null || b is! PrimitiveTypeBuilder || !b.stringBased) {
      return null;
    }
    return b.primitiveValue!;
  }

  FhirBaseBuilder? _getParam(
    MappingVariables vars,
    StructureMapParameter parameter,
  ) {
    final DataType p = parameter.valueX;

    if (p is! FhirId) {
      return p.toBuilder;
    } else {
      final String n = p.toString();

      FhirBaseBuilder? b = vars.get(MappingVariableMode.INPUT, n);
      b ??= vars.get(MappingVariableMode.OUTPUT, n);
      if (b == null) {
        throw MappingDefinitionException(
          message: 'MappingVariable $n not found (${vars.summary()})',
        );
      }
      return b;
    }
  }

  Future<FhirBaseBuilder?> _translate(
    TransformContext context,
    StructureMap? map,
    MappingVariables variables,
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

  Future<FhirBaseBuilder?> _processConceptMapTranslation(
    FhirBaseBuilder? sourceElement,
    String? conceptMapUrl,
    String? fieldToReturn,
    StructureMap? map,
  ) async {
    final sourceCoding = sourceElement == null
        ? null
        : sourceElement is PrimitiveTypeBuilder
            ? sourceElement.valueString
            : sourceElement.toJson()['coding'];

    final conceptMap = await _findConceptMap(conceptMapUrl, map);

    return conceptMap == null
        ? null
        : await _translateCoding(conceptMap, sourceCoding, fieldToReturn);
  }

  Future<FhirBaseBuilder?> _translateCoding(
    ConceptMap conceptMap,
    dynamic sourceCoding,
    String? fieldToReturn,
  ) async {
    CodingBuilder? outcome;

    for (final group in conceptMap.group ?? <ConceptMapGroup>[]) {
      if (sourceCoding is String) {
        outcome = _findMatchInGroup(group, sourceCoding);
      } else if (sourceCoding is Coding) {
        outcome = _findMatchInGroup(
          group,
          sourceCoding.code?.valueString,
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
  CodingBuilder? _findMatchInGroup(
    ConceptMapGroup group,
    String? code, [
    String? system,
  ]) {
    for (final element in group.element) {
      if ((system == null && element.code?.valueString == code) ||
          (system == group.source?.toString() &&
              element.code?.valueString == code)) {
        final matchingTarget = element.target?.firstWhereOrNull(
          (target) => _isValidEquivalence(target.equivalence.toString()),
        );

        if (matchingTarget != null) {
          return CodingBuilder(
            system: group.target?.toBuilder as FhirUriBuilder?,
            code: matchingTarget.code?.toBuilder as FhirCodeBuilder?,
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
            resource.id?.valueString == conceptMapUrl.substring(1),
      ) as ConceptMap?;
    }

    return resolver.fetchResource<ConceptMap>(conceptMapUrl);
  }

  String? _getParamStringGeneral(
    MappingVariables variables,
    StructureMapParameter parameter,
    StructureMap? map, {
    required bool throwIfNull,
    String? contextMessage,
  }) {
    final paramValue = _getParam(variables, parameter);

    if (paramValue is PrimitiveTypeBuilder && paramValue.valueString != null) {
      return paramValue.valueString;
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

  FhirBaseBuilder _castToInt(String value, String ruleId, String targetType) {
    try {
      final intValue = int.parse(value);
      return intValue.toFhirIntegerBuilder;
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
