import 'package:json_annotation/json_annotation.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
enum AllergyIntoleranceCriticality {
  /// Display: Low Risk
  /// Definition: Worst case result of a future exposure is not assessed to be life-threatening or having high potential for organ system failure.
  @JsonValue('low')
  low,

  /// Display: High Risk
  /// Definition: Worst case result of a future exposure is assessed to be life-threatening or having high potential for organ system failure.
  @JsonValue('high')
  high,

  /// Display: Unable to Assess Risk
  /// Definition: Unable to assess the worst case result of a future exposure.
  @JsonValue('unable-to-assess')
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

  String toJson() => toString();
  AllergyIntoleranceCriticality fromString(String str) {
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

  AllergyIntoleranceCriticality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
