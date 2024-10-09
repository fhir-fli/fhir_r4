/// The type of participant for the action.
enum ActionParticipantType {
  /// Display: Patient
  /// Definition: The participant is the patient under evaluation.
  patient,

  /// Display: Practitioner
  /// Definition: The participant is a practitioner involved in the patient's care.
  practitioner,

  /// Display: Related Person
  /// Definition: The participant is a person related to the patient.
  related_person,

  /// Display: Device
  /// Definition: The participant is a system or device used in the care of the patient.
  device,
  ;

  @override
  String toString() {
    switch (this) {
      case patient:
        return 'patient';
      case practitioner:
        return 'practitioner';
      case related_person:
        return 'related-person';
      case device:
        return 'device';
    }
  }

  String toJson() => toString();
  static ActionParticipantType fromString(String str) {
    switch (str) {
      case 'patient':
        return ActionParticipantType.patient;
      case 'practitioner':
        return ActionParticipantType.practitioner;
      case 'related-person':
        return ActionParticipantType.related_person;
      case 'device':
        return ActionParticipantType.device;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ActionParticipantType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
