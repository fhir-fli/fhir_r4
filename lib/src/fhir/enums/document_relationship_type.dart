import 'package:json_annotation/json_annotation.dart';

/// The type of relationship between documents.
enum DocumentRelationshipType {
  /// Display: Replaces
  /// Definition: This document logically replaces or supersedes the target document.
  @JsonValue('replaces')
  replaces,
  /// Display: Transforms
  /// Definition: This document was generated by transforming the target document (e.g. format or language conversion).
  @JsonValue('transforms')
  transforms,
  /// Display: Signs
  /// Definition: This document is a signature of the target document.
  @JsonValue('signs')
  signs,
  /// Display: Appends
  /// Definition: This document adds additional information to the target document.
  @JsonValue('appends')
  appends,
;

@override
  String toString() {
      switch(this) {
        case replaces: return 'replaces';
        case transforms: return 'transforms';
        case signs: return 'signs';
        case appends: return 'appends';
      }
      }
String toJson() => toString();
  DocumentRelationshipType fromString(String str) {
    switch(str) {
      case 'replaces': return DocumentRelationshipType.replaces;
      case 'transforms': return DocumentRelationshipType.transforms;
      case 'signs': return DocumentRelationshipType.signs;
      case 'appends': return DocumentRelationshipType.appends;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DocumentRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
