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

  String toJson() => toString();
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

  static ExampleCoverageFinancialExceptionCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
