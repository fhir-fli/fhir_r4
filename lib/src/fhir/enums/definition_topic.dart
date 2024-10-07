import 'package:json_annotation/json_annotation.dart';

/// High-level categorization of the definition, used for searching, sorting, and filtering.
enum DefinitionTopic {
  /// Display: Treatment
  /// Definition: The definition is related to treatment of the patient.
  @JsonValue('treatment')
  treatment,
  /// Display: Education
  /// Definition: The definition is related to education of the patient.
  @JsonValue('education')
  education,
  /// Display: Assessment
  /// Definition: The definition is related to assessment of the patient.
  @JsonValue('assessment')
  assessment,
;

@override
  String toString() {
      switch(this) {
        case treatment: return 'treatment';
        case education: return 'education';
        case assessment: return 'assessment';
      }
      }
String toJson() => toString();
  DefinitionTopic fromString(String str) {
    switch(str) {
      case 'treatment': return DefinitionTopic.treatment;
      case 'education': return DefinitionTopic.education;
      case 'assessment': return DefinitionTopic.assessment;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DefinitionTopic fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

