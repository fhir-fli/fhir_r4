import 'package:json_annotation/json_annotation.dart';

/// The type of relationship between reports.
enum ReportRelationshipType {
  /// Display: Replaces
  /// Definition: This document replaces or supersedes the target document.
  @JsonValue('replaces')
  replaces,
  /// Display: Amends
  /// Definition: This document notes corrections or changes to replace or supersede parts of the target document.
  @JsonValue('amends')
  amends,
  /// Display: Appends
  /// Definition: This document adds additional information to the target document.
  @JsonValue('appends')
  appends,
  /// Display: Transforms
  /// Definition: This document was generated by transforming the target document (eg format or language conversion).
  @JsonValue('transforms')
  transforms,
  /// Display: Replaced With
  /// Definition: This document was.
  @JsonValue('replacedWith')
  replacedWith,
  /// Display: Amended With
  /// Definition: This document was.
  @JsonValue('amendedWith')
  amendedWith,
  /// Display: Appended With
  /// Definition: This document was.
  @JsonValue('appendedWith')
  appendedWith,
  /// Display: Transformed With
  /// Definition: This document was.
  @JsonValue('transformedWith')
  transformedWith,
;

@override
  String toString() {
      switch(this) {
        case replaces: return 'replaces';
        case amends: return 'amends';
        case appends: return 'appends';
        case transforms: return 'transforms';
        case replacedWith: return 'replacedWith';
        case amendedWith: return 'amendedWith';
        case appendedWith: return 'appendedWith';
        case transformedWith: return 'transformedWith';
      }
      }
String toJson() => toString();
  ReportRelationshipType fromString(String str) {
    switch(str) {
      case 'replaces': return ReportRelationshipType.replaces;
      case 'amends': return ReportRelationshipType.amends;
      case 'appends': return ReportRelationshipType.appends;
      case 'transforms': return ReportRelationshipType.transforms;
      case 'replacedWith': return ReportRelationshipType.replacedWith;
      case 'amendedWith': return ReportRelationshipType.amendedWith;
      case 'appendedWith': return ReportRelationshipType.appendedWith;
      case 'transformedWith': return ReportRelationshipType.transformedWith;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ReportRelationshipType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
