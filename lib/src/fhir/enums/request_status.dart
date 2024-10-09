import 'package:json_annotation/json_annotation.dart';

/// Codes identifying the lifecycle stage of a request.
enum RequestStatus {
  /// Display: Draft
  /// Definition: The request has been created but is not yet complete or ready for action.
  @JsonValue('draft')
  draft,

  /// Display: Active
  /// Definition: The request is in force and ready to be acted upon.
  @JsonValue('active')
  active,

  /// Display: On Hold
  /// Definition: The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in the future.
  @JsonValue('on-hold')
  on_hold,

  /// Display: Revoked
  /// Definition: The request (and any implicit authorization to act) has been terminated prior to the known full completion of the intended actions.  No further activity should occur.
  @JsonValue('revoked')
  revoked,

  /// Display: Completed
  /// Definition: The activity described by the request has been fully performed.  No further activity will occur.
  @JsonValue('completed')
  completed,

  /// Display: Entered in Error
  /// Definition: This request should never have existed and should be considered 'void'.  (It is possible that real-world decisions were based on it.  If real-world activity has occurred, the status should be "revoked" rather than "entered-in-error".).
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this request.  Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply,  but the authoring/source system does not know which.
  @JsonValue('unknown')
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

  String toJson() => toString();
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

  static RequestStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
