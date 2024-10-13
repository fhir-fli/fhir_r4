/// The outcome of the processing.
enum RemittanceOutcome {
  /// Display: Queued
  /// Definition: The Claim/Pre-authorization/Pre-determination has been received but processing has not begun.
  queued,

  /// Display: Complete
  /// Definition: The processing completed without errors.
  complete,

  /// Display: Error
  /// Definition: The processing identified errors.
  error,

  /// Display: Partial
  /// Definition: No errors have been detected and some of the adjudication has been performed.
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

  /// Returns a [String] from a [RemittanceOutcome] enum.
  String toJson() => toString();

  /// Returns a [RemittanceOutcome] from a [String] enum.
  static RemittanceOutcome fromString(String str) {
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

  /// Returns a [RemittanceOutcome] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static RemittanceOutcome fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
