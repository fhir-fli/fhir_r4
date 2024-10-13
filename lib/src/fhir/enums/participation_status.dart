/// The Participation status of an appointment.
enum ParticipationStatus {
  /// Display: Accepted
  /// Definition: The participant has accepted the appointment.
  accepted,

  /// Display: Declined
  /// Definition: The participant has declined the appointment and will not participate in the appointment.
  declined,

  /// Display: Tentative
  /// Definition: The participant has  tentatively accepted the appointment. This could be automatically created by a system and requires further processing before it can be accepted. There is no commitment that attendance will occur.
  tentative,

  /// Display: Needs Action
  /// Definition: The participant needs to indicate if they accept the appointment by changing this status to one of the other statuses.
  needs_action,
  ;

  @override
  String toString() {
    switch (this) {
      case accepted:
        return 'accepted';
      case declined:
        return 'declined';
      case tentative:
        return 'tentative';
      case needs_action:
        return 'needs-action';
    }
  }

  /// Returns a [String] from a [ParticipationStatus] enum.
  String toJson() => toString();

  /// Returns a [ParticipationStatus] from a [String] enum.
  static ParticipationStatus fromString(String str) {
    switch (str) {
      case 'accepted':
        return ParticipationStatus.accepted;
      case 'declined':
        return ParticipationStatus.declined;
      case 'tentative':
        return ParticipationStatus.tentative;
      case 'needs-action':
        return ParticipationStatus.needs_action;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ParticipationStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ParticipationStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
