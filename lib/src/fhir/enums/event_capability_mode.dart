/// The mode of a message capability statement.
enum EventCapabilityMode {
  /// Display: Sender
  /// Definition: The application sends requests and receives responses.
  sender,

  /// Display: Receiver
  /// Definition: The application receives requests and sends responses.
  receiver,
  ;

  @override
  String toString() {
    switch (this) {
      case sender:
        return 'sender';
      case receiver:
        return 'receiver';
    }
  }

  /// Returns a [String] from a [EventCapabilityMode] enum.
  String toJson() => toString();

  /// Returns a [EventCapabilityMode] from a [String] enum.
  static EventCapabilityMode fromString(String str) {
    switch (str) {
      case 'sender':
        return EventCapabilityMode.sender;
      case 'receiver':
        return EventCapabilityMode.receiver;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EventCapabilityMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EventCapabilityMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
