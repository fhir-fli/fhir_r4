import 'package:json_annotation/json_annotation.dart';

/// The results of executing an action.
enum TestReportActionResult {
  /// Display: Pass
  /// Definition: The action was successful.
  @JsonValue('pass')
  pass,

  /// Display: Skip
  /// Definition: The action was skipped.
  @JsonValue('skip')
  skip,

  /// Display: Fail
  /// Definition: The action failed.
  @JsonValue('fail')
  fail,

  /// Display: Warning
  /// Definition: The action passed but with warnings.
  @JsonValue('warning')
  warning,

  /// Display: Error
  /// Definition: The action encountered a fatal error and the engine was unable to process.
  @JsonValue('error')
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

  String toJson() => toString();
  TestReportActionResult fromString(String str) {
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

  TestReportActionResult fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
