import 'dart:collection';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// A canonical resource manager that also acts as a resource cache.
class CanonicalResourceManager extends ResourceCache {
  /// Creates a [CanonicalResourceManager] instance.
  CanonicalResourceManager({this.enforceUniqueId = false, super.client})
      : _list = [],
        _map = HashMap();

  /// Whether to enforce unique resource IDs.
  final bool enforceUniqueId;

  final List<_CachedCanonicalResource> _list;
  final Map<String, _CachedCanonicalResource> _map;

  /// ----------------- Implementation of ResourceCache ---------------------

  @override
  Future<T?> getCanonicalResource<T extends CanonicalResource>(
    String url, [
    String? version,
  ]) async {
    if (version != null) {
      return Future.value(_getWithVersion<T>(url, version));
    }
    return Future.value(_map[url]?.getResource() as T?);
  }

  @override
  Future<void> saveCanonicalResource(CanonicalResource resource) async {
    // We use our internal "see" method to store the resource.
    see(resource);
    return;
  }

  @override
  Future<Map<String, dynamic>?> getResourceMap(String url) async {
    final resource = _map[url]?.getResource();
    return resource?.toJson();
  }

  @override
  Future<StructureDefinition?> getStructureDefinition(String url) async {
    return getCanonicalResource<StructureDefinition>(url);
  }

  @override
  Future<List<StructureDefinition>> getStructureDefinitions() async {
    return Future.value(getList<StructureDefinition>());
  }

  @override
  Future<CodeSystem?> getCodeSystem(String url, [String? version]) async {
    return getCanonicalResource<CodeSystem>(url, version);
  }

  @override
  Future<List<String>> getResourceNames() async {
    return Future.value(getNames());
  }

  /// ----------------- Original CanonicalResourceManager methods -------------

  /// Registers a resource via a proxy.
  void register<T extends CanonicalResource>(
    CanonicalResourceProxy proxy,
    PackageVersion packageInfo,
  ) {
    if (!proxy.hasId()) {
      throw Exception('An ID is required for a deferred load resource.');
    }
    final cachedResource =
        _CachedCanonicalResource<T>.fromProxy(proxy, packageInfo);
    _see(cachedResource);
  }

  /// Stores a resource in the cache.
  void see<T extends CanonicalResource>(
    T resource, [
    PackageVersion? packageInfo,
  ]) {
    final newResource = resource.copyWith(
      id: resource.id ?? _generateUuid().toFhirString,
    );
    final cachedResource = _CachedCanonicalResource(newResource, packageInfo)
        as _CachedCanonicalResource<T>;
    _see(cachedResource);
  }

  void _see<T extends CanonicalResource>(
    _CachedCanonicalResource<T> cachedResource,
  ) {
    if (enforceUniqueId && _map.containsKey(cachedResource.id)) {
      drop(cachedResource.id!);
    }

    final existing = cachedResource.hasVersion()
        ? _map['${cachedResource.url}|${cachedResource.version}']
        : _map['${cachedResource.url}|#0'];

    if (existing != null) {
      _list.remove(existing);
    }

    _list.add(cachedResource);
    _map[cachedResource.id!] = cachedResource;
    _map[cachedResource.url!] = cachedResource;

    if (cachedResource.hasVersion()) {
      _map['${cachedResource.url}|${cachedResource.version}'] = cachedResource;
    } else {
      _map['${cachedResource.url}|#0'] = cachedResource;
    }

    _updateList(cachedResource.url!, cachedResource.version);
  }

  void _updateList(String url, String? version) {
    final resources = _list.where((resource) => resource.url == url).toList();
    if (resources.isNotEmpty) {
      resources.sort((a, b) => _compareVersions(a.version, b.version));
      _map[url] = resources.last;

      if (version != null) {
        final compatible = resources.lastWhereOrNull(
          (resource) => _versionsCompatible(resource.version, version),
        );
        if (compatible != null) {
          final latestVersion = _getMajMin(compatible.version);
          if (latestVersion != null && latestVersion != version) {
            _map['$url|$latestVersion'] = compatible;
          }
        }
      }
    }
  }

  T? _getWithVersion<T extends CanonicalResource>(String url, String version) {
    final fullKey = '$url|$version';
    if (_map.containsKey(fullKey)) {
      return _map[fullKey]?.getResource() as T?;
    }
    final majMin = _getMajMin(version);
    if (majMin != null && _map.containsKey('$url|$majMin')) {
      return _map['$url|$majMin']?.getResource() as T?;
    }
    return null;
  }

