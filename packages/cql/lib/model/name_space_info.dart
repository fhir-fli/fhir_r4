class NamespaceInfo {
  final String name;
  final String uri;

  NamespaceInfo({
    required this.name,
    required this.uri,
  }) {
    assert(name.isNotEmpty, 'Name cannot be empty.');
    assert(uri.isNotEmpty, 'Uri cannot be empty.');
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NamespaceInfo) return false;
    return other.name == name && other.uri == uri;
  }

  @override
  int get hashCode => Object.hash(name, uri);

  @override
  String toString() => '$name: $uri';
}
