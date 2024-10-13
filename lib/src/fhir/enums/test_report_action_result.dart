/// The results of executing an action.
enum TestReportActionResult {
  /// Display: Pass
  /// Definition: The action was successful.
  pass,

  /// Display: Skip
  /// Definition: The action was skipped.
  skip,

  /// Display: Fail
  /// Definition: The action failed.
  fail,

  /// Display: Warning
  /// Definition: The action passed but with warnings.
  warning,

  /// Display: Error
  /// Definition: The action encountered a fatal error and the engine was unable to process.
  error,
  ;

  @override
  String toString() {
    switch (this) {
      case pass:
        return 'pass';
      case skip:
        return 'skip';
      case fail:
        return 'fail';
      case warning:
        return 'warning';
      case error:
        return 'error';
    }
  }

  /// Returns a [String] from a [TestReportActionResult] enum.
  String toJson() => toString();

  /// Returns a [TestReportActionResult] from a [String] enum.
  static TestReportActionResult fromString(String str) {
    switch (str) {
      case 'pass':
        return TestReportActionResult.pass;
      case 'skip':
        return TestReportActionResult.skip;
      case 'fail':
        return TestReportActionResult.fail;
      case 'warning':
        return TestReportActionResult.warning;
      case 'error':
        return TestReportActionResult.error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [TestReportActionResult] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static TestReportActionResult fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
