// ignore_for_file: avoid_print

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// Manages the transformation context for mapping FHIR structures.
class TransformationContext {
  /// Creates a [TransformationContext] with a [resolver].
  TransformationContext(this.resolver);

  /// The resolver for fetching FHIR definitions.
  final DefinitionResolver resolver;

  /// The currently active structure definition.
  StructureDefinition? currentDefinition;

  /// Sets the structure definition by resolving [structureUrl].
  Future<void> setStructure(String structureUrl) async {
    currentDefinition = await resolver.resolve(structureUrl);
  }

  /// Searches within the structure.
  ///
  /// Placeholder method that should be implemented later.
  List<FhirBase> performSearch(String search) {
    return <FhirBase>[]; // Replace with actual search logic later
  }
}

/// Resolves structure definitions for FHIR mapping.
class DefinitionResolver {
  /// Creates a [DefinitionResolver] with a [cache] and optional [map].
  DefinitionResolver(this.cache, this.map);

  /// The database for fetching canonical FHIR resources.
  final FhirDb cache;

  /// The optional structure map for resolving definitions.
  final StructureMap? map;

  /// Cache of resolved structure definitions.
  final Map<String, StructureDefinition?> _cachedDefinitions = {};

  final WorkerContext _worker = WorkerContext();

  /// Resolves a [StructureDefinition] from [structureUrl].
  Future<StructureDefinition?> resolve(String structureUrl) async {
    return (await cache.getCanonicalResource(url: structureUrl))
        as StructureDefinition?;
  }

  /// Resolves a [StructureDefinition] by [type].
  Future<StructureDefinition?> resolveByType(String? type) async {
    if (type == null) {
      print('Cannot resolve StructureDefinition for null type.');
      return null;
    }

    if (_cachedDefinitions.containsKey(type)) {
      return _cachedDefinitions[type];
    }

    final structure = map?.structure?.firstWhereOrNull(
          (s) =>
              s.url.toString() == type ||
              s.alias?.value?.toLowerCase() == type.toLowerCase(),
        ) ??
        map?.structure?.firstWhereOrNull(
          (s) =>
              s.url.toString().toLowerCase().endsWith('/${type.toLowerCase()}'),
        );

    final resolved = await resolve(structure?.url.toString() ?? type);
    _cachedDefinitions[type] = resolved;
    return resolved;
  }

  /// Resolves an [ElementDefinition] for [objectLocation].
  Future<ElementDefinition?> resolveElementDefinition(
    String? objectLocation,
  ) async {
    if (objectLocation == null) {
      print('Cannot resolve ElementDefinition for null location.');
      return null;
    }

    final pathParts = objectLocation.split('.');
    final baseType = pathParts.first;
    final sd = await resolveByType(baseType);
    if (sd == null) {
      print('Cannot resolve ElementDefinition for $objectLocation.');
      return null;
    }

    return _resolveElementDefinition(sd, pathParts);
  }

  Future<ElementDefinition?> _resolveElementDefinition(
    StructureDefinition sd,
    List<String> pathParts,
  ) async {
    final ed = _resolveElementDefinitionFromStructure(sd, pathParts.join('.'));
    if (ed != null) {
      return ed;
    }

    for (var i = pathParts.length; i > 0; i--) {
      final path = pathParts.sublist(0, i - 1).join('.');

      final ed = _resolveElementDefinitionFromStructure(sd, path);

      if (ed != null) {
        final nextType =
            ed.singleTypeString ?? resolvePolymorphicType(ed, path);

        final sd = await resolveByType(nextType);
        if (sd != null) {
          return _resolveElementDefinition(
            sd,
            [nextType!, ...pathParts.sublist(i - 1)],
          );
        } else {
          print('Cannot resolve ElementDefinition for $path.');
          return null;
        }
      }
    }
    return null;
  }

  /// Determines if [objectLocation] is a list.
  Future<bool> isElementAList(String? objectLocation) async {
    final elementDef = await resolveElementDefinition(objectLocation);
    return elementDef?.isCollection ?? false;
  }

  /// Gets possible types for an element at [objectLocation].
  Future<List<String>> typesForElement(String? objectLocation) async {
    if (objectLocation == null) return <String>[];
    final elementDef = await resolveElementDefinition(objectLocation);
    return elementDef?.type?.map((t) => t.code.toString()).toList() ??
        <String>[];
  }

