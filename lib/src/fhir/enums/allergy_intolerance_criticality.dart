/// Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
enum AllergyIntoleranceCriticality {
  /// Display: Low Risk
  /// Definition: Worst case result of a future exposure is not assessed to be life-threatening or having high potential for organ system failure.
  low,

  /// Display: High Risk
  /// Definition: Worst case result of a future exposure is assessed to be life-threatening or having high potential for organ system failure.
  high,

  /// Display: Unable to Assess Risk
  /// Definition: Unable to assess the worst case result of a future exposure.
  unable_to_assess,
  ;

  @override
  String toString() {
    switch (this) {
      case low:
        return 'low';
      case high:
        return 'high';
      case unable_to_assess:
        return 'unable-to-assess';
    }
  }

  /// Returns a [String] from a [AllergyIntoleranceCriticality] enum.
  String toJson() => toString();

  /// Returns a [AllergyIntoleranceCriticality] from a [String] enum.
  static AllergyIntoleranceCriticality fromString(String str) {
    switch (str) {
      case 'low':
        return AllergyIntoleranceCriticality.low;
      case 'high':
        return AllergyIntoleranceCriticality.high;
      case 'unable-to-assess':
        return AllergyIntoleranceCriticality.unable_to_assess;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AllergyIntoleranceCriticality] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AllergyIntoleranceCriticality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
