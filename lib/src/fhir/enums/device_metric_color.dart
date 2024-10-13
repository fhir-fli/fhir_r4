/// Describes the typical color of representation.
enum DeviceMetricColor {
  /// Display: Color Black
  /// Definition: Color for representation - black.
  black,

  /// Display: Color Red
  /// Definition: Color for representation - red.
  red,

  /// Display: Color Green
  /// Definition: Color for representation - green.
  green,

  /// Display: Color Yellow
  /// Definition: Color for representation - yellow.
  yellow,

  /// Display: Color Blue
  /// Definition: Color for representation - blue.
  blue,

  /// Display: Color Magenta
  /// Definition: Color for representation - magenta.
  magenta,

  /// Display: Color Cyan
  /// Definition: Color for representation - cyan.
  cyan,

  /// Display: Color White
  /// Definition: Color for representation - white.
  white,
  ;

  @override
  String toString() {
    switch (this) {
      case black:
        return 'black';
      case red:
        return 'red';
      case green:
        return 'green';
      case yellow:
        return 'yellow';
      case blue:
        return 'blue';
      case magenta:
        return 'magenta';
      case cyan:
        return 'cyan';
      case white:
        return 'white';
    }
  }

  /// Returns a [String] from a [DeviceMetricColor] enum.
  String toJson() => toString();

  /// Returns a [DeviceMetricColor] from a [String] enum.
  static DeviceMetricColor fromString(String str) {
    switch (str) {
      case 'black':
        return DeviceMetricColor.black;
      case 'red':
        return DeviceMetricColor.red;
      case 'green':
        return DeviceMetricColor.green;
      case 'yellow':
        return DeviceMetricColor.yellow;
      case 'blue':
        return DeviceMetricColor.blue;
      case 'magenta':
        return DeviceMetricColor.magenta;
      case 'cyan':
        return DeviceMetricColor.cyan;
      case 'white':
        return DeviceMetricColor.white;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DeviceMetricColor] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DeviceMetricColor fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
