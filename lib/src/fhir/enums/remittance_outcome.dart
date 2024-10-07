import 'package:json_annotation/json_annotation.dart';

/// The outcome of the processing.
enum RemittanceOutcome {
  /// Display: Queued
  /// Definition: The Claim/Pre-authorization/Pre-determination has been received but processing has not begun.
  @JsonValue('queued')
  queued,

  /// Display: Complete
  /// Definition: The processing completed without errors.
  @JsonValue('complete')
  complete,

  /// Display: Error
  /// Definition: The processing identified errors.
  @JsonValue('error')
  error,

  /// Display: Partial
  /// Definition: No errors have been detected and some of the adjudication has been performed.
  @JsonValue('partial')
  partial,
  ;

  @override
  String toString() {
    switch (this) {
      case queued:
        return 'queued';
      case complete:
        return 'complete';
      case error:
        return 'error';
      case partial:
        return 'partial';
    }
  }

  String toJson() => toString();
  RemittanceOutcome fromString(String str) {
    switch (str) {
      case 'queued':
        return RemittanceOutcome.queued;
      case 'complete':
        return RemittanceOutcome.complete;
      case 'error':
        return RemittanceOutcome.error;
      case 'partial':
        return RemittanceOutcome.partial;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  RemittanceOutcome fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
