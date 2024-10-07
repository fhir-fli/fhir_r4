import 'package:json_annotation/json_annotation.dart';

/// Codes for the kind of study objective.
enum ResearchStudyObjectiveType {
  /// Display: Primary
  /// Definition: The main question to be answered, and the one that drives any statistical planning for the study—e.g., calculation of the sample size to provide the appropriate power for statistical testing.
  @JsonValue('primary')
  primary,
  /// Display: Secondary
  /// Definition: Question to be answered in the study that is of lesser importance than the primary objective.
  @JsonValue('secondary')
  secondary,
  /// Display: Exploratory
  /// Definition: Exploratory questions to be answered in the study.
  @JsonValue('exploratory')
  exploratory,
;

@override
  String toString() {
      switch(this) {
        case primary: return 'primary';
        case secondary: return 'secondary';
        case exploratory: return 'exploratory';
      }
      }
String toJson() => toString();
  ResearchStudyObjectiveType fromString(String str) {
    switch(str) {
      case 'primary': return ResearchStudyObjectiveType.primary;
      case 'secondary': return ResearchStudyObjectiveType.secondary;
      case 'exploratory': return ResearchStudyObjectiveType.exploratory;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ResearchStudyObjectiveType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

