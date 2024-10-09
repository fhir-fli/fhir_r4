import 'package:json_annotation/json_annotation.dart';

/// How an entity was used in an activity.
enum ProvenanceEntityRole {
  /// Display: Derivation
  /// Definition: A transformation of an entity into another, an update of an entity resulting in a new one, or the construction of a new entity based on a pre-existing entity.
  @JsonValue('derivation')
  derivation,

  /// Display: Revision
  /// Definition: A derivation for which the resulting entity is a revised version of some original.
  @JsonValue('revision')
  revision,

  /// Display: Quotation
  /// Definition: The repeat of (some or all of) an entity, such as text or image, by someone who might or might not be its original author.
  @JsonValue('quotation')
  quotation,

  /// Display: Source
  /// Definition: A primary source for a topic refers to something produced by some agent with direct experience and knowledge about the topic, at the time of the topic's study, without benefit from hindsight.
  @JsonValue('source')
  source,

  /// Display: Removal
  /// Definition: A derivation for which the entity is removed from accessibility usually through the use of the Delete operation.
  @JsonValue('removal')
  removal,
  ;

  @override
  String toString() {
    switch (this) {
      case derivation:
        return 'derivation';
      case revision:
        return 'revision';
      case quotation:
        return 'quotation';
      case source:
        return 'source';
      case removal:
        return 'removal';
    }
  }

  String toJson() => toString();
  ProvenanceEntityRole fromString(String str) {
    switch (str) {
      case 'derivation':
        return ProvenanceEntityRole.derivation;
      case 'revision':
        return ProvenanceEntityRole.revision;
      case 'quotation':
        return ProvenanceEntityRole.quotation;
      case 'source':
        return ProvenanceEntityRole.source;
      case 'removal':
        return ProvenanceEntityRole.removal;
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
