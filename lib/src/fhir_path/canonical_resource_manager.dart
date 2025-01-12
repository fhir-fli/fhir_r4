import 'dart:collection';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';


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

/// A canonical resource manager
class CanonicalResourceManager<T extends CanonicalResource> {
  /// Create a new canonical resource manager
  CanonicalResourceManager({this.enforceUniqueId = false});

  /// Should the manager enforce unique IDs
  final bool enforceUniqueId;
  final List<_CachedCanonicalResource<T>> _list = [];
  final Map<String, _CachedCanonicalResource<T>> _map = HashMap();

  /// Register a resource
  void register(CanonicalResourceProxy proxy, PackageVersion packageInfo) {
    if (!proxy.hasId()) {
      throw Exception('An ID is required for a deferred load resource.');
    }
    final cachedResource =
        _CachedCanonicalResource<T>.fromProxy(proxy, packageInfo);
    _see(cachedResource);
  }

  /// See a resource
  void see(T resource, PackageVersion packageInfo) {
    final newResource =
        resource.copyWith(id: resource.id ?? _generateUuid().toFhirString);
    final cachedResource = _CachedCanonicalResource(newResource, packageInfo)
        as _CachedCanonicalResource<T>;
    _see(cachedResource);
  }

  void _see(_CachedCanonicalResource<T> cachedResource) {
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

  /// Get a resource
  T? get(String url) {
    return _map[url]?.getResource();
  }

  /// Get a resource with a version
  T? getWithVersion(String url, String version) {
    final fullKey = '$url|$version';
    if (_map.containsKey(fullKey)) {
      return _map[fullKey]?.getResource();
    }

    final majMin = _getMajMin(version);
    if (majMin != null && _map.containsKey('$url|$majMin')) {
      return _map['$url|$majMin']?.getResource();
    }

    return null;
  }

  /// Get a resource by URL
  bool has(String url) {
    return _map.containsKey(url);
  }

  /// Get a resource by URL and version
  bool hasWithVersion(String url, String version) {
    return _map.containsKey('$url|$version') ||
        (_getMajMin(version) != null &&
            _map.containsKey('$url|${_getMajMin(version)}'));
  }

  /// Drop a resource
  void drop(String id) {
    _CachedCanonicalResource<T>? resource;
    do {
      resource = _list.firstWhereOrNull((r) => r.id == id);

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

  /// Get a list of resources
  List<T> getList() {
    return _list.map((e) => e.getResource()).toSet().toList();
  }

  /// Get a sorted list of resources
  List<T> getSortedList() {
    final list = getList()
      ..sort(
        (a, b) => (a.url?.primitiveValue ?? '')
            .compareTo(b.url?.primitiveValue ?? ''),
      );
    return list;
  }

  /// Get the size of the list
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

class _CachedCanonicalResource<T extends CanonicalResource> {
  _CachedCanonicalResource(this.resource, this.packageInfo) : proxy = null;

  _CachedCanonicalResource.fromProxy(this.proxy, this.packageInfo)
      : resource = null;
  final T? resource;
  final CanonicalResourceProxy? proxy;
  final PackageVersion packageInfo;

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