  /// Fetches a [CanonicalResource] of type [T] from [uri].
  Future<T?> fetchResource<T extends CanonicalResource>(String uri) async {
    final resource = await cache.getCanonicalResource(url: uri);
    if (resource is T) return resource;
    print('Resource $uri is not of expected type ${T.runtimeType}');
    return null;
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

  /// Determines whether the given source and target types match within a
  /// [StructureMapGroup].
  ///
  /// This function is useful for validating type compatibility in
  /// transformation rules within FHIR structure maps. It checks if the
  /// provided [srcType] and [tgtType] match the expected input types within
  /// the specified [group].
  ///
  /// - [map]: The [StructureMap] containing the transformation rules.
  /// - [group]: The [StructureMapGroup] being validated.
  /// - [srcType]: The source type to compare.
  /// - [tgtType]: The target type to compare.
  ///
  /// Returns `true` if the types match based on the group's input
  /// specifications, otherwise returns `false`.
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

  /// Expands a [ValueSet] to include all possible values.
  ValueSetExpansionOutcome expandVS(ValueSet? vs) {
    return ValueSetExpansionOutcome(vs);
  }

  /// Validates a code using the specified options.
  ValidationResult? validateCode(
    ValidationOptions options,
    String? system,
    String? version,
    String code,
    String? display,
  ) {
    return _worker.validateCode(options, system, version, code, display);
  }
}

/// Determines the specific type for a polymorphic FHIR element.
///
/// Some FHIR elements use `[x]` notation to indicate polymorphism, meaning
/// they can be of different types. This function resolves the correct type
/// based on the given [elementDef] and [path].
///
/// - [elementDef]: The element definition containing type information.
/// - [path]: The current path being resolved.
///
/// Returns the resolved type as a string, or `null` if no match is found.
String? resolvePolymorphicType(ElementDefinition elementDef, String path) {
  final edPath = elementDef.path.value;
  if (edPath == null || !edPath.endsWith('[x]')) return null;
  final polyMorphicBase =
      edPath.substring(0, edPath.length - 3).split('.').last;
  final finalPath = path.split('.').last;
  if (finalPath.contains(polyMorphicBase)) {
    final type = finalPath.substring(polyMorphicBase.length);
    if (elementDef.type?.any((t) => t.code.toString() == type) ?? false) {
      return type;
    } else {
      return null;
    }
  } else {
    return null;
  }
}

/// Represents a resolved group within a [StructureMap].
class ResolvedGroup {
  /// Constructs a [ResolvedGroup] with a [target] and an associated
  /// [targetMap].
  ResolvedGroup(this.target, this.targetMap);

  /// Creates an empty [ResolvedGroup] with no target mapping.
  ResolvedGroup.empty()
      : target = null,
        targetMap = null;

  /// The target group within the structure map.
  StructureMapGroup? target;

  /// The associated structure map for the target group.
  StructureMap? targetMap;
}

/// Manages the storage and retrieval of [StructureMap] instances.
class StructureMapService {
  /// List of available [StructureMap] instances.
  final List<StructureMap> _structureMaps = [];

  /// Adds a [StructureMap] to the list of available transformations.
  void addStructureMap(StructureMap structureMap) {
    _structureMaps.add(structureMap);
  }

  /// Retrieves a [StructureMap] by its canonical URL.
  StructureMap? getTransform(String canonicalUrl) {
    return _structureMaps
        .firstWhereOrNull((map) => map.url.toString() == canonicalUrl);
  }

  /// Lists all [StructureMap] instances that match the given
  /// [canonicalUrlTemplate].
  List<StructureMap> listTransforms(String canonicalUrlTemplate) {
    final pattern = RegExp('^${canonicalUrlTemplate.replaceAll('*', '.*')}\$');
    return _structureMaps
        .where((map) => pattern.hasMatch(map.url.toString()))
        .toList();
  }
}

/// Represents the context for a transformation operation.
class TransformContext {
  /// Creates a [TransformContext] with an [appInfo] object.
  TransformContext(this.appInfo);

  /// Creates a [TransformContext] with an [appInfo] object.
  final Object appInfo;
}
