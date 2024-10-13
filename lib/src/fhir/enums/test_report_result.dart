/// The reported execution result.
enum TestReportResult {
  /// Display: Pass
  /// Definition: All test operations successfully passed all asserts.
  pass,

  /// Display: Fail
  /// Definition: One or more test operations failed one or more asserts.
  fail,

  /// Display: Pending
  /// Definition: One or more test operations is pending execution completion.
  pending,
  ;

  @override
  String toString() {
    switch (this) {
      case pass:
        return 'pass';
      case fail:
        return 'fail';
      case pending:
        return 'pending';
    }
  }

  /// Returns a [String] from a [TestReportResult] enum.
  String toJson() => toString();

  /// Returns a [TestReportResult] from a [String] enum.
  static TestReportResult fromString(String str) {
    switch (str) {
      case 'pass':
        return TestReportResult.pass;
      case 'fail':
        return TestReportResult.fail;
      case 'pending':
        return TestReportResult.pending;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [TestReportResult] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static TestReportResult fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
