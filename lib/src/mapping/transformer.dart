import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:uuid/uuid.dart';

// Logging function with control for verbosity
void _log(String message, [bool shouldPrint = false, String level = 'INFO']) {
  if (shouldPrint) print('[$level] $message');
}

class Transformer {
  Transformer(this.map, this.context, this.resolver);
  final StructureMap map;
  final TransformationContext context;
  final DefinitionResolver resolver;
  final FHIRPathEngine fhirPathEngine = FHIRPathEngine(WorkerContext());

// runTransform no longer handles create logic directly
  Future<ElementNode?> runTransform(
    String ruleId,
    StructureMapGroup? group,
    StructureMapTarget target,
    Variables vars,
    ElementNode? dest,
    String elementName,
    String? srcVar,
    // ignore: avoid_positional_boolean_parameters
    bool atRoot,
  ) async {
    switch (target.transform?.toString()) {
      case 'create':

        // Delegate to _create
        return _create(
          target,
          vars,
          dest,
          elementName,
          ruleId,
          srcVar,
          group,
        );

      case 'copy':
        return _copy(vars, target.parameter!.first);

      case 'truncate':
        return _truncate(vars, target);

      case 'cast':
        return _cast(
          _getParam(vars, target.parameter!.first),
          target.parameter!.last.valueX.toString(),
          ruleId,
        );

      case 'append':
        return _append(target, vars, map);

      case 'translate':
        return _translate(map, vars, target.parameter!);

      case 'reference':
        return _reference(ruleId, target, vars, map);

      case 'pointer':
        return _pointer(ruleId, target, vars, map);

      case 'uuid':
        return _uuid();

      case 'cc':
        return _codeableConcept(ruleId, target, vars, map);
      case 'c':
        return _coding(ruleId, target, vars, map);

      case 'escape':
        return _escape(vars, target);

      case 'dateOp':
        return _dateOp(vars, target);

      case 'evaluate':
        return _evaluate(vars, target, dest);

      case 'qty':
        return _quantity(vars, target);

      case 'id':
        return _identifier(vars, target);

      case 'cp':
        return _contactPoint(vars, target);

      default:
        throw Exception('Unknown transform: ${target.transform}');
    }
  }

  Future<ElementNode> _create(
    StructureMapTarget target,
    Variables vars,
    ElementNode? parent,
    String elementName,
    String ruleId,
    String? srcVar,
    StructureMapGroup? group,
  ) async {
    final typeName = await _determineTypeName(
      target,
      vars,
      parent,
      elementName,
      ruleId,
      srcVar,
      group,
    );

    return _instantiateElement(typeName, elementName, parent, target);
  }

  Future<String> _determineTypeName(
    StructureMapTarget target,
    Variables vars,
    ElementNode? parent,
    String elementName,
    String ruleId,
    String? srcVar,
    StructureMapGroup? group,
  ) async {
    if (target.parameter == null || target.parameter!.isEmpty) {
      final possibleTypes =
          await resolver.typesForElement(parent?.pathForResolver(elementName));
      return _inferTypeFromSource(
        map,
        group,
        vars,
        srcVar,
        possibleTypes,
        elementName,
      );
    } else {
      final requestedType = _getParamStringGeneral(
        vars,
        target.parameter!.first,
        map,
        throwIfNull: true,
        contextMessage: target.toString(),
      );
      return _getActualType(map, requestedType!);
    }
  }

  Future<String> _inferTypeFromSource(
    StructureMap map,
    StructureMapGroup? group,
    Variables vars,
    String? srcVar,
    List<String> possibleTypes,
    String elementName,
  ) async {
    if (possibleTypes.length == 1 &&
        possibleTypes.first != '*' &&
        possibleTypes.first != 'Resource') {
      return possibleTypes.first;
    } else if (srcVar != null) {
      return _determineTypeFromSourceType(
        map,
        group,
        vars.getInputVar(srcVar) ??
            (throw Exception('Input variable $srcVar not found')),
        possibleTypes,
      );
    }
    throw Exception(
      'Cannot determine type implicitly for element: $elementName',
    );
  }

