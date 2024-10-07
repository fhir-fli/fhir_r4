import 'package:json_annotation/json_annotation.dart';

/// Roles of participants that may be included in a care team.  Defined as: Healthcare professional (occupation) or Services (qualifier value).
enum ParticipantRoles {
  @JsonValue('429577009')
  value429577009,
  @JsonValue('116154003')
  value116154003,
  @JsonValue('133932002')
  value133932002,
;

@override
  String toString() {
      switch(this) {
        case value429577009: return '429577009';
        case value116154003: return '116154003';
        case value133932002: return '133932002';
      }
      }
String toJson() => toString();
  ParticipantRoles fromString(String str) {
    switch(str) {
      case '429577009': return ParticipantRoles.value429577009;
      case '116154003': return ParticipantRoles.value116154003;
      case '133932002': return ParticipantRoles.value133932002;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ParticipantRoles fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

