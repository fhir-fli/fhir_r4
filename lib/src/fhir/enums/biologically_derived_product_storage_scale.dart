import 'package:json_annotation/json_annotation.dart';

/// BiologicallyDerived Product Storage Scale.
enum BiologicallyDerivedProductStorageScale {
  /// Display: Fahrenheit
  /// Definition: Fahrenheit temperature scale.
  @JsonValue('farenheit')
  farenheit,
  /// Display: Celsius
  /// Definition: Celsius or centigrade temperature scale.
  @JsonValue('celsius')
  celsius,
  /// Display: Kelvin
  /// Definition: Kelvin absolute thermodynamic temperature scale.
  @JsonValue('kelvin')
  kelvin,
;

@override
  String toString() {
      switch(this) {
        case farenheit: return 'farenheit';
        case celsius: return 'celsius';
        case kelvin: return 'kelvin';
      }
      }
String toJson() => toString();
  BiologicallyDerivedProductStorageScale fromString(String str) {
    switch(str) {
      case 'farenheit': return BiologicallyDerivedProductStorageScale.farenheit;
      case 'celsius': return BiologicallyDerivedProductStorageScale.celsius;
      case 'kelvin': return BiologicallyDerivedProductStorageScale.kelvin;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 BiologicallyDerivedProductStorageScale fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

