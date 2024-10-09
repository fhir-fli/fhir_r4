/// HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
enum HTTPVerb {
  /// Display: GET
  /// Definition: HTTP GET Command.
  GET,

  /// Display: HEAD
  /// Definition: HTTP HEAD Command.
  HEAD,

  /// Display: POST
  /// Definition: HTTP POST Command.
  POST,

  /// Display: PUT
  /// Definition: HTTP PUT Command.
  PUT,

  /// Display: DELETE
  /// Definition: HTTP DELETE Command.
  DELETE,

  /// Display: PATCH
  /// Definition: HTTP PATCH Command.
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
  static HTTPVerb fromString(String str) {
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

  static HTTPVerb fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