  Future<ElementNode> _instantiateElement(
    String typeName,
    String elementName,
    ElementNode? parent,
    StructureMapTarget target,
  ) async {
    final isPrimitive = typeName.isFhirPrimitive;
    final isResource = typeName.isFhirResourceType;

    if (isPrimitive) {
      return ElementNode.newNode<LeafNode>(elementName, parent);
    } else if (isResource) {
      return _createResourceNode(elementName, typeName, parent, target);
    }

    final newLocation =
        parent == null ? elementName : '${parent.location ?? ''}.$elementName';
    return MapNode(elementName, newLocation, typeName, []);
  }

  Future<MapNode> _createResourceNode(
    String elementName,
    String typeName,
    ElementNode? parent,
    StructureMapTarget target,
  ) async {
    final resourceType = _getResourceTypeFromMapOrTarget(target, typeName);
    final resourceId = _generateId();
    final res = MapNode(elementName, parent?.location, typeName, []);

    if (resourceType != null) {
      return MapNode.fromMapAsync(
        null,
        res.location,
        resourceType,
        {
          'resourceType': resourceType,
          'id': resourceId,
        },
        resolver,
      );
    }

    return res;
  }

  String? _getResourceTypeFromMapOrTarget(
    StructureMapTarget target,
    String inferredType,
  ) {
    // Check if the resourceType is specified directly in the target parameters
    if (target.parameter != null && target.parameter!.isNotEmpty) {
      final paramValue = target.parameter!.first.valueX is FhirString
          ? (target.parameter!.first.valueX as FhirString).value
          : null;
      if (paramValue != null && paramValue.isFhirResourceType) {
        return paramValue;
      }
    }

    // Fallback to using the inferred type if it qualifies as a resource type
    return inferredType.isFhirResourceType ? inferredType : null;
  }

  String _generateId() => const Uuid().v4();

  Future<String> _determineTypeFromSourceType(
    StructureMap map,
    StructureMapGroup? group,
    ElementNode baseNode,
    List<String> possibleTypes,
  ) async {
    final baseType = (await baseNode.getInstanceType(resolver)) ?? '';
    final cacheKey = 'type^$baseType';

    // Check for a cached result
    if (group?.hasUserData(cacheKey) ?? false) {
      return group!.getUserData(cacheKey) as String;
    }

    ResolvedGroup? matchedGroup;

    // Iterate over all groups in the map to find matching source/target types
    for (final grp in map.group) {
      final targetType = grp.input.length > 1 ? grp.input[1].type?.value : null;

      if (await resolver.matchesByType(map, grp, baseType, targetType)) {
        if (matchedGroup == null) {
          matchedGroup = ResolvedGroup(grp, map);
        } else {
          throw Exception(
            "Multiple matching groups found for type '$baseType'.",
          );
        }
      }
    }

    // If no match is found in the main map, search imported maps
    matchedGroup ??= await _findMatchingGroupInImports(map, baseType);

    if (matchedGroup == null || matchedGroup.target == null) {
      throw Exception("No default rule match found for '$baseType'.");
    }

    // Cache the result and return the determined type
    final finalType = _getActualType(
      matchedGroup.targetMap,
      matchedGroup.target!.input[1].type.toString(),
    );
    group?.setUserData(cacheKey, finalType);

    return finalType;
  }

  // Helper function to find matching groups in imported maps
  Future<ResolvedGroup?> _findMatchingGroupInImports(
    StructureMap map,
    String baseType,
  ) async {
    for (final importElement in map.import_ ?? <FhirCanonical>[]) {
      final importedMap = await resolver
          .fetchResource<StructureMap>(importElement.value?.toString() ?? '');

      if (importedMap?.url != map.url) {
        for (final grp in importedMap!.group) {
          final targetType =
              grp.input.length > 1 ? grp.input[1].type?.value : null;
          if (await resolver.matchesByType(
            importedMap,
            grp,
            baseType,
            targetType,
          )) {
            return ResolvedGroup(grp, importedMap);
          }
        }
      }
    }
    return null;
  }

