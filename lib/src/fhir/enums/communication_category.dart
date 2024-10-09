import 'package:json_annotation/json_annotation.dart';

/// Codes for general categories of communications such as alerts, instructions, etc.
enum CommunicationCategory {
  /// Display: Alert
  /// Definition: The communication conveys an alert.
  @JsonValue('alert')
  alert,

  /// Display: Notification
  /// Definition: The communication conveys a notification.
  @JsonValue('notification')
  notification,

  /// Display: Reminder
  /// Definition: The communication conveys a reminder.
  @JsonValue('reminder')
  reminder,

  /// Display: Instruction
  /// Definition: The communication conveys an instruction.
  @JsonValue('instruction')
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

  String toJson() => toString();
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

  static CommunicationCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
