import 'package:json_annotation/json_annotation.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
enum HTTPVerb {
  /// Display: GET
  /// Definition: HTTP GET Command.
  @JsonValue('GET')
  GET,

  /// Display: HEAD
  /// Definition: HTTP HEAD Command.
  @JsonValue('HEAD')
  HEAD,

  /// Display: POST
  /// Definition: HTTP POST Command.
  @JsonValue('POST')
  POST,

  /// Display: PUT
  /// Definition: HTTP PUT Command.
  @JsonValue('PUT')
  PUT,

  /// Display: DELETE
  /// Definition: HTTP DELETE Command.
  @JsonValue('DELETE')
  DELETE,

  /// Display: PATCH
  /// Definition: HTTP PATCH Command.
  @JsonValue('PATCH')
  PATCH,
  ;

  @override
  String toString() {
    switch (this) {
      case GET:
        return 'GET';
      case HEAD:
        return 'HEAD';
      case POST:
        return 'POST';
      case PUT:
        return 'PUT';
      case DELETE:
        return 'DELETE';
      case PATCH:
        return 'PATCH';
    }
  }

  String toJson() => toString();
  HTTPVerb fromString(String str) {
    switch (str) {
      case 'GET':
        return HTTPVerb.GET;
      case 'HEAD':
        return HTTPVerb.HEAD;
      case 'POST':
        return HTTPVerb.POST;
      case 'PUT':
        return HTTPVerb.PUT;
      case 'DELETE':
        return HTTPVerb.DELETE;
      case 'PATCH':
        return HTTPVerb.PATCH;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  HTTPVerb fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
