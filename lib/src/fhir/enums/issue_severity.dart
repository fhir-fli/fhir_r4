import 'package:json_annotation/json_annotation.dart';

/// How the issue affects the success of the action.
enum IssueSeverity {
  /// Display: Fatal
  /// Definition: The issue caused the action to fail and no further checking could be performed.
  @JsonValue('fatal')
  fatal,

  /// Display: Error
  /// Definition: The issue is sufficiently important to cause the action to fail.
  @JsonValue('error')
  error,

  /// Display: Warning
  /// Definition: The issue is not important enough to cause the action to fail but may cause it to be performed suboptimally or in a way that is not as desired.
  @JsonValue('warning')
  warning,

  /// Display: Information
  /// Definition: The issue has no relation to the degree of success of the action.
  @JsonValue('information')
  information,
  ;

  @override
  String toString() {
    switch (this) {
      case fatal:
        return 'fatal';
      case error:
        return 'error';
      case warning:
        return 'warning';
      case information:
        return 'information';
    }
  }

  String toJson() => toString();
  IssueSeverity fromString(String str) {
    switch (str) {
      case 'fatal':
        return IssueSeverity.fatal;
      case 'error':
        return IssueSeverity.error;
      case 'warning':
        return IssueSeverity.warning;
      case 'information':
        return IssueSeverity.information;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  IssueSeverity fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
