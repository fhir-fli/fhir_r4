import 'package:json_annotation/json_annotation.dart';

/// The mode of a message capability statement.
enum EventCapabilityMode {
  /// Display: Sender
  /// Definition: The application sends requests and receives responses.
  @JsonValue('sender')
  sender,
  /// Display: Receiver
  /// Definition: The application receives requests and sends responses.
  @JsonValue('receiver')
  receiver,
;

@override
  String toString() {
      switch(this) {
        case sender: return 'sender';
        case receiver: return 'receiver';
      }
      }
String toJson() => toString();
  EventCapabilityMode fromString(String str) {
    switch(str) {
      case 'sender': return EventCapabilityMode.sender;
      case 'receiver': return EventCapabilityMode.receiver;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 EventCapabilityMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
