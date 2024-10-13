/// Codes representing the likelihood of a particular outcome in a risk assessment.
enum RiskProbability {
  /// Display: Negligible likelihood
  /// Definition: The specified outcome is exceptionally unlikely.
  negligible,

  /// Display: Low likelihood
  /// Definition: The specified outcome is possible but unlikely.
  low,

  /// Display: Moderate likelihood
  /// Definition: The specified outcome has a reasonable likelihood of occurrence.
  moderate,

  /// Display: High likelihood
  /// Definition: The specified outcome is more likely to occur than not.
  high,

  /// Display: Certain
  /// Definition: The specified outcome is effectively guaranteed.
  certain,
  ;

  @override
  String toString() {
    switch (this) {
      case negligible:
        return 'negligible';
      case low:
        return 'low';
      case moderate:
        return 'moderate';
      case high:
        return 'high';
      case certain:
        return 'certain';
    }
  }

  /// Returns a [String] from a [RiskProbability] enum.
  String toJson() => toString();

  /// Returns a [RiskProbability] from a [String] enum.
  static RiskProbability fromString(String str) {
    switch (str) {
      case 'negligible':
        return RiskProbability.negligible;
      case 'low':
        return RiskProbability.low;
      case 'moderate':
        return RiskProbability.moderate;
      case 'high':
        return RiskProbability.high;
      case 'certain':
        return RiskProbability.certain;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [RiskProbability] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static RiskProbability fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
