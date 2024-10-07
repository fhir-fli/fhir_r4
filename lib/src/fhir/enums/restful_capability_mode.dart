import 'package:json_annotation/json_annotation.dart';

/// The mode of a RESTful capability statement.
enum RestfulCapabilityMode {
  /// Display: Client
  /// Definition: The application acts as a client for this resource.
  @JsonValue('client')
  client,
  /// Display: Server
  /// Definition: The application acts as a server for this resource.
  @JsonValue('server')
  server,
;

@override
  String toString() {
      switch(this) {
        case client: return 'client';
        case server: return 'server';
      }
      }
String toJson() => toString();
  RestfulCapabilityMode fromString(String str) {
    switch(str) {
      case 'client': return RestfulCapabilityMode.client;
      case 'server': return RestfulCapabilityMode.server;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 RestfulCapabilityMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

