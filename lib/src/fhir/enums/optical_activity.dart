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

  String toJson() => toString();
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

  static OpticalActivity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
