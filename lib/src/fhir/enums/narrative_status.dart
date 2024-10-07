import 'package:json_annotation/json_annotation.dart';

/// The status of a resource narrative.
enum NarrativeStatus {
  /// Display: Generated
  /// Definition: The contents of the narrative are entirely generated from the core elements in the content.
  @JsonValue('generated')
  generated,
  /// Display: Extensions
  /// Definition: The contents of the narrative are entirely generated from the core elements in the content and some of the content is generated from extensions. The narrative SHALL reflect the impact of all modifier extensions.
  @JsonValue('extensions')
  extensions,
  /// Display: Additional
  /// Definition: The contents of the narrative may contain additional information not found in the structured data. Note that there is no computable way to determine what the extra information is, other than by human inspection.
  @JsonValue('additional')
  additional,
  /// Display: Empty
  /// Definition: The contents of the narrative are some equivalent of "No human-readable text provided in this case".
  @JsonValue('empty')
  empty,
;

@override
  String toString() {
      switch(this) {
        case generated: return 'generated';
        case extensions: return 'extensions';
        case additional: return 'additional';
        case empty: return 'empty';
      }
      }
String toJson() => toString();
  NarrativeStatus fromString(String str) {
    switch(str) {
      case 'generated': return NarrativeStatus.generated;
      case 'extensions': return NarrativeStatus.extensions;
      case 'additional': return NarrativeStatus.additional;
      case 'empty': return NarrativeStatus.empty;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 NarrativeStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

