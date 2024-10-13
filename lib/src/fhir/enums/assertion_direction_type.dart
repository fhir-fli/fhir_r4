/// The type of direction to use for assertion.
enum AssertionDirectionType {
  /// Display: response
  /// Definition: The assertion is evaluated on the response. This is the default value.
  response,

  /// Display: request
  /// Definition: The assertion is evaluated on the request.
  request,
  ;

  @override
  String toString() {
    switch (this) {
      case response:
        return 'response';
      case request:
        return 'request';
    }
  }

  /// Returns a [String] from a [AssertionDirectionType] enum.
  String toJson() => toString();

  /// Returns a [AssertionDirectionType] from a [String] enum.
  static AssertionDirectionType fromString(String str) {
    switch (str) {
      case 'response':
        return AssertionDirectionType.response;
      case 'request':
        return AssertionDirectionType.request;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AssertionDirectionType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AssertionDirectionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
