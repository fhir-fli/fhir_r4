import 'package:json_annotation/json_annotation.dart';

/// The status of the episode of care.
enum EpisodeOfCareStatus {
  /// Display: Planned
  /// Definition: This episode of care is planned to start at the date specified in the period.start. During this status, an organization may perform assessments to determine if the patient is eligible to receive services, or be organizing to make resources available to provide care services.
  @JsonValue('planned')
  planned,
  /// Display: Waitlist
  /// Definition: This episode has been placed on a waitlist, pending the episode being made active (or cancelled).
  @JsonValue('waitlist')
  waitlist,
  /// Display: Active
  /// Definition: This episode of care is current.
  @JsonValue('active')
  active,
  /// Display: On Hold
  /// Definition: This episode of care is on hold; the organization has limited responsibility for the patient (such as while on respite).
  @JsonValue('onhold')
  onhold,
  /// Display: Finished
  /// Definition: This episode of care is finished and the organization is not expecting to be providing further care to the patient. Can also be known as "closed", "completed" or other similar terms.
  @JsonValue('finished')
  finished,
  /// Display: Cancelled
  /// Definition: The episode of care was cancelled, or withdrawn from service, often selected during the planned stage as the patient may have gone elsewhere, or the circumstances have changed and the organization is unable to provide the care. It indicates that services terminated outside the planned/expected workflow.
  @JsonValue('cancelled')
  cancelled,
  /// Display: Entered in Error
  /// Definition: This instance should not have been part of this patient's medical record.
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case planned: return 'planned';
        case waitlist: return 'waitlist';
        case active: return 'active';
        case onhold: return 'onhold';
        case finished: return 'finished';
        case cancelled: return 'cancelled';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  EpisodeOfCareStatus fromString(String str) {
    switch(str) {
      case 'planned': return EpisodeOfCareStatus.planned;
      case 'waitlist': return EpisodeOfCareStatus.waitlist;
      case 'active': return EpisodeOfCareStatus.active;
      case 'onhold': return EpisodeOfCareStatus.onhold;
      case 'finished': return EpisodeOfCareStatus.finished;
      case 'cancelled': return EpisodeOfCareStatus.cancelled;
      case 'entered-in-error': return EpisodeOfCareStatus.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 EpisodeOfCareStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

