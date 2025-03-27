import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

abstract class ResourceCache {
  const ResourceCache({this.client});
  final Client? client;

  Future<CanonicalResource?> getCanonicalResource(String url);
  Future<void> saveCanonicalResource(CanonicalResource resource);
  Future<Map<String, dynamic>?> getResourceMap(String url);
  Future<StructureDefinition?> getStructureDefinition(String url);
}

class LocalResourceCache extends ResourceCache {
  LocalResourceCache();

  final Map<String, CanonicalResource> _cache = {};

  @override
  Future<CanonicalResource?> getCanonicalResource(String url,
      [String? version]) async {
    CanonicalResource? cr = _cache[url];
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
  Future<StructureDefinition?> getStructureDefinition(String url,
      [String? version]) async {
    CanonicalResource? sd = _cache[url];
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
  Future<void> saveCanonicalResource(CanonicalResource resource,
      [bool withVersion = false]) async {
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
