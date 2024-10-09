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

  String toJson() => toString();
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

  static ExampleProcedureTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
