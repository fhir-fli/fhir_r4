import 'package:json_annotation/json_annotation.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the administered dose of vaccine.
enum ImmunizationStatusCodes {
  @JsonValue('completed')
  completed,
  @JsonValue('entered-in-error')
  entered_in_error,
  @JsonValue('not-done')
  not_done,
;

@override
  String toString() {
      switch(this) {
        case completed: return 'completed';
        case entered_in_error: return 'entered-in-error';
        case not_done: return 'not-done';
      }
      }
String toJson() => toString();
  ImmunizationStatusCodes fromString(String str) {
    switch(str) {
      case 'completed': return ImmunizationStatusCodes.completed;
      case 'entered-in-error': return ImmunizationStatusCodes.entered_in_error;
      case 'not-done': return ImmunizationStatusCodes.not_done;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ImmunizationStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

