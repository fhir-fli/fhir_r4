/// Whether the application produces or consumes documents.
enum DocumentMode {
  /// Display: Producer
  /// Definition: The application produces documents of the specified type.
  producer,

  /// Display: Consumer
  /// Definition: The application consumes documents of the specified type.
  consumer,
  ;

  @override
  String toString() {
    switch (this) {
      case producer:
        return 'producer';
      case consumer:
        return 'consumer';
    }
  }

  /// Returns a [String] from a [DocumentMode] enum.
  String toJson() => toString();

  /// Returns a [DocumentMode] from a [String] enum.
  static DocumentMode fromString(String str) {
    switch (str) {
      case 'producer':
        return DocumentMode.producer;
      case 'consumer':
        return DocumentMode.consumer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [DocumentMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DocumentMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
