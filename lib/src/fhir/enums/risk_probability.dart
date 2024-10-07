import 'package:json_annotation/json_annotation.dart';

/// Codes representing the likelihood of a particular outcome in a risk assessment.
enum RiskProbability {
  /// Display: Negligible likelihood
  /// Definition: The specified outcome is exceptionally unlikely.
  @JsonValue('negligible')
  negligible,
  /// Display: Low likelihood
  /// Definition: The specified outcome is possible but unlikely.
  @JsonValue('low')
  low,
  /// Display: Moderate likelihood
  /// Definition: The specified outcome has a reasonable likelihood of occurrence.
  @JsonValue('moderate')
  moderate,
  /// Display: High likelihood
  /// Definition: The specified outcome is more likely to occur than not.
  @JsonValue('high')
  high,
  /// Display: Certain
  /// Definition: The specified outcome is effectively guaranteed.
  @JsonValue('certain')
  certain,
;

@override
  String toString() {
      switch(this) {
        case negligible: return 'negligible';
        case low: return 'low';
        case moderate: return 'moderate';
        case high: return 'high';
        case certain: return 'certain';
      }
      }
String toJson() => toString();
  RiskProbability fromString(String str) {
    switch(str) {
      case 'negligible': return RiskProbability.negligible;
      case 'low': return RiskProbability.low;
      case 'moderate': return RiskProbability.moderate;
      case 'high': return RiskProbability.high;
      case 'certain': return RiskProbability.certain;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 RiskProbability fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

