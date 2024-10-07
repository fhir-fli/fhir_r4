import 'package:json_annotation/json_annotation.dart';

/// The method used to determine the characteristic(s) of the variable.
enum CharacteristicMethod {
  /// Display: Default
  /// Definition: Default.
  @JsonValue('Default')
  Default,
  ;

  @override
  String toString() {
    switch (this) {
      case Default:
        return 'Default';
    }
  }

  String toJson() => toString();
  CharacteristicMethod fromString(String str) {
    switch (str) {
      case 'Default':
        return CharacteristicMethod.Default;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  CharacteristicMethod fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
