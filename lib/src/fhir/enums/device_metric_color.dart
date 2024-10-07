import 'package:json_annotation/json_annotation.dart';

/// Describes the typical color of representation.
enum DeviceMetricColor {
  /// Display: Color Black
  /// Definition: Color for representation - black.
  @JsonValue('black')
  black,
  /// Display: Color Red
  /// Definition: Color for representation - red.
  @JsonValue('red')
  red,
  /// Display: Color Green
  /// Definition: Color for representation - green.
  @JsonValue('green')
  green,
  /// Display: Color Yellow
  /// Definition: Color for representation - yellow.
  @JsonValue('yellow')
  yellow,
  /// Display: Color Blue
  /// Definition: Color for representation - blue.
  @JsonValue('blue')
  blue,
  /// Display: Color Magenta
  /// Definition: Color for representation - magenta.
  @JsonValue('magenta')
  magenta,
  /// Display: Color Cyan
  /// Definition: Color for representation - cyan.
  @JsonValue('cyan')
  cyan,
  /// Display: Color White
  /// Definition: Color for representation - white.
  @JsonValue('white')
  white,
;

@override
  String toString() {
      switch(this) {
        case black: return 'black';
        case red: return 'red';
        case green: return 'green';
        case yellow: return 'yellow';
        case blue: return 'blue';
        case magenta: return 'magenta';
        case cyan: return 'cyan';
        case white: return 'white';
      }
      }
String toJson() => toString();
  DeviceMetricColor fromString(String str) {
    switch(str) {
      case 'black': return DeviceMetricColor.black;
      case 'red': return DeviceMetricColor.red;
      case 'green': return DeviceMetricColor.green;
      case 'yellow': return DeviceMetricColor.yellow;
      case 'blue': return DeviceMetricColor.blue;
      case 'magenta': return DeviceMetricColor.magenta;
      case 'cyan': return DeviceMetricColor.cyan;
      case 'white': return DeviceMetricColor.white;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 DeviceMetricColor fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

