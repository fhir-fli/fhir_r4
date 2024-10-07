import 'package:json_annotation/json_annotation.dart';

/// How an entity was used in an activity.
enum ProvenanceEntityRole {
  /// Display: Derivation
  /// Definition: A transformation of an entity into another, an update of an entity resulting in a new one, or the construction of a new entity based on a pre-existing entity.
  @JsonValue('derivation')
  derivation,
  ;

  @override
  String toString() {
    switch (this) {
      case derivation:
        return 'derivation';
    }
  }

  String toJson() => toString();
  ProvenanceEntityRole fromString(String str) {
    switch (str) {
      case 'derivation':
        return ProvenanceEntityRole.derivation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ProvenanceEntityRole fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
