/// This file defines the root library type and element.
class VersionedIdentifier {
  String? type;

  /// VersionedIdentifier is composed of three parts:
  /// (1) an optional system, or namespace, which provides a globally unique, stable scope for the identifier,
  /// (2) an identifier which identifies the set of all versions of a given resource, and
  /// (3) the actual version of the instance of interest in this set.
  ///
  /// The VersionedIdentifier therefore points to an individual 'versioned' instance of a resource such as the third
  /// version of a library.
  String? id;

  /// An optional system (or namespace) which provides a globally unique, stable scope for the identifier.
  String? system;

  /// The actual version of the instance of interest in this set.
  String? version;

  VersionedIdentifier({this.type, this.id, this.system, this.version});

  factory VersionedIdentifier.fromJson(Map<String, dynamic> json) =>
      VersionedIdentifier(
        type: json['type'] as String?,
        id: json['id'] as String?,
        system: json['system'] as String?,
        version: json['version'] as String?,
      );

  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('type', type);
    writeNotNull('id', id);
    writeNotNull('system', system);
    writeNotNull('version', version);
    return val;
  }
}
