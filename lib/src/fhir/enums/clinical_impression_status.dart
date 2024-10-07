import 'package:json_annotation/json_annotation.dart';

/// Codes that reflect the current state of a clinical impression within its overall lifecycle.
enum ClinicalImpressionStatus {
  @JsonValue('in-progress')
  in_progress,
  @JsonValue('completed')
  completed,
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case in_progress: return 'in-progress';
        case completed: return 'completed';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  ClinicalImpressionStatus fromString(String str) {
    switch(str) {
      case 'in-progress': return ClinicalImpressionStatus.in_progress;
      case 'completed': return ClinicalImpressionStatus.completed;
      case 'entered-in-error': return ClinicalImpressionStatus.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ClinicalImpressionStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

