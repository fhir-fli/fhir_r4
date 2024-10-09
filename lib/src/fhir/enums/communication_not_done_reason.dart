import 'package:json_annotation/json_annotation.dart';

/// Codes for the reason why a communication did not happen.
enum CommunicationNotDoneReason {
  /// Display: Unknown
  /// Definition: The communication was not done due to an unknown reason.
  @JsonValue('unknown')
  unknown,

  /// Display: System Error
  /// Definition: The communication was not done due to a system error.
  @JsonValue('system-error')
  system_error,

  /// Display: Invalid Phone Number
  /// Definition: The communication was not done due to an invalid phone number.
  @JsonValue('invalid-phone-number')
  invalid_phone_number,

  /// Display: Recipient Unavailable
  /// Definition: The communication was not done due to the recipient being unavailable.
  @JsonValue('recipient-unavailable')
  recipient_unavailable,

  /// Display: Family Objection
  /// Definition: The communication was not done due to a family objection.
  @JsonValue('family-objection')
  family_objection,

  /// Display: Patient Objection
  /// Definition: The communication was not done due to a patient objection.
  @JsonValue('patient-objection')
  patient_objection,
  ;

  @override
  String toString() {
    switch (this) {
      case unknown:
        return 'unknown';
      case system_error:
        return 'system-error';
      case invalid_phone_number:
        return 'invalid-phone-number';
      case recipient_unavailable:
        return 'recipient-unavailable';
      case family_objection:
        return 'family-objection';
      case patient_objection:
        return 'patient-objection';
    }
  }

  String toJson() => toString();
  static CommunicationNotDoneReason fromString(String str) {
    switch (str) {
      case 'unknown':
        return CommunicationNotDoneReason.unknown;
      case 'system-error':
        return CommunicationNotDoneReason.system_error;
      case 'invalid-phone-number':
        return CommunicationNotDoneReason.invalid_phone_number;
      case 'recipient-unavailable':
        return CommunicationNotDoneReason.recipient_unavailable;
      case 'family-objection':
        return CommunicationNotDoneReason.family_objection;
      case 'patient-objection':
        return CommunicationNotDoneReason.patient_objection;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CommunicationNotDoneReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
