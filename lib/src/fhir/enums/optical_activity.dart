import 'package:json_annotation/json_annotation.dart';

/// The optical rotation type of a substance.
enum OpticalActivity {
  /// Display: dextrorotary
  @JsonValue('+')
  plus,

  /// Display: levorotary
  @JsonValue('-')
  minus,
  ;

  @override
  String toString() {
    switch (this) {
      case plus:
        return '+';
      case minus:
        return '-';
    }
  }

  String toJson() => toString();
  OpticalActivity fromString(String str) {
    switch (str) {
      case '+':
        return OpticalActivity.plus;
      case '-':
        return OpticalActivity.minus;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  OpticalActivity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
