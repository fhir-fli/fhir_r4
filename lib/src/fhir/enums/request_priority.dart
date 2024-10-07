import 'package:json_annotation/json_annotation.dart';

/// Identifies the level of importance to be assigned to actioning the request.
enum RequestPriority {
  /// Display: Routine
  /// Definition: The request has normal priority.
  @JsonValue('routine')
  routine,
  /// Display: Urgent
  /// Definition: The request should be actioned promptly - higher priority than routine.
  @JsonValue('urgent')
  urgent,
  /// Display: ASAP
  /// Definition: The request should be actioned as soon as possible - higher priority than urgent.
  @JsonValue('asap')
  asap,
  /// Display: STAT
  /// Definition: The request should be actioned immediately - highest possible priority.  E.g. an emergency.
  @JsonValue('stat')
  stat,
;

@override
  String toString() {
      switch(this) {
        case routine: return 'routine';
        case urgent: return 'urgent';
        case asap: return 'asap';
        case stat: return 'stat';
      }
      }
String toJson() => toString();
  RequestPriority fromString(String str) {
    switch(str) {
      case 'routine': return RequestPriority.routine;
      case 'urgent': return RequestPriority.urgent;
      case 'asap': return RequestPriority.asap;
      case 'stat': return RequestPriority.stat;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 RequestPriority fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

