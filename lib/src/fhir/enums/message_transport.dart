/// The protocol used for message transport.
enum MessageTransport {
  /// Display: HTTP
  /// Definition: The application sends or receives messages using HTTP POST (may be over http: or https:).
  http,

  /// Display: FTP
  /// Definition: The application sends or receives messages using File Transfer Protocol.
  ftp,

  /// Display: MLLP
  /// Definition: The application sends or receives messages using HL7's Minimal Lower Level Protocol.
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

  /// Returns a [String] from a [MessageTransport] enum.
  String toJson() => toString();

  /// Returns a [MessageTransport] from a [String] enum.
  static MessageTransport fromString(String str) {
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

  /// Returns a [MessageTransport] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static MessageTransport fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
