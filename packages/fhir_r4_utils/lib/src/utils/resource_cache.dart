import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// A cache for FHIR resources.
abstract class ResourceCache {
  /// Creates a new [ResourceCache].
  const ResourceCache({this.client});

  /// The HTTP client used to fetch resources.
  final Client? client;

  /// Fetches a [CanonicalResource] from the cache.
  Future<CanonicalResource?> getCanonicalResource(String url);

  /// Saves a [CanonicalResource] to the cache.
  Future<void> saveCanonicalResource(CanonicalResource resource);

  /// Fetches a [CanonicalResource] from the cache with a specific version.
  Future<Map<String, dynamic>?> getResourceMap(String url);

  /// Saves a [CanonicalResource] to the cache with a specific version.
  Future<StructureDefinition?> getStructureDefinition(String url);
}

/// A local resource cache that stores resources in memory.
class LocalResourceCache extends ResourceCache {
  /// Creates a new [LocalResourceCache].
  LocalResourceCache();

  final Map<String, CanonicalResource> _cache = {};

  @override
  Future<CanonicalResource?> getCanonicalResource(
    String url, [
    String? version,
  ]) async {
    var cr = _cache[url];
    if (cr is CanonicalResource) {
      return cr;
    } else if (version != null) {
      cr = _cache['$url|$version'];
    }
    return cr;
  }

  @override
  Future<Map<String, dynamic>?> getResourceMap(String url) async {
    return _cache[url]?.toJson();
  }

  @override
  Future<StructureDefinition?> getStructureDefinition(
    String url, [
    String? version,
  ]) async {
    var sd = _cache[url];
    if (sd is StructureDefinition) {
      return sd;
    }
    if (version != null) {
      sd = _cache['$url|$version'];
      if (sd is StructureDefinition) {
        return sd;
      }
    }

    sd = _cache['http://hl7.org/fhir/StructureDefinition/$url'];
    if (sd is StructureDefinition) {
      return sd;
    }
    if (version != null) {
      sd = _cache['http://hl7.org/fhir/StructureDefinition/$url|$version'];
    }
    if (sd is StructureDefinition) {
      return sd;
    }
    return null;
  }

  @override
  Future<void> saveCanonicalResource(
    CanonicalResource resource, [
    bool withVersion = false,
  ]) async {
    if (resource.url == null) {
      throw ArgumentError('Resource must have a url');
    }
    if (withVersion) {
      _cache['${resource.url}|${resource.version}'] = resource;
    } else {
      _cache[resource.url!.toString()] = resource;
    }
  }
}
