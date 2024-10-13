/// A unit of time (units from UCUM).
enum UnitsOfTime {
  /// Display: second
  s,

  /// Display: minute
  min,

  /// Display: hour
  h,

  /// Display: day
  d,

  /// Display: week
  wk,

  /// Display: month
  mo,

  /// Display: year
  a,
  ;

  @override
  String toString() {
    switch (this) {
      case s:
        return 's';
      case min:
        return 'min';
      case h:
        return 'h';
      case d:
        return 'd';
      case wk:
        return 'wk';
      case mo:
        return 'mo';
      case a:
        return 'a';
    }
  }

  /// Returns a [String] from a [UnitsOfTime] enum.
  String toJson() => toString();

  /// Returns a [UnitsOfTime] from a [String] enum.
  static UnitsOfTime fromString(String str) {
    switch (str) {
      case 's':
        return UnitsOfTime.s;
      case 'min':
        return UnitsOfTime.min;
      case 'h':
        return UnitsOfTime.h;
      case 'd':
        return UnitsOfTime.d;
      case 'wk':
        return UnitsOfTime.wk;
      case 'mo':
        return UnitsOfTime.mo;
      case 'a':
        return UnitsOfTime.a;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [UnitsOfTime] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static UnitsOfTime fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
