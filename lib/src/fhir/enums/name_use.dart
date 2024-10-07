import 'package:json_annotation/json_annotation.dart';

/// The use of a human name.
enum NameUse {
  /// Display: Usual
  /// Definition: Known as/conventional/the one you normally use.
  @JsonValue('usual')
  usual,

  /// Display: Official
  /// Definition: The formal name as registered in an official (government) registry, but which name might not be commonly used. May be called "legal name".
  @JsonValue('official')
  official,

  /// Display: Temp
  /// Definition: A temporary name. Name.period can provide more detailed information. This may also be used for temporary names assigned at birth or in emergency situations.
  @JsonValue('temp')
  temp,

  /// Display: Nickname
  /// Definition: A name that is used to address the person in an informal manner, but is not part of their formal or usual name.
  @JsonValue('nickname')
  nickname,

  /// Display: Anonymous
  /// Definition: Anonymous assigned name, alias, or pseudonym (used to protect a person's identity for privacy reasons).
  @JsonValue('anonymous')
  anonymous,

  /// Display: Old
  /// Definition: This name is no longer in use (or was never correct, but retained for records).
  @JsonValue('old')
  old,
  ;

  @override
  String toString() {
    switch (this) {
      case usual:
        return 'usual';
      case official:
        return 'official';
      case temp:
        return 'temp';
      case nickname:
        return 'nickname';
      case anonymous:
        return 'anonymous';
      case old:
        return 'old';
    }
  }

  String toJson() => toString();
  NameUse fromString(String str) {
    switch (str) {
      case 'usual':
        return NameUse.usual;
      case 'official':
        return NameUse.official;
      case 'temp':
        return NameUse.temp;
      case 'nickname':
        return NameUse.nickname;
      case 'anonymous':
        return NameUse.anonymous;
      case 'old':
        return NameUse.old;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  NameUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
