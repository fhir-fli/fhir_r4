// ignore_for_file: avoid_print, public_member_api_docs

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

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
  DefinitionResolver(ResourceCache cache)
      : _worker = WorkerContext(resourceCache: cache);

  final WorkerContext _worker;

  /// Resolves a [StructureDefinition] from [structureUrl].
  Future<StructureDefinition?> resolve(String structureUrl) async {
    return _worker.fetchResource<StructureDefinition>(uri: structureUrl);
  }

  /// Resolves a [StructureDefinition] by [type].
  Future<StructureDefinition?> resolveByType(
    String? type,
    StructureMap? map,
  ) async {
    if (type == null) {
      return null;
    }

    final sd = await _worker.fetchTypeDefinition(type);
    if (sd != null) {
      return sd;
    }

    final structure = map?.structure?.firstWhereOrNull(
          (s) =>
              s.url.toString() == type ||
              s.alias?.valueString?.toLowerCase() == type.toLowerCase(),
        ) ??
        map?.structure?.firstWhereOrNull(
          (s) =>
              s.url.toString().toLowerCase().endsWith('/${type.toLowerCase()}'),
        );

    final resolved = await resolve(structure?.url.toString() ?? type);
    if (resolved != null) {
      await _worker.resourceCache.saveCanonicalResource(resolved);
    }
    return resolved;
  }

  /// Resolves an [ElementDefinition] for [objectLocation].
  Future<ElementDefinition?> resolveElementDefinition(
    String? objectLocation,
    StructureMap? map,
  ) async {
    if (objectLocation == null) {
      return null;
    }

    final pathParts = objectLocation.split('.');
    final baseType = pathParts.first;
    final sd = await resolveByType(baseType, map);
    if (sd == null) {
      return null;
    }

    return _resolveElementDefinition(sd, pathParts, map);
  }

  Future<ElementDefinition?> _resolveElementDefinition(
    StructureDefinition sd,
    List<String> pathParts,
    StructureMap? map,
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

        final sd = await resolveByType(nextType, map);
        if (sd != null) {
          return _resolveElementDefinition(
            sd,
            [nextType!, ...pathParts.sublist(i - 1)],
            map,
          );
        } else {
          return null;
        }
      }
    }
    return null;
  }

  /// Determines if [objectLocation] is a list.
  Future<bool> isElementAList(
    String? objectLocation,
    StructureMap? map,
  ) async {
    final elementDef = await resolveElementDefinition(objectLocation, map);
    return elementDef?.isCollection ?? false;
  }

  /// Gets possible types for an element at [objectLocation].
  Future<List<String>> typesForElement(
    String? objectLocation,
    StructureMap? map,
  ) async {
    if (objectLocation == null) return <String>[];
    final elementDef = await resolveElementDefinition(objectLocation, map);
    return elementDef?.type?.map((t) => t.code.toString()).toList() ??
        <String>[];
  }

  /// Fetches a [CanonicalResource] of type [T] from [uri].
  Future<T?> fetchResource<T extends CanonicalResource>(String uri) async {
    final resource = await _worker.fetchResource<T>(uri: uri);
    if (resource is T) return resource;
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
      if (el.path.valueString == path) {
        return el;
      }
      // Handle polymorphic elements containing '[x]'
      if (el.path.valueString?.contains('[x]') ?? false) {
        final polymorphicBase = el.path.valueString!.split('[x]').first;
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

    return resolvedSrcType == inputs['source']?.valueString &&
        resolvedTgtType == inputs['target']?.valueString;
  }

  Future<String?> _resolveType(StructureMap map, String? type) async {
    for (final structure in map.structure ?? <StructureMapStructure>[]) {
      if (structure.alias != null && structure.alias?.valueString == type) {
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
  Future<ValidationResult?> validateCode(
    ValidationOptions options,
    String? system,
    String? version,
    String code,
    String? display,
  ) async {
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
  final edPath = elementDef.path.valueString;
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

/// Represents a resolved group within a [StructureMapBuilder].
class ResolvedGroup {
  /// Constructs a [ResolvedGroup] with a [target] and an associated
  /// [targetMap].
  ResolvedGroup(this.target, this.targetMap);

  /// Creates an empty [ResolvedGroup] with no target mapping.
  ResolvedGroup.empty()
      : target = null,
        targetMap = null;

  /// The target group within the structure map.
  StructureMapGroupBuilder? target;

  /// The associated structure map for the target group.
  StructureMapBuilder? targetMap;
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
  StructureMapBuilder? getTransform(String canonicalUrl) {
    return _structureMaps
        .firstWhereOrNull((map) => map.url.toString() == canonicalUrl)
        ?.toBuilder as StructureMapBuilder?;
  }

  /// Lists all [StructureMap] instances that match the given
  /// [canonicalUrlTemplate].
  List<StructureMapBuilder> listTransforms(String canonicalUrlTemplate) {
    final pattern = RegExp('^${canonicalUrlTemplate.replaceAll('*', '.*')}\$');
    return _structureMaps
        .where((map) => pattern.hasMatch(map.url.toString()))
        .map((e) => e.toBuilder)
        .toList() as List<StructureMapBuilder>;
  }
}

/// Represents the context for a transformation operation.
class TransformContext {
  /// Creates a [TransformContext] with an [appInfo] object.
  TransformContext(this.appInfo);

  /// Creates a [TransformContext] with an [appInfo] object.
  final Object appInfo;
}

class Property {}

class PropertyWithType {
  PropertyWithType(
    this.path,
    this.baseProperty,
    this.profileProperty,
    this.types,
  );

  String path;
  Property baseProperty;
  Property? profileProperty;
  TypeDetails types;

  String summary() {
    return path;
  }
}

class VariableForProfiling {
  VariableForProfiling(this.mode, this.name, this.property);
  MappingVariableMode mode;
  String name;
  PropertyWithType property;

  String summary() {
    return '$name: ${property.summary()}';
  }
}

class VariablesForProfiling {
  VariablesForProfiling({required this.optional, required this.repeating});
  List<VariableForProfiling> list = <VariableForProfiling>[];
  bool optional;
  bool repeating;

  void addProperty(
    MappingVariableMode mode,
    String name,
    String path,
    Property property,
    TypeDetails types,
  ) {
    add(mode, name, PropertyWithType(path, property, null, types));
  }

  void addProperties(
    MappingVariableMode mode,
    String name,
    String path,
    Property baseProperty,
    Property profileProperty,
    TypeDetails types,
  ) {
    add(
      mode,
      name,
      PropertyWithType(path, baseProperty, profileProperty, types),
    );
  }

  void add(MappingVariableMode mode, String name, PropertyWithType property) {
    VariableForProfiling? vv;
    for (final v in list) {
      if ((v.mode == mode) && v.name == name) {
        vv = v;
      }
    }
    if (vv != null) list.remove(vv);
    list.add(VariableForProfiling(mode, name, property));
  }

  VariablesForProfiling copyWith({bool? optional, bool? repeating}) {
    final result = VariablesForProfiling(
      optional: optional ?? this.optional,
      repeating: repeating ?? this.repeating,
    );
    result.list.addAll(list);
    return result;
  }

  VariableForProfiling? get(MappingVariableMode? mode, String name) {
    if (mode == null) {
      for (final v in list) {
        if ((v.mode == MappingVariableMode.OUTPUT) && v.name == name) {
          return v;
        }
      }
      for (final v in list) {
        if ((v.mode == MappingVariableMode.INPUT) && v.name == name) {
          return v;
        }
      }
    }
    for (final v in list) {
      if ((v.mode == mode) && v.name == name) {
        return v;
      }
    }
    return null;
  }

  String summary() {
    final s = StringBuffer();
    final t = StringBuffer();
    for (final v in list) {
      if (v.mode == MappingVariableMode.INPUT) {
        s.write(', ${v.summary()}');
      } else {
        t.write(', ${v.summary()}');
      }
    }
    return 'source variables [$s], target variables [$t]';
  }
}
