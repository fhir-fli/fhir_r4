/// The status of a guidance response.
enum GuidanceResponseStatus {
  /// Display: Success
  /// Definition: The request was processed successfully.
  success,

  /// Display: Data Requested
  /// Definition: The request was processed successfully, but more data may result in a more complete evaluation.
  data_requested,

  /// Display: Data Required
  /// Definition: The request was processed, but more data is required to complete the evaluation.
  data_required,

  /// Display: In Progress
  /// Definition: The request is currently being processed.
  in_progress,

  /// Display: Failure
  /// Definition: The request was not processed successfully.
  failure,

  /// Display: Entered In Error
  /// Definition: The response was entered in error.
  entered_in_error,
  ;

  @override
  String toString() {
    switch (this) {
      case success:
        return 'success';
      case data_requested:
        return 'data-requested';
      case data_required:
        return 'data-required';
      case in_progress:
        return 'in-progress';
      case failure:
        return 'failure';
      case entered_in_error:
        return 'entered-in-error';
    }
  }

  String toJson() => toString();
  static GuidanceResponseStatus fromString(String str) {
    switch (str) {
      case 'success':
        return GuidanceResponseStatus.success;
      case 'data-requested':
        return GuidanceResponseStatus.data_requested;
      case 'data-required':
        return GuidanceResponseStatus.data_required;
      case 'in-progress':
        return GuidanceResponseStatus.in_progress;
      case 'failure':
        return GuidanceResponseStatus.failure;
      case 'entered-in-error':
        return GuidanceResponseStatus.entered_in_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GuidanceResponseStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
