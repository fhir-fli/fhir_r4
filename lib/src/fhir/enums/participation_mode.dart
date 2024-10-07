import 'package:json_annotation/json_annotation.dart';

/// Identifies the primary means by which an Entity participates in an Act.
enum ParticipationMode {
  @JsonValue('PHYSICAL')
  PHYSICAL,
  @JsonValue('REMOTE')
  REMOTE,
;

@override
  String toString() {
      switch(this) {
        case PHYSICAL: return 'PHYSICAL';
        case REMOTE: return 'REMOTE';
      }
      }
String toJson() => toString();
  ParticipationMode fromString(String str) {
    switch(str) {
      case 'PHYSICAL': return ParticipationMode.PHYSICAL;
      case 'REMOTE': return ParticipationMode.REMOTE;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ParticipationMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

