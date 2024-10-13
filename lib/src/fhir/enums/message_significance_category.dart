/// The impact of the content of a message.
enum MessageSignificanceCategory {
  /// Display: Consequence
  /// Definition: The message represents/requests a change that should not be processed more than once; e.g., making a booking for an appointment.
  consequence,

  /// Display: Currency
  /// Definition: The message represents a response to query for current information. Retrospective processing is wrong and/or wasteful.
  currency,

  /// Display: Notification
  /// Definition: The content is not necessarily intended to be current, and it can be reprocessed, though there may be version issues created by processing old notifications.
  notification,
  ;

  @override
  String toString() {
    switch (this) {
      case consequence:
        return 'consequence';
      case currency:
        return 'currency';
      case notification:
        return 'notification';
    }
  }

  /// Returns a [String] from a [MessageSignificanceCategory] enum.
  String toJson() => toString();

  /// Returns a [MessageSignificanceCategory] from a [String] enum.
  static MessageSignificanceCategory fromString(String str) {
    switch (str) {
      case 'consequence':
        return MessageSignificanceCategory.consequence;
      case 'currency':
        return MessageSignificanceCategory.currency;
      case 'notification':
        return MessageSignificanceCategory.notification;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [MessageSignificanceCategory] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MessageSignificanceCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
