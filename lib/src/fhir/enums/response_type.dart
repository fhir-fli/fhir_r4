/// The kind of response to a message.
enum ResponseType {
  /// Display: OK
  /// Definition: The message was accepted and processed without error.
  ok,

  /// Display: Transient Error
  /// Definition: Some internal unexpected error occurred - wait and try again. Note - this is usually used for things like database unavailable, which may be expected to resolve, though human intervention may be required.
  transient_error,

  /// Display: Fatal Error
  /// Definition: The message was rejected because of a problem with the content. There is no point in re-sending without change. The response narrative SHALL describe the issue.
  fatal_error,
  ;

  @override
  String toString() {
    switch (this) {
      case ok:
        return 'ok';
      case transient_error:
        return 'transient-error';
      case fatal_error:
        return 'fatal-error';
    }
  }

  String toJson() => toString();
  static ResponseType fromString(String str) {
    switch (str) {
      case 'ok':
        return ResponseType.ok;
      case 'transient-error':
        return ResponseType.transient_error;
      case 'fatal-error':
        return ResponseType.fatal_error;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ResponseType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