  Future<ElementNode> _copy(
    Variables vars,
    StructureMapParameter parameter,
  ) async {
    final param = parameter.valueX;
    final type = param.fhirType;
    final dynamic paramValue = (param as PrimitiveType).value;

    if (paramValue is! String) {
      return paramValue is Map
          ? await MapNode.fromMapAsync(
              null,
              null,
              null,
              Map<String, dynamic>.from(paramValue),
              resolver,
            )
          : LeafNode.withCast(null, null, null, paramValue, type);
    }

    return vars.getInputVar(paramValue) ??
        vars.getOutputVar(paramValue) ??
        LeafNode.withCast(null, null, null, paramValue, type);
  }

  LeafNode? _truncate(Variables variables, StructureMapTarget target) {
    if (target.parameter == null || target.parameter!.length < 2) {
      throw FHIRException(
        message: 'Truncate transform requires a source and a length parameter',
      );
    }

    final sourceNode = _getParam(variables, target.parameter!.first);
    final lengthNode = _getParam(variables, target.parameter![1]);

    if (sourceNode is! LeafNode || sourceNode.value is! String) {
      throw FHIRException(
        message: 'Source for truncate must be a string LeafNode',
      );
    }

    final length = _parseLength(lengthNode);
    final stringValue = sourceNode.value as String;

    if (length != null && length < stringValue.length) {
      return LeafNode(
        null,
        null,
        null,
        stringValue.substring(0, length),
        'string',
      );
    }

    return sourceNode;
  }

  int? _parseLength(ElementNode lengthNode) {
    if (lengthNode is LeafNode) {
      final value = lengthNode.value;
      if (value is int) return value;
      if (value is String) return int.tryParse(value);
    }
    throw FHIRException(
      message: 'Length parameter for truncate must be an integer or a string '
          'convertible to an integer',
    );
  }

  LeafNode _cast(ElementNode value, String targetType, String ruleId) {
    if (value is! LeafNode) {
      throw FHIRMappingCastException(
        message:
            "Rule '$ruleId': Failed to cast '$value' to type '$targetType'.",
      );
    }
    final castValue = value.value.toString();
    try {
      switch (targetType.toLowerCase()) {
        case 'string':
        case 'fhirstring':
        case 'fhir.string':
          return LeafNode(null, null, null, castValue, 'string');

        case 'integer':
        case 'fhirinteger':
        case 'fhir.integer':
          return _castToInt(value, ruleId, targetType);

        case 'boolean':
        case 'fhirboolean':
        case 'fhir.boolean':
          return LeafNode(
            null,
            null,
            null,
            castValue.toLowerCase() == 'true',
            'boolean',
          );

        case 'decimal':
        case 'fhirdecimal':
        case 'fhir.decimal':
          return LeafNode(null, null, null, double.parse(castValue), 'decimal');

        case 'date':
        case 'fhirdate':
        case 'fhir.date':
        case 'datetime':
        case 'fhirdatetime':
        case 'fhir.datetime':
        case 'time':
        case 'fhirtime':
        case 'fhir.time':
        case 'instant':
        case 'fhirinstant':
        case 'fhir.instant':
        case 'uri':
        case 'fhiruri':
        case 'fhir.uri':
        case 'oid':
        case 'fhiroid':
        case 'fhir.oid':
        case 'id':
        case 'fhirid':
        case 'fhir.id':
        case 'base64binary':
        case 'fhirbase64binary':
        case 'fhir.base64binary':
        case 'code':
        case 'fhircode':
        case 'fhir.code':
        case 'canonical':
        case 'fhircanonical':
        case 'fhir.canonical':
        case 'url':
        case 'fhirurl':
        case 'fhir.url':
          return LeafNode(null, null, null, castValue, targetType);

        case 'unsignedint':
        case 'fhirunsignedint':
        case 'fhir.unsignedint':
          return LeafNode(
            null,
            null,
            null,
            int.parse(castValue),
            'unsignedInt',
          );

        case 'positiveint':
        case 'fhirpositiveint':
        case 'fhir.positiveint':
          final intValue = int.parse(castValue);
          if (intValue <= 0) {
            throw FHIRMappingCastException(
              message: "Rule '$ruleId': PositiveInt must be greater than zero.",
            );
          }
          return LeafNode(null, null, null, intValue, 'positiveInt');

        case 'markdown':
        case 'fhirmarkdown':
        case 'fhir.markdown':
          return LeafNode(null, null, null, castValue, 'markdown');

        default:
          throw FHIRMappingCastException(
            message: "Rule '$ruleId': Unsupported cast to type '$targetType'.",
          );
      }
    } catch (e) {
      if (e is FHIRMappingCastException) {
        rethrow;
      } else {
        throw FHIRMappingCastException(
          message: "Rule '$ruleId': Failed to cast '${value.value}' to type "
              "'$targetType'. $e",
        );
      }
    }
  }

