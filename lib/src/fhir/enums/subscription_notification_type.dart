import 'package:json_annotation/json_annotation.dart';

/// The type of notification represented by the status message.
enum SubscriptionNotificationType {
  /// Display: Handshake
  /// Definition: The status was generated as part of the setup or verification of a communications channel.
  @JsonValue('handshake')
  handshake,

  /// Display: Heartbeat
  /// Definition: The status was generated to perform a heartbeat notification to the subscriber.
  @JsonValue('heartbeat')
  heartbeat,

  /// Display: Event Notification
  /// Definition: The status was generated for an event to the subscriber.
  @JsonValue('event-notification')
  event_notification,

  /// Display: Query Status
  /// Definition: The status was generated in response to a status query/request.
  @JsonValue('query-status')
  query_status,

  /// Display: Query Event
  /// Definition: The status was generated in response to an event query/request.
  @JsonValue('query-event')
  query_event,
  ;

  @override
  String toString() {
    switch (this) {
      case handshake:
        return 'handshake';
      case heartbeat:
        return 'heartbeat';
      case event_notification:
        return 'event-notification';
      case query_status:
        return 'query-status';
      case query_event:
        return 'query-event';
    }
  }

  String toJson() => toString();
  static SubscriptionNotificationType fromString(String str) {
    switch (str) {
      case 'handshake':
        return SubscriptionNotificationType.handshake;
      case 'heartbeat':
        return SubscriptionNotificationType.heartbeat;
      case 'event-notification':
        return SubscriptionNotificationType.event_notification;
      case 'query-status':
        return SubscriptionNotificationType.query_status;
      case 'query-event':
        return SubscriptionNotificationType.query_event;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SubscriptionNotificationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
