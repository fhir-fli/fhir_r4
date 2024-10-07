import 'package:json_annotation/json_annotation.dart';

/// The type of method used to execute a subscription.
enum SubscriptionChannelType {
  /// Display: Rest Hook
  /// Definition: The channel is executed by making a post to the URI. If a payload is included, the URL is interpreted as the service base, and an update (PUT) is made.
  @JsonValue('rest-hook')
  rest_hook,

  /// Display: Websocket
  /// Definition: The channel is executed by sending a packet across a web socket connection maintained by the client. The URL identifies the websocket, and the client binds to this URL.
  @JsonValue('websocket')
  websocket,

  /// Display: Email
  /// Definition: The channel is executed by sending an email to the email addressed in the URI (which must be a mailto:).
  @JsonValue('email')
  email,

  /// Display: SMS
  /// Definition: The channel is executed by sending an SMS message to the phone number identified in the URL (tel:).
  @JsonValue('sms')
  sms,

  /// Display: Message
  /// Definition: The channel is executed by sending a message (e.g. a Bundle with a MessageHeader resource etc.) to the application identified in the URI.
  @JsonValue('message')
  message,
  ;

  @override
  String toString() {
    switch (this) {
      case rest_hook:
        return 'rest-hook';
      case websocket:
        return 'websocket';
      case email:
        return 'email';
      case sms:
        return 'sms';
      case message:
        return 'message';
    }
  }

  String toJson() => toString();
  SubscriptionChannelType fromString(String str) {
    switch (str) {
      case 'rest-hook':
        return SubscriptionChannelType.rest_hook;
      case 'websocket':
        return SubscriptionChannelType.websocket;
      case 'email':
        return SubscriptionChannelType.email;
      case 'sms':
        return SubscriptionChannelType.sms;
      case 'message':
        return SubscriptionChannelType.message;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SubscriptionChannelType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
