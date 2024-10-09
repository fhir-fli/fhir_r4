import 'package:json_annotation/json_annotation.dart';

/// The reported execution result.
enum TestReportResult {
  /// Display: Pass
  /// Definition: All test operations successfully passed all asserts.
  @JsonValue('pass')
  pass,

  /// Display: Fail
  /// Definition: One or more test operations failed one or more asserts.
  @JsonValue('fail')
  fail,

  /// Display: Pending
  /// Definition: One or more test operations is pending execution completion.
  @JsonValue('pending')
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

  String toJson() => toString();
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

  static TestReportResult fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
