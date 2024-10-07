import 'package:json_annotation/json_annotation.dart';

/// Status of the supply request.
enum SupplyRequestStatus {
  /// Display: Draft
  /// Definition: The request has been created but is not yet complete or ready for action.
  @JsonValue('draft')
  draft,

  /// Display: Active
  /// Definition: The request is ready to be acted upon.
  @JsonValue('active')
  active,

  /// Display: Suspended
  /// Definition: The authorization/request to act has been temporarily withdrawn but is expected to resume in the future.
  @JsonValue('suspended')
  suspended,

  /// Display: Cancelled
  /// Definition: The authorization/request to act has been terminated prior to the full completion of the intended actions.  No further activity should occur.
  @JsonValue('cancelled')
  cancelled,

  /// Display: Completed
  /// Definition: Activity against the request has been sufficiently completed to the satisfaction of the requester.
  @JsonValue('completed')
  completed,

  /// Display: Entered in Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
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
      case suspended:
        return 'suspended';
      case cancelled:
        return 'cancelled';
      case completed:
        return 'completed';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  SupplyRequestStatus fromString(String str) {
    switch (str) {
      case 'draft':
        return SupplyRequestStatus.draft;
      case 'active':
        return SupplyRequestStatus.active;
      case 'suspended':
        return SupplyRequestStatus.suspended;
      case 'cancelled':
        return SupplyRequestStatus.cancelled;
      case 'completed':
        return SupplyRequestStatus.completed;
      case 'entered-in-error':
        return SupplyRequestStatus.entered_in_error;
      case 'unknown':
        return SupplyRequestStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SupplyRequestStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
