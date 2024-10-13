/// This value set includes Example Coverage Financial Exception Codes.
enum ExampleCoverageFinancialExceptionCodes {
  /// Display: Retired
  /// Definition: Retired persons have all copays and deductibles reduced.
  retired,

  /// Display: Foster child
  /// Definition: Children in the foster care have all copays and deductibles waived.
  foster,
  ;

  @override
  String toString() {
    switch (this) {
      case retired:
        return 'retired';
      case foster:
        return 'foster';
    }
  }

  /// Returns a [String] from a [ExampleCoverageFinancialExceptionCodes] enum.
  String toJson() => toString();

  /// Returns a [ExampleCoverageFinancialExceptionCodes] from a [String] enum.
  static ExampleCoverageFinancialExceptionCodes fromString(String str) {
    switch (str) {
      case 'retired':
        return ExampleCoverageFinancialExceptionCodes.retired;
      case 'foster':
        return ExampleCoverageFinancialExceptionCodes.foster;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ExampleCoverageFinancialExceptionCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ExampleCoverageFinancialExceptionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
