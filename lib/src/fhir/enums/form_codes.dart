/// This value set includes a sample set of Forms codes.
enum FormCodes {
  /// Display: Form #1
  /// Definition: Example: The #1 form to be used when printing this information.
  value1,

  /// Display: Form #1
  /// Definition: Example: The #2 form to be used when printing this information.
  value2,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
    }
  }

  /// Returns a [String] from a [FormCodes] enum.
  String toJson() => toString();

  /// Returns a [FormCodes] from a [String] enum.
  static FormCodes fromString(String str) {
    switch (str) {
      case '1':
        return FormCodes.value1;
      case '2':
        return FormCodes.value2;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [FormCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static FormCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
