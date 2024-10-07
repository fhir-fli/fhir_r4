import 'package:json_annotation/json_annotation.dart';

/// Color of the container cap.
enum ContainerCap {
  /// Display: red cap
  /// Definition: red cap.
  @JsonValue('red')
  red,
  /// Display: yellow cap
  /// Definition: yellow cap.
  @JsonValue('yellow')
  yellow,
  /// Display: dark yellow cap
  /// Definition: dark yellow cap.
  @JsonValue('dark-yellow')
  dark_yellow,
  /// Display: grey cap
  /// Definition: grey cap.
  @JsonValue('grey')
  grey,
  /// Display: light blue cap
  /// Definition: light blue cap.
  @JsonValue('light-blue')
  light_blue,
  /// Display: black cap
  /// Definition: black cap.
  @JsonValue('black')
  black,
  /// Display: green cap
  /// Definition: green cap.
  @JsonValue('green')
  green,
  /// Display: light green cap
  /// Definition: light green cap.
  @JsonValue('light-green')
  light_green,
  /// Display: lavender cap
  /// Definition: lavender cap.
  @JsonValue('lavender')
  lavender,
  /// Display: brown cap
  /// Definition: brown cap.
  @JsonValue('brown')
  brown,
  /// Display: white cap
  /// Definition: white cap.
  @JsonValue('white')
  white,
  /// Display: pink cap
  /// Definition: pink cap.
  @JsonValue('pink')
  pink,
;

@override
  String toString() {
      switch(this) {
        case red: return 'red';
        case yellow: return 'yellow';
        case dark_yellow: return 'dark-yellow';
        case grey: return 'grey';
        case light_blue: return 'light-blue';
        case black: return 'black';
        case green: return 'green';
        case light_green: return 'light-green';
        case lavender: return 'lavender';
        case brown: return 'brown';
        case white: return 'white';
        case pink: return 'pink';
      }
      }
String toJson() => toString();
  ContainerCap fromString(String str) {
    switch(str) {
      case 'red': return ContainerCap.red;
      case 'yellow': return ContainerCap.yellow;
      case 'dark-yellow': return ContainerCap.dark_yellow;
      case 'grey': return ContainerCap.grey;
      case 'light-blue': return ContainerCap.light_blue;
      case 'black': return ContainerCap.black;
      case 'green': return ContainerCap.green;
      case 'light-green': return ContainerCap.light_green;
      case 'lavender': return ContainerCap.lavender;
      case 'brown': return ContainerCap.brown;
      case 'white': return ContainerCap.white;
      case 'pink': return ContainerCap.pink;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContainerCap fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