  LeafNode _castToInt(LeafNode value, String ruleId, String targetType) {
    try {
      final intValue = int.parse(value.value.toString());
      return LeafNode(null, null, null, intValue, 'integer');
    } catch (e) {
      final errorMessage = e is FormatException
          ? "Rule '$ruleId': Failed to cast '${value.value}' to type "
              "'$targetType'. Invalid number format."
          : "Rule '$ruleId': Failed to cast '${value.value}' to type "
              "'$targetType'. $e";
      throw FHIRMappingCastException(message: errorMessage);
    }
  }

  LeafNode _append(
    StructureMapTarget target,
    Variables variables,
    StructureMap map,
  ) {
    final buffer = StringBuffer();

    for (final parameter in target.parameter!) {
      final paramString = _getParamStringGeneral(
        variables,
        parameter,
        map,
        throwIfNull: false,
      );
      if (paramString != null) {
        buffer.write(paramString);
      }
    }

    return LeafNode(null, null, null, buffer.toString(), 'string');
  }

  Future<ElementNode?> _translate(
    StructureMap map,
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

  LeafNode _reference(
    String ruleId,
    StructureMapTarget target,
    Variables variables,
    StructureMap map,
  ) {
    final sourceElement = _getFirstParam(target, variables, map);

    if (sourceElement is! MapNode) {
      throw Exception('Cannot create reference to non-resource element');
    }

    final sourceMap = sourceElement.toMap() as Map<String, dynamic>;
    final resourceType = sourceMap['resourceType'] as String?;
    final id = sourceMap['id'] as String?;

    if (resourceType == null || id == null) {
      throw Exception('Cannot create reference without resourceType and id');
    }

    return LeafNode(
      null,
      null,
      null,
      '$resourceType/$id',
      'Reference',
    );
  }

  LeafNode _pointer(
    String ruleId,
    StructureMapTarget target,
    Variables variables,
    StructureMap map,
  ) {
    final sourceElement = _getFirstParam(target, variables, map);

    if (sourceElement is! MapNode) {
      throw Exception('Cannot create pointer to non-resource element');
    }

    final sourceMap = sourceElement.toMap() as Map<String, dynamic>;
    final id = sourceMap['id'] as String?;

    if (id == null) {
      throw Exception('Cannot create pointer without an element ID');
    }

    return LeafNode(
      null,
      null,
      null,
      'urn:uuid:$id',
      'Reference',
    );
  }

  LeafNode _uuid() {
    return LeafNode(null, null, null, const Uuid().v4(), 'uuid');
  }

  Future<MapNode> _codeableConcept(
    String ruleId,
    StructureMapTarget target,
    Variables variables,
    StructureMap map,
  ) async {
    if (target.parameter == null ||
        target.parameter!.isEmpty ||
        target.parameter!.length < 2) {
      throw FHIRException(message: 'Target does not have enough parameters');
    }

    final system = _getParamStringGeneral(
      variables,
      target.parameter!.first,
      map,
      throwIfNull: true,
      contextMessage: target.toString(),
    )!;
    final code = _getParamStringGeneral(
      variables,
      target.parameter![1],
      map,
      throwIfNull: true,
      contextMessage: target.toString(),
    )!;
    final display = target.parameter!.length > 2
        ? _getParamStringGeneral(
            variables,
            target.parameter![2],
            map,
            throwIfNull: false,
            contextMessage: target.toString(),
          )
        : null;

    return MapNode.fromMapAsync(
      null,
      null,
      'CodeableConcept',
      {
        'coding': [
          {
            'system': system,
            'code': code,
            if (display != null) 'display': display,
          }
        ],
      },
      resolver,
    );
  }

  Future<MapNode> _coding(
    String ruleId,
    StructureMapTarget target,
    Variables variables,
    StructureMap map,
  ) async {
    if (target.parameter == null ||
        target.parameter!.isEmpty ||
        target.parameter!.length < 2) {
      throw FHIRException(message: 'Target does not have enough parameters');
    }

    final system = _getParamStringGeneral(
      variables,
      target.parameter!.first,
      map,
      throwIfNull: true,
      contextMessage: target.toString(),
    )!;
    final code = _getParamStringGeneral(
      variables,
      target.parameter![1],
      map,
      throwIfNull: true,
      contextMessage: target.toString(),
    )!;
    final display = target.parameter!.length > 2
        ? _getParamStringGeneral(
            variables,
            target.parameter![2],
            map,
            throwIfNull: false,
            contextMessage: target.toString(),
          )
        : null;

    return MapNode.fromMapAsync(
      null,
      null,
      'Coding',
      {
        'system': system,
        'code': code,
        if (display != null) 'display': display,
      },
      resolver,
    );
  }

  String? _getParamStringGeneral(
    Variables variables,
    StructureMapParameter parameter,
    StructureMap map, {
    required bool throwIfNull,
    String? contextMessage,
  }) {
    final paramValue = _getParam(variables, parameter);

    if (paramValue is LeafNode && paramValue.value != null) {
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

  ElementNode _getParam(Variables variables, StructureMapParameter parameter) {
    final paramValue = parameter.valueX;

    // Return a LeafNode if the paramValue is a primitive type
    if (parameter is! FhirId &&
        (paramValue is FhirString ||
            paramValue is FhirInteger ||
            paramValue is FhirDecimal)) {
      return LeafNode(
        null,
        null,
        null,
        (paramValue as PrimitiveType).value,
        paramValue.fhirType,
      );
    }

    // Attempt to retrieve variableNode from Variables
    final paramName = paramValue.toString();
    final variableNode =
        variables.getInputVar(paramName) ?? variables.getOutputVar(paramName);

    // if (variableNode == null) {
    //   final nodeValue = paramValue.toJson();
    //   return MapNode.fromMap(
    //     null,
    //     null,
    //     null,
    //     Map<String, dynamic>.from(nodeValue),
    //     resolver,
    //   );
    // }

    if (variableNode == null) {
      throw FHIRException(
        message: 'Variable Node is Null for parameter: $paramName',
      );
    }

    return variableNode;
  }

  Future<ElementNode?> _processConceptMapTranslation(
    ElementNode sourceElement,
    String? conceptMapUrl,
    String? fieldToReturn,
    StructureMap map,
  ) async {
    final sourceMap = sourceElement.toMap() as Map<String, dynamic>;
    final sourceCoding = sourceMap is String ? sourceMap : sourceMap['coding'];

    final conceptMap = await _findConceptMap(conceptMapUrl, map);

    return conceptMap == null
        ? null
        : _translateCoding(conceptMap, sourceCoding, fieldToReturn);
  }

  Future<ConceptMap?> _findConceptMap(
    String? conceptMapUrl,
    StructureMap map,
  ) async {
    if (conceptMapUrl == null) return null;

    if (conceptMapUrl.startsWith('#')) {
      return map.contained?.firstWhereOrNull(
        (resource) =>
            resource is ConceptMap &&
            resource.id?.value == conceptMapUrl.substring(1),
      ) as ConceptMap?;
    }

    return resolver.fetchResource<ConceptMap>(conceptMapUrl);
  }

  Future<ElementNode?> _translateCoding(
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
      throw Exception(
        'No translation found for '
        '${sourceCoding is String ? sourceCoding : sourceCoding.code}',
      );
    }

    return fieldToReturn == 'code'
        ? LeafNode(null, null, null, outcome.code?.value, 'code')
        : await MapNode.fromMapAsync(
            null,
            null,
            null,
            outcome.toJson(),
            resolver,
          );
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

  ElementNode _getFirstParam(
    StructureMapTarget target,
    Variables variables,
    StructureMap map,
  ) {
    if (target.parameter == null || target.parameter!.isEmpty) {
      throw Exception('Target has no parameters');
    }
    return _getParam(variables, target.parameter!.first);
  }

  Future<String> _getActualType(StructureMap? map, String statedType) async {
    if (map == null) return statedType;

    // Find any structure matching the stated type by alias or URL
    final structure = map.structure?.firstWhereOrNull(
      (structure) =>
          structure.alias?.value == statedType ||
          structure.url.toString().endsWith('/$statedType') == true,
    );

    // If a matching structure is found, resolve and return its type;
    // otherwise, return statedType
    if (structure != null) {
      final resolvedDefinition =
          await resolver.resolve(structure.url.toString());
      return resolvedDefinition?.type.toString() ?? statedType;
    }

    return statedType;
  }

  ElementNode _escape(Variables vars, StructureMapTarget target) {
    if (target.parameter == null || target.parameter!.length < 3) {
      throw FHIRException(
        message: 'Escape transform requires source, fmt1, and fmt2 parameters',
      );
    }

    final sourceNode = _getParam(vars, target.parameter![0]);
    final fmt1 = _getParamStringGeneral(
      vars,
      target.parameter![1],
      map,
      throwIfNull: true,
    )!;
    final fmt2 = _getParamStringGeneral(
      vars,
      target.parameter![2],
      map,
      throwIfNull: true,
    )!;

    if (sourceNode is! LeafNode || sourceNode.value is! String) {
      throw FHIRException(
        message: 'Source for escape must be a string LeafNode',
      );
    }

    final sourceString = sourceNode.value as String;
    String resultString;

    // Handle escaping transformations between formats
    resultString = _convertEscaping(sourceString, fmt1, fmt2);

    return LeafNode(null, null, null, resultString, 'string');
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

  ElementNode _dateOp(Variables vars, StructureMapTarget target) {
    if (target.parameter == null || target.parameter!.length < 2) {
      throw FHIRException(
        message: 'dateOp transform requires a source date and an '
            'operation parameter',
      );
    }

    final sourceNode = _getParam(vars, target.parameter![0]);
    final operation = _getParamStringGeneral(
      vars,
      target.parameter![1],
      map,
      throwIfNull: true,
    )!;

    if (sourceNode is! LeafNode || sourceNode.value is! String) {
      throw FHIRException(
        message:
            'Source for dateOp must be a string LeafNode representing a date',
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
      throw FHIRException(message: 'Unsupported date operation: $operation');
    }

    return LeafNode(null, null, null, resultDate.toIso8601String(), 'dateTime');
  }

  Future<ElementNode?> _evaluate(
    Variables vars,
    StructureMapTarget target,
    ElementNode? base,
  ) async {
    if (target.parameter == null || target.parameter!.isEmpty) {
      throw FHIRException(
        message: 'evaluate transform requires an expression parameter',
      );
    }

    final expression = _getParamStringGeneral(
      vars,
      target.parameter!.first,
      map,
      throwIfNull: true,
    )!;

    _log('Evaluating FHIRPath expression: $expression');

    try {
      final newBase =
          (await base?.preprocessElementNodeAsync(resolver)) as FhirBase?;
      final node = fhirPathEngine.parse(expression);
      // Use `evaluateWithAppContextAndPath` to evaluate the expression within
      // the FHIRPath context.
      final result = fhirPathEngine.evaluateWithContext(
        vars,
        null,
        null,
        newBase,
        node,
      );

      // Return the result as an ElementNode. We handle primitive types with
      // `LeafNode` and complex structures with `MapNode`.
      if (result.isEmpty) {
        return null;
      } else if (result.length == 1) {
        final singleResult = result.first;
        return singleResult is Map<String, dynamic>
            ? await MapNode.fromMapAsync(
                singleResult.fhirType,
                null,
                null,
                singleResult.toJson(),
                resolver,
              )
            : LeafNode(
                null,
                null,
                null,
                singleResult,
                singleResult.runtimeType.toString(),
              );
      } else {
        final nodes = <ElementNode>[];
        for (final item in result) {
          if (item is PrimitiveType) {
            nodes.add(LeafNode(null, null, null, item.value, item.fhirType));
          } else if (item is Map<String, dynamic>) {
            nodes.add(
              await MapNode.fromMapAsync(
                item.fhirType,
                null,
                null,
                item.toJson(),
                resolver,
              ),
            );
          }
        }
        // If the expression results in multiple values, convert each to an
        // `ElementNode`.
        return await ListNode.fromListAsync(
          null,
          null,
          null,
          nodes,
          resolver,
        );
      }
    } catch (error) {
      throw FHIRException(
        message: 'Error during FHIRPath evaluation: $expression\nError: $error',
      );
    }
  }

  Future<MapNode> _quantity(Variables vars, StructureMapTarget target) async {
    if (target.parameter == null || target.parameter!.isEmpty) {
      throw FHIRException(message: 'qty transform requires parameters');
    }

    if (target.parameter!.length == 1) {
      // Interpret as text
      final text = _getParamStringGeneral(
        vars,
        target.parameter![0],
        map,
        throwIfNull: true,
      )!;
      // Parse the text to extract value and unit
      // This is a simplified example
      final parts = text.split(' ');
      final value = double.parse(parts[0]);
      final unit = parts[1];
      return MapNode.fromMapAsync(
        null,
        null,
        'Quantity',
        {
          'value': value,
          'unit': unit,
        },
        resolver,
      );
    } else {
      // Parameters: value, unit, [system, code]
      final valueStr = _getParamStringGeneral(
        vars,
        target.parameter![0],
        map,
        throwIfNull: true,
      )!;
      final unit = _getParamStringGeneral(
        vars,
        target.parameter![1],
        map,
        throwIfNull: true,
      )!;
      final system = target.parameter!.length > 2
          ? _getParamStringGeneral(
              vars,
              target.parameter![2],
              map,
              throwIfNull: false,
            )
          : null;
      final code = target.parameter!.length > 3
          ? _getParamStringGeneral(
              vars,
              target.parameter![3],
              map,
              throwIfNull: false,
            )
          : null;

      final value = double.tryParse(valueStr) ?? int.parse(valueStr);

      return MapNode.fromMapAsync(
        null,
        null,
        'Quantity',
        {
          'value': value,
          'unit': unit,
          if (system != null) 'system': system,
          if (code != null) 'code': code,
        },
        resolver,
      );
    }
  }

  Future<MapNode> _identifier(Variables vars, StructureMapTarget target) async {
    if (target.parameter == null || target.parameter!.length < 2) {
      throw FHIRException(
        message: 'id transform requires at least system and value parameters',
      );
    }

    final system = _getParamStringGeneral(
      vars,
      target.parameter![0],
      map,
      throwIfNull: true,
    )!;
    final value = _getParamStringGeneral(
      vars,
      target.parameter![1],
      map,
      throwIfNull: true,
    )!;
    final typeCode = target.parameter!.length > 2
        ? _getParamStringGeneral(
            vars,
            target.parameter![2],
            map,
            throwIfNull: false,
          )
        : null;

    Map<String, dynamic>? type;
    if (typeCode != null) {
      type = {
        'coding': [
          {
            'code': typeCode,
            // Optionally add 'system' and 'display' if needed
          }
        ],
      };
    }

    return MapNode.fromMapAsync(
      null,
      null,
      'Identifier',
      {
        'system': system,
        'value': value,
        if (type != null) 'type': type,
      },
      resolver,
    );
  }

  Future<MapNode> _contactPoint(
    Variables vars,
    StructureMapTarget target,
  ) async {
    if (target.parameter == null || target.parameter!.isEmpty) {
      throw FHIRException(
        message: 'cp transform requires at least one parameter',
      );
    }

    String? system;
    String value;

    if (target.parameter!.length == 1) {
      // Infer system from value
      value = _getParamStringGeneral(
        vars,
        target.parameter![0],
        map,
        throwIfNull: true,
      )!;
      system = _inferContactSystem(value);
    } else {
      system = _getParamStringGeneral(
        vars,
        target.parameter![0],
        map,
        throwIfNull: true,
      );
      value = _getParamStringGeneral(
        vars,
        target.parameter![1],
        map,
        throwIfNull: true,
      )!;
    }

    return MapNode.fromMapAsync(
      null,
      null,
      'ContactPoint',
      {
        if (system != null) 'system': system,
        'value': value,
      },
      resolver,
    );
  }

  String? _inferContactSystem(String value) {
    // Simple inference based on value content
    if (value.contains('@')) {
      return 'email';
    } else if (value.startsWith('+') ||
        value.replaceAll(RegExp(r'\D'), '').length >= 10) {
      return 'phone';
    } else {
      return 'other';
    }
  }
}
