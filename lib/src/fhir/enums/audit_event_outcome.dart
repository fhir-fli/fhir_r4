import 'package:json_annotation/json_annotation.dart';

/// Indicates whether the event succeeded or failed.
enum AuditEventOutcome {
  /// Display: Success
  /// Definition: The operation completed successfully (whether with warnings or not).
  @JsonValue('0')
  value0,

  /// Display: Minor failure
  /// Definition: The action was not successful due to some kind of minor failure (often equivalent to an HTTP 400 response).
  @JsonValue('4')
  value4,

  /// Display: Serious failure
  /// Definition: The action was not successful due to some kind of unexpected error (often equivalent to an HTTP 500 response).
  @JsonValue('8')
  value8,

  /// Display: Major failure
  /// Definition: An error of such magnitude occurred that the system is no longer available for use (i.e. the system died).
  @JsonValue('12')
  value12,
  ;

  @override
  String toString() {
    switch (this) {
      case value0:
        return '0';
      case value4:
        return '4';
      case value8:
        return '8';
      case value12:
        return '12';
    }
  }

  String toJson() => toString();
  AuditEventOutcome fromString(String str) {
    switch (str) {
      case '0':
        return AuditEventOutcome.value0;
      case '4':
        return AuditEventOutcome.value4;
      case '8':
        return AuditEventOutcome.value8;
      case '12':
        return AuditEventOutcome.value12;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AuditEventOutcome fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
