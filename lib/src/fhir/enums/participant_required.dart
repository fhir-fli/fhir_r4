import 'package:json_annotation/json_annotation.dart';

/// Is the Participant required to attend the appointment.
enum ParticipantRequired {
  /// Display: Required
  /// Definition: The participant is required to attend the appointment.
  @JsonValue('required')
  required_,

  /// Display: Optional
  /// Definition: The participant may optionally attend the appointment.
  @JsonValue('optional')
  optional,

  /// Display: Information Only
  /// Definition: The participant is excluded from the appointment, and might not be informed of the appointment taking place. (Appointment is about them, not for them - such as 2 doctors discussing results about a patient's test).
  @JsonValue('information-only')
  information_only,
  ;

  @override
  String toString() {
    switch (this) {
      case required_:
        return 'required';
      case optional:
        return 'optional';
      case information_only:
        return 'information-only';
    }
  }

  String toJson() => toString();
  ParticipantRequired fromString(String str) {
    switch (str) {
      case 'required':
        return ParticipantRequired.required_;
      case 'optional':
        return ParticipantRequired.optional;
      case 'information-only':
        return ParticipantRequired.information_only;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  ParticipantRequired fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
