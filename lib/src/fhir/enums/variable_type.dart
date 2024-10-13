/// The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
enum VariableType {
  /// Display: Dichotomous
  /// Definition: The variable is dichotomous, such as present or absent.
  dichotomous,

  /// Display: Continuous
  /// Definition: The variable is a continuous result such as a quantity.
  continuous,

  /// Display: Descriptive
  /// Definition: The variable is described narratively rather than quantitatively.
  descriptive,
  ;

  @override
  String toString() {
    switch (this) {
      case dichotomous:
        return 'dichotomous';
      case continuous:
        return 'continuous';
      case descriptive:
        return 'descriptive';
    }
  }

  /// Returns a [String] from a [VariableType] enum.
  String toJson() => toString();

  /// Returns a [VariableType] from a [String] enum.
  static VariableType fromString(String str) {
    switch (str) {
      case 'dichotomous':
        return VariableType.dichotomous;
      case 'continuous':
        return VariableType.continuous;
      case 'descriptive':
        return VariableType.descriptive;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [VariableType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static VariableType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
