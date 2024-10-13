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

  /// Returns a [String] from a [AdverseEventSeverity] enum.
  String toJson() => toString();

  /// Returns a [AdverseEventSeverity] from a [String] enum.
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

  /// Returns a [AdverseEventSeverity] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AdverseEventSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
