/// Codes identifying the lifecycle stage of a request.
enum RequestStatus {
  /// Display: Draft
  /// Definition: The request has been created but is not yet complete or ready for action.
  draft,

  /// Display: Active
  /// Definition: The request is in force and ready to be acted upon.
  active,

  /// Display: On Hold
  /// Definition: The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in the future.
  on_hold,

  /// Display: Revoked
  /// Definition: The request (and any implicit authorization to act) has been terminated prior to the known full completion of the intended actions.  No further activity should occur.
  revoked,

  /// Display: Completed
  /// Definition: The activity described by the request has been fully performed.  No further activity will occur.
  completed,

  /// Display: Entered in Error
  /// Definition: This request should never have existed and should be considered 'void'.  (It is possible that real-world decisions were based on it.  If real-world activity has occurred, the status should be "revoked" rather than "entered-in-error".).
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this request.  Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the authoring/source system does not know which.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case draft:
        return 'draft';
      case active:
        return 'active';
      case on_hold:
        return 'on-hold';
      case revoked:
        return 'revoked';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  /// Returns a [String] from a [RequestStatus] enum.
  String toJson() => toString();

  /// Returns a [RequestStatus] from a [String] enum.
  static RequestStatus fromString(String str) {
    switch (str) {
      case 'draft':
        return RequestStatus.draft;
      case 'active':
        return RequestStatus.active;
      case 'on-hold':
        return RequestStatus.on_hold;
      case 'revoked':
        return RequestStatus.revoked;
      case 'completed':
        return RequestStatus.completed;
      case 'entered-in-error':
        return RequestStatus.entered_in_error;
      case 'unknown':
        return RequestStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [RequestStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static RequestStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
