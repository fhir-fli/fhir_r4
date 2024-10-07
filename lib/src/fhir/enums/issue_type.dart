import 'package:json_annotation/json_annotation.dart';

/// A code that describes the type of issue.
enum IssueType {
  /// Display: Invalid Content
  /// Definition: Content invalid against the specification or a profile.
  @JsonValue('invalid')
  invalid,

  /// Display: Security Problem
  /// Definition: An authentication/authorization/permissions issue of some kind.
  @JsonValue('security')
  security,

  /// Display: Processing Failure
  /// Definition: Processing issues. These are expected to be final e.g. there is no point resubmitting the same content unchanged.
  @JsonValue('processing')
  processing,

  /// Display: Transient Issue
  /// Definition: Transient processing issues. The system receiving the message may be able to resubmit the same content once an underlying issue is resolved.
  @JsonValue('transient')
  transient,

  /// Display: Informational Note
  /// Definition: A message unrelated to the processing success of the completed operation (examples of the latter include things like reminders of password expiry, system maintenance times, etc.).
  @JsonValue('informational')
  informational,
  ;

  @override
  String toString() {
    switch (this) {
      case invalid:
        return 'invalid';
      case security:
        return 'security';
      case processing:
        return 'processing';
      case transient:
        return 'transient';
      case informational:
        return 'informational';
    }
  }

  String toJson() => toString();
  IssueType fromString(String str) {
    switch (str) {
      case 'invalid':
        return IssueType.invalid;
      case 'security':
        return IssueType.security;
      case 'processing':
        return IssueType.processing;
      case 'transient':
        return IssueType.transient;
      case 'informational':
        return IssueType.informational;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  IssueType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
