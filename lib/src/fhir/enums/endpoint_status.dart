/// The status of the endpoint.
enum EndpointStatus {
  /// Display: Active
  /// Definition: This endpoint is expected to be active and can be used.
  active,

  /// Display: Suspended
  /// Definition: This endpoint is temporarily unavailable.
  suspended,

  /// Display: Error
  /// Definition: This endpoint has exceeded connectivity thresholds and is considered in an error state and should no longer be attempted to connect to until corrective action is taken.
  error,

  /// Display: Off
  /// Definition: This endpoint is no longer to be used.
  off,

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error,

  /// Display: Test
  /// Definition: This endpoint is not intended for production usage.
  test,
  ;

  @override
  String toString() {
    switch (this) {
      case active:
        return 'active';
      case suspended:
        return 'suspended';
      case error:
        return 'error';
      case off:
        return 'off';
      case entered_in_error:
        return 'entered-in-error';
      case test:
        return 'test';
    }
  }

  String toJson() => toString();
  static EndpointStatus fromString(String str) {
    switch (str) {
      case 'active':
        return EndpointStatus.active;
      case 'suspended':
        return EndpointStatus.suspended;
      case 'error':
        return EndpointStatus.error;
      case 'off':
        return EndpointStatus.off;
      case 'entered-in-error':
        return EndpointStatus.entered_in_error;
      case 'test':
        return EndpointStatus.test;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EndpointStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
