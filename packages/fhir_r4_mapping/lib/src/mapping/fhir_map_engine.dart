import 'package:fhir_mapping/fhir_mapping.dart' as fm;
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

/// Runs [map] over [source] into [target] (or a new target of the group's
/// type) and returns the result: the built target, or an OperationOutcome
/// when the map failed.
Future<FhirBase?> fhirMappingEngine(
  FhirBaseBuilder source,
  StructureMap map,
  ResourceCache cache,
  FhirBaseBuilder? target, [
  FhirBaseBuilder? Function(String)? extendedEmptyFromType,
]) async {
  final mapEngine = await FhirMapEngine.create(cache)
    ..extendedEmptyFromType = extendedEmptyFromType;
  return mapEngine.transformBuilder('', source, map, target);
}

/// The shared `fhir_mapping` engine over R4B: the same transform, with
/// R4B's resources and builders in and out.
class FhirMapEngine {
  FhirMapEngine._(this.engine);

  /// Makes an engine resolving definitions and terminology through [cache].
  static Future<FhirMapEngine> create(ResourceCache cache) async =>
      FhirMapEngine._(
        await fm.FhirMapEngine.create(cache, const R4MappingModel()),
      );

  /// The version-independent engine this one drives.
  final fm.FhirMapEngine engine;

  /// Maps registered for `imports` resolution.
  StructureMapService get structureMapService => engine.structureMapService;

  /// A factory consulted before the R4B builders when the engine creates a
  /// type by name (for logical models the package does not generate).
  FhirNodeBuilder? Function(String)? get extendedEmptyFromType =>
      engine.extendedEmptyFromType;

  set extendedEmptyFromType(FhirNodeBuilder? Function(String)? factory) =>
      engine.extendedEmptyFromType = factory;

  /// Transforms [sourceResource] by [map] into [targetResource] or a new
  /// resource.
  Future<FhirBase> transformFromFhir(
    Resource sourceResource,
    StructureMap map,
    Resource? targetResource,
  ) =>
      transform('', sourceResource, map, targetResource);

  /// Transforms [source] by [map] into [target] or a new target.
  Future<FhirBase> transform(
    Object appInfo,
    FhirBase source,
    StructureMap map,
    FhirBase? target,
  ) async =>
      (await engine.transform(appInfo, source, map, target)) as FhirBase;

  /// Transforms [sourceBuilder] by [map] into [targetBuilder] or a new
  /// target, and builds the result.
  Future<FhirBase> transformBuilder(
    Object appInfo,
    FhirBaseBuilder sourceBuilder,
    StructureMap map,
    FhirBaseBuilder? targetBuilder,
  ) async {
    final built = await engine.transformBuilder(
      appInfo,
      sourceBuilder,
      map,
      targetBuilder,
    );
    return built as FhirBase;
  }
}
