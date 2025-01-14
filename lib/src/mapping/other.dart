import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

void _log(String message, [bool shouldPrint = false, String level = 'INFO']) {
  if (shouldPrint) {
    print('[$level] $message');
  }
}

class TransformationContext {
  TransformationContext(this.resolver);
  final DefinitionResolver resolver;
  StructureDefinition? currentDefinition;

  Future<void> setStructure(String structureUrl) async {
    currentDefinition = await resolver.resolve(structureUrl);
  }

  // Stub for performSearch to be implemented later
  List<ElementNode> performSearch(String search) {
    return <ElementNode>[]; // Replace with actual search logic later
  }
}

class DefinitionResolver {
  DefinitionResolver(this.cache, this.map);
  final FhirDb cache;
  final StructureMap? map;
  final Map<String, StructureDefinition?> _cachedDefinitions = {};

  Future<StructureDefinition?> resolve(String structureUrl) async {
    return (await cache.getCanonicalResource(url: structureUrl))
        as StructureDefinition?;
  }

  Future<StructureDefinition?> resolveByType(String? type) async {
    if (type == null) {
      _log('Cannot resolve StructureDefinition for null type.', true);
      return null;
    }

    // Check if the type is already cached
    if (_cachedDefinitions.containsKey(type)) {
      return _cachedDefinitions[type];
    }

    // Find the structure definition
    final structure = map?.structure?.firstWhereOrNull(
          (s) =>
              s.url.toString() == type ||
              s.alias?.value?.toLowerCase() == type.toLowerCase(),
        ) ??
        map?.structure?.firstWhereOrNull(
          (s) =>
              s.url.toString().toLowerCase().endsWith('/${type.toLowerCase()}'),
        );

    // Resolve the structure definition
    final resolved = await resolve(structure?.url.toString() ?? type);

    // Cache the result
    _cachedDefinitions[type] = resolved;

    return resolved;
  }

  Future<ElementDefinition?> resolveElementDefinition(
      String? objectLocation,) async {
    if (objectLocation == null) {
      _log('Cannot resolve ElementDefinition for null location.', true);
      return null;
    }
    final locationParts = objectLocation.split('.');
    final baseType = locationParts.first;
    var structureDef = await resolveByType(baseType);

    for (var i = 1; i < locationParts.length; i++) {
      final currentPath = locationParts.sublist(0, i + 1).join('.');
      final elementDef =
          _resolveElementDefinitionFromStructure(structureDef, currentPath);
      if (elementDef == null) return null;

      if (i < locationParts.length - 1 && elementDef.type?.isNotEmpty == true) {
        final nextType = elementDef.singleTypeString;
        if (nextType != 'BackboneElement') {
          structureDef = await resolveByType(nextType);
        }
      }
    }

    return _resolveElementDefinitionFromStructure(structureDef, objectLocation);
  }

  ElementDefinition? _resolveElementDefinitionFromStructure(
    StructureDefinition? structureDef,
    String path,
  ) {
    if (structureDef == null) return null;

    for (final el in [
      ...?structureDef.snapshot?.element,
      ...?structureDef.differential?.element,
    ]) {
      if (el.path.value == path) {
        return el;
      }
      // Handle polymorphic elements containing '[x]'
      if (el.path.value?.contains('[x]') ?? false) {
        final polymorphicBase = el.path.value!.split('[x]').first;
        if (path.startsWith(polymorphicBase)) {
          return el;
        }
      }
    }
    return null;
  }

  Future<bool> isElementAList(String? objectLocation) async {
    final elementDef = await resolveElementDefinition(objectLocation);
    return elementDef?.isCollection ?? false;
  }

  Future<List<String>> typesForElement(String? objectLocation) async {
    if (objectLocation == null) return <String>[];
    final elementDef = await resolveElementDefinition(objectLocation);
    return elementDef?.type?.map((t) => t.code.toString()).toList() ??
        <String>[];
  }

  Future<bool> matchesByType(
    StructureMap map,
    StructureMapGroup group,
    String? srcType,
    String? tgtType,
  ) async {
    if (group.typeMode.toString() == 'none' || group.input.length != 2) {
      return false;
    }

    final inputs = {for (final i in group.input) i.mode.toString(): i.type};
    final resolvedSrcType = await _resolveType(map, srcType);
    final resolvedTgtType = await _resolveType(map, tgtType);

    return resolvedSrcType == inputs['source']?.value &&
        resolvedTgtType == inputs['target']?.value;
  }

  Future<String?> _resolveType(StructureMap map, String? type) async {
    for (final structure in map.structure ?? <StructureMapStructure>[]) {
      if (structure.alias != null && structure.alias?.value == type) {
        return (await resolve(structure.url.toString()))?.type.toString() ??
            type;
      }
    }
    if ((type?.startsWith('http://') ?? false) ||
        (type?.startsWith('https://') ?? false)) {
      return (await resolve(type!))?.type.toString() ?? type;
    }
    return type;
  }

  Future<T?> fetchResource<T extends CanonicalResource>(String uri)async  {
    final resource = await cache.getCanonicalResource(url: uri);
    if (resource is T) return resource;
    _log(
      'Resource $uri is not of expected type ${T.runtimeType}',
      true,
      'WARNING',
    );
    return null;
  }
}

class ResolvedGroup {
  ResolvedGroup(this.target, this.targetMap);

  // Constructor to initialize with nulls, for when no group is found initially.
  ResolvedGroup.empty()
      : target = null,
        targetMap = null;
  StructureMapGroup? target;
  StructureMap? targetMap;
}

class StructureMapService {
  final List<StructureMap> _structureMaps = [];

  // Method to add a StructureMap to the list
  void addStructureMap(StructureMap structureMap) {
    _structureMaps.add(structureMap);
  }

  // Method to fetch a StructureMap by URL
  StructureMap? getTransform(String canonicalUrl) {
    return _structureMaps
        .firstWhereOrNull((map) => map.url.toString() == canonicalUrl);
  }

  List<StructureMap> listTransforms(String canonicalUrlTemplate) {
    // Quick check for an exact match
    if (!canonicalUrlTemplate.contains('*')) {
      return _structureMaps
          .where((map) => map.url.toString() == canonicalUrlTemplate)
          .toList();
    }

    // Apply regex for wildcard patterns
    final pattern = RegExp('^${canonicalUrlTemplate.replaceAll('*', '.*')}\$');
    return _structureMaps
        .where((map) => pattern.hasMatch(map.url.toString()))
        .toList();
  }
}
