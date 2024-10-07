import 'package:json_annotation/json_annotation.dart';

/// Media Type Code
enum MediaTypeCode {
  @JsonValue('110030')
  value110030,
  @JsonValue('110031')
  value110031,
  @JsonValue('110032')
  value110032,
  @JsonValue('110033')
  value110033,
  @JsonValue('110034')
  value110034,
  @JsonValue('110035')
  value110035,
  @JsonValue('110036')
  value110036,
  @JsonValue('110037')
  value110037,
  @JsonValue('110010')
  value110010,
  @JsonValue('110038')
  value110038,
;

@override
  String toString() {
      switch(this) {
        case value110030: return '110030';
        case value110031: return '110031';
        case value110032: return '110032';
        case value110033: return '110033';
        case value110034: return '110034';
        case value110035: return '110035';
        case value110036: return '110036';
        case value110037: return '110037';
        case value110010: return '110010';
        case value110038: return '110038';
      }
      }
String toJson() => toString();
  MediaTypeCode fromString(String str) {
    switch(str) {
      case '110030': return MediaTypeCode.value110030;
      case '110031': return MediaTypeCode.value110031;
      case '110032': return MediaTypeCode.value110032;
      case '110033': return MediaTypeCode.value110033;
      case '110034': return MediaTypeCode.value110034;
      case '110035': return MediaTypeCode.value110035;
      case '110036': return MediaTypeCode.value110036;
      case '110037': return MediaTypeCode.value110037;
      case '110010': return MediaTypeCode.value110010;
      case '110038': return MediaTypeCode.value110038;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MediaTypeCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

