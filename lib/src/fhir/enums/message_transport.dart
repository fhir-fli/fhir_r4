import 'package:json_annotation/json_annotation.dart';

/// The protocol used for message transport.
enum MessageTransport {
  /// Display: HTTP
  /// Definition: The application sends or receives messages using HTTP POST (may be over http: or https:).
  @JsonValue('http')
  http,

  /// Display: FTP
  /// Definition: The application sends or receives messages using File Transfer Protocol.
  @JsonValue('ftp')
  ftp,

  /// Display: MLLP
  /// Definition: The application sends or receives messages using HL7's Minimal Lower Level Protocol.
  @JsonValue('mllp')
  mllp,
  ;

  @override
  String toString() {
    switch (this) {
      case http:
        return 'http';
      case ftp:
        return 'ftp';
      case mllp:
        return 'mllp';
    }
  }

  String toJson() => toString();
  MessageTransport fromString(String str) {
    switch (str) {
      case 'http':
        return MessageTransport.http;
      case 'ftp':
        return MessageTransport.ftp;
      case 'mllp':
        return MessageTransport.mllp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MessageTransport fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
