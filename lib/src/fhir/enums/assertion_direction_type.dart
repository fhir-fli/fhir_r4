import 'package:json_annotation/json_annotation.dart';

/// The type of direction to use for assertion.
enum AssertionDirectionType {
  /// Display: response
  /// Definition: The assertion is evaluated on the response. This is the default value.
  @JsonValue('response')
  response,
  /// Display: request
  /// Definition: The assertion is evaluated on the request.
  @JsonValue('request')
  request,
;

@override
  String toString() {
      switch(this) {
        case response: return 'response';
        case request: return 'request';
      }
      }
String toJson() => toString();
  AssertionDirectionType fromString(String str) {
    switch(str) {
      case 'response': return AssertionDirectionType.response;
      case 'request': return AssertionDirectionType.request;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AssertionDirectionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

