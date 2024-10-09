import 'package:json_annotation/json_annotation.dart';

/// Current state of the encounter.
enum EncounterStatus {
  /// Display: Planned
  /// Definition: The Encounter has not yet started.
  @JsonValue('planned')
  planned,

  /// Display: Arrived
  /// Definition: The Patient is present for the encounter, however is not currently meeting with a practitioner.
  @JsonValue('arrived')
  arrived,

  /// Display: Triaged
  /// Definition: The patient has been assessed for the priority of their treatment based on the severity of their condition.
  @JsonValue('triaged')
  triaged,

  /// Display: In Progress
  /// Definition: The Encounter has begun and the patient is present / the practitioner and the patient are meeting.
  @JsonValue('in-progress')
  in_progress,

  /// Display: On Leave
  /// Definition: The Encounter has begun, but the patient is temporarily on leave.
  @JsonValue('onleave')
  onleave,

  /// Display: Finished
  /// Definition: The Encounter has ended.
  @JsonValue('finished')
  finished,

  /// Display: Cancelled
  /// Definition: The Encounter has ended before it has begun.
  @JsonValue('cancelled')
  cancelled,

  /// Display: Entered in Error
  /// Definition: This instance should not have been part of this patient's medical record.
  @JsonValue('entered-in-error')
  entered_in_error,

  /// Display: Unknown
  /// Definition: The encounter status is unknown. Note that "unknown" is a value of last resort and every attempt should be made to provide a meaningful value other than "unknown".
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case planned:
        return 'planned';
      case arrived:
        return 'arrived';
      case triaged:
        return 'triaged';
      case in_progress:
        return 'in-progress';
      case onleave:
        return 'onleave';
      case finished:
        return 'finished';
      case cancelled:
        return 'cancelled';
      case entered_in_error:
        return 'entered-in-error';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static EncounterStatus fromString(String str) {
    switch (str) {
      case 'planned':
        return EncounterStatus.planned;
      case 'arrived':
        return EncounterStatus.arrived;
      case 'triaged':
        return EncounterStatus.triaged;
      case 'in-progress':
        return EncounterStatus.in_progress;
      case 'onleave':
        return EncounterStatus.onleave;
      case 'finished':
        return EncounterStatus.finished;
      case 'cancelled':
        return EncounterStatus.cancelled;
      case 'entered-in-error':
        return EncounterStatus.entered_in_error;
      case 'unknown':
        return EncounterStatus.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EncounterStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
