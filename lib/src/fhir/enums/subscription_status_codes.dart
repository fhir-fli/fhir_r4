import 'package:json_annotation/json_annotation.dart';

/// The status of a subscription.
enum SubscriptionStatusCodes {
  /// Display: Requested
  /// Definition: The client has requested the subscription, and the server has not yet set it up.
  @JsonValue('requested')
  requested,

  /// Display: Active
  /// Definition: The subscription is active.
  @JsonValue('active')
  active,

  /// Display: Error
  /// Definition: The server has an error executing the notification.
  @JsonValue('error')
  error,

  /// Display: Off
  /// Definition: Too many errors have occurred or the subscription has expired.
  @JsonValue('off')
  off,
  ;

  @override
  String toString() {
    switch (this) {
      case requested:
        return 'requested';
      case active:
        return 'active';
      case error:
        return 'error';
      case off:
        return 'off';
    }
  }

  String toJson() => toString();
  static SubscriptionStatusCodes fromString(String str) {
    switch (str) {
      case 'requested':
        return SubscriptionStatusCodes.requested;
      case 'active':
        return SubscriptionStatusCodes.active;
      case 'error':
        return SubscriptionStatusCodes.error;
      case 'off':
        return SubscriptionStatusCodes.off;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SubscriptionStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
