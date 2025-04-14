class ModelIdentifier {
  String id;
  String? system;
  String? version;

  ModelIdentifier({
    required this.id,
    this.system,
    this.version,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ModelIdentifier) return false;
    return other.id == id && other.system == system && other.version == version;
  }

  @override
  int get hashCode => Object.hash(id, system, version);

  @override
  String toString() {
    return 'ModelIdentifier(id: $id, system: $system, version: $version)';
  }

  ModelIdentifier copyWith({
    String? id,
    String? system,
    String? version,
  }) =>
      ModelIdentifier(
        id: id ?? this.id,
        system: system ?? this.system,
        version: version ?? this.version,
      );

  void withId(String id) {
    this.id = id;
  }

  void withSystem(String system) {
    this.system = system;
  }

  void withVersion(String version) {
    this.version = version;
  }
}
