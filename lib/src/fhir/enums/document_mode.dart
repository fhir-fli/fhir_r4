import 'package:json_annotation/json_annotation.dart';

/// Whether the application produces or consumes documents.
enum DocumentMode {
  /// Display: Producer
  /// Definition: The application produces documents of the specified type.
  @JsonValue('producer')
  producer,

  /// Display: Consumer
  /// Definition: The application consumes documents of the specified type.
  @JsonValue('consumer')
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

  String toJson() => toString();
  DocumentMode fromString(String str) {
    switch (str) {
      case 'producer':
        return DocumentMode.producer;
      case 'consumer':
        return DocumentMode.consumer;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  DocumentMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
