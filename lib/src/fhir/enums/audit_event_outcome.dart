/// Indicates whether the event succeeded or failed.
enum AuditEventOutcome {
  /// Display: Success
  /// Definition: The operation completed successfully (whether with warnings or not).
  value0,

  /// Display: Minor failure
  /// Definition: The action was not successful due to some kind of minor failure (often equivalent to an HTTP 400 response).
  value4,

  /// Display: Serious failure
  /// Definition: The action was not successful due to some kind of unexpected error (often equivalent to an HTTP 500 response).
  value8,

  /// Display: Major failure
  /// Definition: An error of such magnitude occurred that the system is no longer available for use (i.e. the system died).
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

  /// Returns a [String] from a [AuditEventOutcome] enum.
  String toJson() => toString();

  /// Returns a [AuditEventOutcome] from a [String] enum.
  static AuditEventOutcome fromString(String str) {
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

  /// Returns a [AuditEventOutcome] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AuditEventOutcome fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
