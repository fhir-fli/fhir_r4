import 'package:json_annotation/json_annotation.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
enum DetectedIssueSeverity {
  /// Display: High
  /// Definition: Indicates the issue may be life-threatening or has the potential to cause permanent injury.
  @JsonValue('high')
  high,
  /// Display: Moderate
  /// Definition: Indicates the issue may result in noticeable adverse consequences but is unlikely to be life-threatening or cause permanent injury.
  @JsonValue('moderate')
  moderate,
  /// Display: Low
  /// Definition: Indicates the issue may result in some adverse consequences but is unlikely to substantially affect the situation of the subject.
  @JsonValue('low')
  low,
;

@override
  String toString() {
      switch(this) {
        case high: return 'high';
        case moderate: return 'moderate';
        case low: return 'low';
      }
      }
String toJson() => toString();
  DetectedIssueSeverity fromString(String str) {
    switch(str) {
      case 'high': return DetectedIssueSeverity.high;
      case 'moderate': return DetectedIssueSeverity.moderate;
      case 'low': return DetectedIssueSeverity.low;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DetectedIssueSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
