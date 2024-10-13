/// Color of the container cap.
enum ContainerCap {
  /// Display: red cap
  /// Definition: red cap.
  red,

  /// Display: yellow cap
  /// Definition: yellow cap.
  yellow,

  /// Display: dark yellow cap
  /// Definition: dark yellow cap.
  dark_yellow,

  /// Display: grey cap
  /// Definition: grey cap.
  grey,

  /// Display: light blue cap
  /// Definition: light blue cap.
  light_blue,

  /// Display: black cap
  /// Definition: black cap.
  black,

  /// Display: green cap
  /// Definition: green cap.
  green,

  /// Display: light green cap
  /// Definition: light green cap.
  light_green,

  /// Display: lavender cap
  /// Definition: lavender cap.
  lavender,

  /// Display: brown cap
  /// Definition: brown cap.
  brown,

  /// Display: white cap
  /// Definition: white cap.
  white,

  /// Display: pink cap
  /// Definition: pink cap.
  pink,
  ;

  @override
  String toString() {
    switch (this) {
      case red:
        return 'red';
      case yellow:
        return 'yellow';
      case dark_yellow:
        return 'dark-yellow';
      case grey:
        return 'grey';
      case light_blue:
        return 'light-blue';
      case black:
        return 'black';
      case green:
        return 'green';
      case light_green:
        return 'light-green';
      case lavender:
        return 'lavender';
      case brown:
        return 'brown';
      case white:
        return 'white';
      case pink:
        return 'pink';
    }
  }

  /// Returns a [String] from a [ContainerCap] enum.
  String toJson() => toString();

  /// Returns a [ContainerCap] from a [String] enum.
  static ContainerCap fromString(String str) {
    switch (str) {
      case 'red':
        return ContainerCap.red;
      case 'yellow':
        return ContainerCap.yellow;
      case 'dark-yellow':
        return ContainerCap.dark_yellow;
      case 'grey':
        return ContainerCap.grey;
      case 'light-blue':
        return ContainerCap.light_blue;
      case 'black':
        return ContainerCap.black;
      case 'green':
        return ContainerCap.green;
      case 'light-green':
        return ContainerCap.light_green;
      case 'lavender':
        return ContainerCap.lavender;
      case 'brown':
        return ContainerCap.brown;
      case 'white':
        return ContainerCap.white;
      case 'pink':
        return ContainerCap.pink;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContainerCap] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContainerCap fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
