import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// A cache for FHIR resources.
abstract class ResourceCache {
  /// Creates a [ResourceCache] instance.
  ResourceCache({this.client});

  /// The HTTP client used to fetch resources.
  final Client? client;

  /// Fetches a [CanonicalResource] from the cache.
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]);

  /// Saves a [CanonicalResource] to the cache.
  Future<void> saveCanonicalResource(CanonicalResource resource);

  /// Fetches the raw JSON map for a resource.
  Future<Map<String, dynamic>?> getResourceMap(String url);

  /// Retrieves a [StructureDefinition] from the cache.
  Future<StructureDefinition?> getStructureDefinition(String url);

  /// Retrieves all [StructureDefinition] instances from the cache.
  Future<List<StructureDefinition>> getStructureDefinitions();

  /// Fetches a [CodeSystem] from the cache.
  Future<CodeSystem?> getCodeSystem(String url, [String? version]);

  /// Returns the names of all resources in the cache.
  Future<List<String>> getResourceNames();
}
