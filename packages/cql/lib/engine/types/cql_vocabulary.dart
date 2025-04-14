// Vocabulary type
import '../../cql.dart';

abstract class CqlVocabulary implements CqlType {
  String id;
  String? version;
  String name;

  CqlVocabulary({
    required this.id,
    required this.version,
    required this.name,
  });

  factory CqlVocabulary.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError(
        "Vocabulary is an abstract class and cannot be instantiated directly.");
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'version': version,
      'name': name,
    };
  }

  @override
  bool equivalent(Object other) {
    if (other is CqlVocabulary) {
      return id == other.id && version == other.version;
    } else {
      return false;
    }
  }

  @override
  bool equal(Object other) {
    if (other is CqlVocabulary) {
      return id == other.id && version == other.version && name == other.name;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'Vocabulary { id: $id, version: $version, name: $name }';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CqlVocabulary &&
          other.id == id &&
          other.version == version &&
          other.name == name;
    }
  }

  @override
  int get hashCode {
    return id.hashCode ^ version.hashCode ^ name.hashCode;
  }
}
