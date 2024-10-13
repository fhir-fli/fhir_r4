/// Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations.
enum AllergyIntoleranceSeverity {
  /// Display: Mild
  /// Definition: Causes mild physiological effects.
  mild,

  /// Display: Moderate
  /// Definition: Causes moderate physiological effects.
  moderate,

  /// Display: Severe
  /// Definition: Causes severe physiological effects.
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

  /// Returns a [String] from a [AllergyIntoleranceSeverity] enum.
  String toJson() => toString();

  /// Returns a [AllergyIntoleranceSeverity] from a [String] enum.
  static AllergyIntoleranceSeverity fromString(String str) {
    switch (str) {
      case 'mild':
        return AllergyIntoleranceSeverity.mild;
      case 'moderate':
        return AllergyIntoleranceSeverity.moderate;
      case 'severe':
        return AllergyIntoleranceSeverity.severe;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AllergyIntoleranceSeverity] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AllergyIntoleranceSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
