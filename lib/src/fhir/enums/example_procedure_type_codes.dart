/// This value set includes example Procedure Type codes.
enum ExampleProcedureTypeCodes {
  /// Display: Primary procedure
  /// Definition: The first procedure in a series required to produce and overall patient outcome.
  primary,

  /// Display: Secondary procedure
  /// Definition: The second procedure in a series required to produce and overall patient outcome.
  secondary,
  ;

  @override
  String toString() {
    switch (this) {
      case primary:
        return 'primary';
      case secondary:
        return 'secondary';
    }
  }

  /// Returns a [String] from a [ExampleProcedureTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleProcedureTypeCodes] from a [String] enum.
  static ExampleProcedureTypeCodes fromString(String str) {
    switch (str) {
      case 'primary':
        return ExampleProcedureTypeCodes.primary;
      case 'secondary':
        return ExampleProcedureTypeCodes.secondary;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleProcedureTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleProcedureTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
