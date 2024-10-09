/// The severity of the adverse event itself, in direct relation to the subject.
enum AdverseEventSeverity {
  /// Display: Mild
  mild,

  /// Display: Moderate
  moderate,

  /// Display: Severe
  severe,
  ;

  @override
  String toString() {
    switch (this) {
      case mild:
        return 'mild';
      case moderate:
        return 'moderate';
      case severe:
        return 'severe';
    }
  }

  String toJson() => toString();
  static AdverseEventSeverity fromString(String str) {
    switch (str) {
      case 'mild':
        return AdverseEventSeverity.mild;
      case 'moderate':
        return AdverseEventSeverity.moderate;
      case 'severe':
        return AdverseEventSeverity.severe;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AdverseEventSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
