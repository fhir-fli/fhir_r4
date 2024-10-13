/// Codes for general categories of communications such as alerts, instructions, etc.
enum CommunicationCategory {
  /// Display: Alert
  /// Definition: The communication conveys an alert.
  alert,

  /// Display: Notification
  /// Definition: The communication conveys a notification.
  notification,

  /// Display: Reminder
  /// Definition: The communication conveys a reminder.
  reminder,

  /// Display: Instruction
  /// Definition: The communication conveys an instruction.
  instruction,
  ;

  @override
  String toString() {
    switch (this) {
      case alert:
        return 'alert';
      case notification:
        return 'notification';
      case reminder:
        return 'reminder';
      case instruction:
        return 'instruction';
    }
  }

  /// Returns a [String] from a [CommunicationCategory] enum.
  String toJson() => toString();

  /// Returns a [CommunicationCategory] from a [String] enum.
  static CommunicationCategory fromString(String str) {
    switch (str) {
      case 'alert':
        return CommunicationCategory.alert;
      case 'notification':
        return CommunicationCategory.notification;
      case 'reminder':
        return CommunicationCategory.reminder;
      case 'instruction':
        return CommunicationCategory.instruction;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CommunicationCategory] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CommunicationCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
