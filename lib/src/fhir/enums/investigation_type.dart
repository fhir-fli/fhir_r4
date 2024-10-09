import 'package:json_annotation/json_annotation.dart';

/// Example value set for investigation type.
enum InvestigationType {
  /// Display: Examination / signs
  @JsonValue('271336007')
  value271336007,

  /// Display: History/symptoms
  @JsonValue('160237006')
  value160237006,
  ;

  @override
  String toString() {
    switch (this) {
      case value271336007:
        return '271336007';
      case value160237006:
        return '160237006';
    }
  }

  String toJson() => toString();
  static InvestigationType fromString(String str) {
    switch (str) {
      case '271336007':
        return InvestigationType.value271336007;
      case '160237006':
        return InvestigationType.value160237006;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static InvestigationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