  /// Returns whether the cache has a resource by URL.
  bool has(String url) {
    return _map.containsKey(url);
  }

  /// Returns whether the cache has a resource by URL and version.
  bool hasWithVersion(String url, String version) {
    return _map.containsKey('$url|$version') ||
        (_getMajMin(version) != null &&
            _map.containsKey('$url|${_getMajMin(version)}'));
  }

  /// Removes a resource from the cache by its ID.
  void drop<T extends CanonicalResource>(String id) {
    _CachedCanonicalResource<T>? resource;
    do {
      resource = _list.firstWhereOrNull((r) => r.id == id)
          as _CachedCanonicalResource<T>?;
      if (resource != null) {
        _list.remove(resource);
        _map
          ..remove(resource.id)
          ..remove(resource.url);
        if (resource.hasVersion()) {
          _map.remove('${resource.url}|${resource.version}');
          final majMin = _getMajMin(resource.version);
          if (majMin != null) {
            _map.remove('${resource.url}|$majMin');
          }
        }
        _updateList(resource.url!, resource.version);
      }
    } while (resource != null);
  }

  /// Returns a list of resources of type [T].
  List<T> getList<T extends CanonicalResource>() {
    return _list.map((e) => e.getResource()).toSet().whereType<T>().toList();
  }

  /// Returns a sorted list of resources.
  List<T> getSortedList<T extends CanonicalResource>() {
    final list = getList()
      ..sort(
        (a, b) => (a.url?.primitiveValue ?? '')
            .compareTo(b.url?.primitiveValue ?? ''),
      );
    return list as List<T>;
  }

  /// Returns a list of names for all cached resources.
  List<String> getNames() {
    final names = <String>{};
    for (final resource in _list) {
      final name = resource.getResource().getChildByName('name');
      if (name is FhirString && name.valueString != null) {
        names.add(name.valueString!);
      }
    }
    return names.toList();
  }

  /// Returns the number of cached resources.
  int size() => _list.length;

  String _generateUuid() {
    return '${Random().nextInt(1000000000)}-'
        '${DateTime.now().millisecondsSinceEpoch}';
  }

  int _compareVersions(String? v1, String? v2) {
    if (v1 == null && v2 == null) return 0;
    if (v1 == null) return -1;
    if (v2 == null) return 1;
    return v1.compareTo(v2);
  }

  bool _versionsCompatible(String? v1, String v2) {
    return _getMajMin(v1) == _getMajMin(v2);
  }

  String? _getMajMin(String? version) {
    if (version == null) return null;
    final parts = version.split('.');
    return parts.length > 1 ? '${parts[0]}.${parts[1]}' : null;
  }
}

///
/// This manages a cached list of resources, and provides high speed access by
/// URL / URL+version, and assumes that patch version doesn't matter for access
/// note, though, that not all resources have semver versions
///
abstract class CanonicalResourceProxy {
  /// Constructor for a canonical resource proxy
  CanonicalResourceProxy(this.type, this.id, this.url, this.version);

  /// The type of the resource
  final String type;

  /// The id of the resource
  final String id;

  /// The url of the resource
  final String url;

  /// The version of the resource
  final String version;

  /// The resource
  CanonicalResource? resource;

  /// Does the resource have an ID
  bool hasId() => id.isNotEmpty;

  /// Does the resource have a URL
  bool hasUrl() => url.isNotEmpty;

  /// Does the resource have a version
  bool hasVersion() => version.isNotEmpty;

  /// Get the resource
  CanonicalResource getResource() {
    resource ??= loadResource();
    return resource!;
  }

  /// Load the resource
  CanonicalResource loadResource();
}

class _CachedCanonicalResource<T extends CanonicalResource> {
  _CachedCanonicalResource(this.resource, [this.packageInfo]) : proxy = null;

  _CachedCanonicalResource.fromProxy(this.proxy, [this.packageInfo])
      : resource = null;
  final T? resource;
  final CanonicalResourceProxy? proxy;
  final PackageVersion? packageInfo;

  T getResource() {
    if (resource != null) return resource!;
    if (proxy == null) throw Exception('Proxy not set for deferred resource.');
    return proxy!.getResource() as T;
  }

  String? get url => resource?.url?.primitiveValue ?? proxy?.url;
  String? get id => resource?.id?.primitiveValue ?? proxy?.id;
  String? get version => resource?.version?.primitiveValue ?? proxy?.version;

  bool hasVersion() => version != null;
}
