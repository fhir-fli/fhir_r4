import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:http/http.dart';

/// A cache for FHIR resources.
abstract class ResourceCache {
  /// Creates a new [ResourceCache].
  ResourceCache({this.client});

  /// The HTTP client used to fetch resources.
  final Client? client;

  /// The cache of resources.
  final CanonicalResourceManager manager = CanonicalResourceManager();

  /// Fetches a [CanonicalResource] from the cache.
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]);

  /// Saves a [CanonicalResource] to the cache.
  Future<void> saveCanonicalResource(CanonicalResource resource);

  /// Fetches a [CanonicalResource] from the cache with a specific version.
  Future<Map<String, dynamic>?> getResourceMap(String url);

  /// Saves a [CanonicalResource] to the cache with a specific version.
  Future<StructureDefinition?> getStructureDefinition(String url);

  /// Fetches all StructureDefinitions from the cache.
  Future<List<StructureDefinition>> getStructureDefinitions();

  /// Fetches a CodeSystem from the cache.
  Future<CodeSystem?> getCodeSystem(String url, [String? version]);

  /// Returns the names of all resources in the cache.
  Future<List<String>> getResourceNames();
}

/// A local resource cache that stores resources in memory.
class LocalResourceCache extends ResourceCache {
  /// Creates a new [LocalResourceCache].
  LocalResourceCache();

  @override
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]) async {
    return manager.get(url, version);
  }

  @override
  Future<Map<String, dynamic>?> getResourceMap(String url) async {
    return manager.get(url)?.toJson();
  }

  @override
  Future<StructureDefinition?> getStructureDefinition(
    String url, [
    String? version,
  ]) async {
    return manager.get<StructureDefinition>(url, version);
  }

  @override
  Future<List<StructureDefinition>> getStructureDefinitions() async {
    return manager.getList<StructureDefinition>();
  }

  @override
  Future<void> saveCanonicalResource(
    CanonicalResource resource, [
    bool withVersion = false,
  ]) async {
    if (resource.url == null) {
      throw ArgumentError('Resource must have a url');
    }
    manager.see(resource);
  }

  @override
  Future<CodeSystem?> getCodeSystem(
    String url, [
    String? version,
  ]) async {
    return manager.get<CodeSystem>(url, version);
  }

  @override
  Future<List<String>> getResourceNames() async {
    return manager.getNames();
  }
}
