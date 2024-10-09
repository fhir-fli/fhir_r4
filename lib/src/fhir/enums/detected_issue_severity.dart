/// Indicates the potential degree of impact of the identified issue on the patient.
enum DetectedIssueSeverity {
  /// Display: High
  /// Definition: Indicates the issue may be life-threatening or has the potential to cause permanent injury.
  high,

  /// Display: Moderate
  /// Definition: Indicates the issue may result in noticeable adverse consequences but is unlikely to be life-threatening or cause permanent injury.
  moderate,

  /// Display: Low
  /// Definition: Indicates the issue may result in some adverse consequences but is unlikely to substantially affect the situation of the subject.
  low,
  ;

  @override
  String toString() {
    switch (this) {
      case high:
        return 'high';
      case moderate:
        return 'moderate';
      case low:
        return 'low';
    }
  }

  String toJson() => toString();
  static DetectedIssueSeverity fromString(String str) {
    switch (str) {
      case 'high':
        return DetectedIssueSeverity.high;
      case 'moderate':
        return DetectedIssueSeverity.moderate;
      case 'low':
        return DetectedIssueSeverity.low;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DetectedIssueSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
