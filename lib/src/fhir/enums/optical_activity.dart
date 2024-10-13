/// The optical rotation type of a substance.
enum OpticalActivity {
  /// Display: dextrorotary
  plus,

  /// Display: levorotary
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

  /// Returns a [String] from a [OpticalActivity] enum.
  String toJson() => toString();

  /// Returns a [OpticalActivity] from a [String] enum.
  static OpticalActivity fromString(String str) {
    switch (str) {
      case '+':
        return OpticalActivity.plus;
      case '-':
        return OpticalActivity.minus;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [OpticalActivity] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static OpticalActivity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
