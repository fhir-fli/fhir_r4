import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// A simple cached wrapper around a fully loaded [CanonicalResource].
class CachedCanonicalResource<T extends CanonicalResource> {
  /// Creates a [CachedCanonicalResource] instance.
  CachedCanonicalResource(this.resource, [this.packageInfo]);

  /// The real FHIR resource.
  final T resource;

  /// Optional package/version metadata where this resource came from.
  final PackageVersion? packageInfo;

  /// URL of the resource (must be non-null).
  String get url => resource.url!.primitiveValue!;

  /// ID of the resource (must be non-null).
  String get id => resource.id!.primitiveValue!;

  /// Version string, if present.
  String? get version => resource.version?.primitiveValue;
}

/// A canonical resource manager that eagerly loads and caches resources.
class CanonicalResourceManager extends ResourceCache {
  /// Creates a [CanonicalResourceManager] instance.
  CanonicalResourceManager({
    this.enforceUniqueId = false,
    super.client,
  })  : _byId = {},
        _byUrl = {};

  /// If true, inserting a resource with the same ID will replace the old one.
  final bool enforceUniqueId;

  /// Lookup by resource ID.
  final Map<String, CachedCanonicalResource> _byId;

  /// Lookup by URL, and by "url|version" keys.
  final Map<String, CachedCanonicalResource> _byUrl;

  @override
  Future<void> saveCanonicalResource(CanonicalResource resource) async {
    see(resource);
  }

  /// Eagerly cache the provided [resource].
  void see<T extends CanonicalResource>(T resource, [PackageVersion? pkg]) {
    // Ensure the resource has an ID.
    final withId = resource.copyWith(
      id: resource.id ?? _generateUuid().toFhirString,
    );

    final cached = CachedCanonicalResource(withId, pkg);

    // Optionally drop an old entry with the same ID.
    if (enforceUniqueId && _byId.containsKey(cached.id)) {
      _drop(cached.id);
    }

    // Primary lookups
    _byId[cached.id] = cached;
    _byUrl[cached.url] = cached;

    // Versioned lookup key
    final key = cached.version != null
        ? '${cached.url}|${cached.version}'
        : '${cached.url}|#0';
    _byUrl[key] = cached;

    // Update the unversioned "latest" pointer
    _updateLatest(cached.url);
  }

  @override
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]) async {
    if (version != null) {
      final key = '$url|$version';
      return _byUrl[key]?.resource as T?;
    }
    return _byUrl[url]?.resource as T?;
  }

  @override
  Future<Map<String, dynamic>?> getResourceMap(String url) async {
    final res = _byUrl[url]?.resource;
    return res?.toJson();
  }

  @override
  Future<StructureDefinition?> getStructureDefinition(String url) async {
    return getCanonicalResource<StructureDefinition>(url);
  }

  @override
  Future<List<StructureDefinition>> getStructureDefinitions() async {
    final defs = _byId.values
        .map((c) => c.resource)
        .whereType<StructureDefinition>()
        .toSet()
        .toList();
    return defs;
  }

  @override
  Future<CodeSystem?> getCodeSystem(String url, [String? version]) async {
    return getCanonicalResource<CodeSystem>(url, version);
  }

  @override
  Future<List<String>> getResourceNames() async {
    final names = _byId.values
        .map((c) {
          final nameElem = c.resource.getChildrenByName('name').firstWhere(
                (e) => e is FhirString && e.valueString != null,
                orElse: () => FhirString(''),
              );
          return (nameElem as FhirString).valueString;
        })
        .whereType<String>()
        .toSet()
        .toList();

    return names;
  }

  /// Remove a resource (and its versioned entries) by ID.
  void _drop(String id) {
    final cached = _byId.remove(id);
    if (cached == null) return;

    _byUrl.remove(cached.url);
    if (cached.version != null) {
      _byUrl.remove('${cached.url}|${cached.version}');
    } else {
      _byUrl.remove('${cached.url}|#0');
    }

    _updateLatest(cached.url);
  }

  /// Recompute the unversioned "latest" pointer for [url].
  void _updateLatest(String url) {
    final versions = _byUrl.entries
        .where((e) => e.key.startsWith('$url|'))
        .map((e) => e.value)
        .cast<CachedCanonicalResource>()
        .toList();

    if (versions.isEmpty) return;
    versions.sort((a, b) => (a.version ?? '').compareTo(b.version ?? ''));
    _byUrl[url] = versions.last;
  }

  /// Generates a pseudo‐unique ID.
  String _generateUuid() => generateNewUuidString();
}
