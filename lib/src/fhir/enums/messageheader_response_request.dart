import 'package:json_annotation/json_annotation.dart';

/// HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.
enum MessageheaderResponseRequest {
  /// Display: Always
  /// Definition: initiator expects a response for this message.
  @JsonValue('always')
  always,
  /// Display: Error/reject conditions only
  /// Definition: initiator expects a response only if in error.
  @JsonValue('on-error')
  on_error,
  /// Display: Never
  /// Definition: initiator does not expect a response.
  @JsonValue('never')
  never,
  /// Display: Successful completion only
  /// Definition: initiator expects a response only if successful.
  @JsonValue('on-success')
  on_success,
;

@override
  String toString() {
      switch(this) {
        case always: return 'always';
        case on_error: return 'on-error';
        case never: return 'never';
        case on_success: return 'on-success';
      }
      }
String toJson() => toString();
  MessageheaderResponseRequest fromString(String str) {
    switch(str) {
      case 'always': return MessageheaderResponseRequest.always;
      case 'on-error': return MessageheaderResponseRequest.on_error;
      case 'never': return MessageheaderResponseRequest.never;
      case 'on-success': return MessageheaderResponseRequest.on_success;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MessageheaderResponseRequest fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
