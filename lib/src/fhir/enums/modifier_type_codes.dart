import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Modifier type codes.
enum ModifierTypeCodes {
  /// Display: Repair of prior service or installation
  /// Definition: Repair of prior service or installation.
  @JsonValue('a')
  a,
  /// Display: Temporary service or installation
  /// Definition: Temporary service or installation.
  @JsonValue('b')
  b,
  /// Display: TMJ treatment
  /// Definition: Treatment associated with TMJ.
  @JsonValue('c')
  c,
  /// Display: Implant or associated with an implant
  /// Definition: Implant or associated with an implant.
  @JsonValue('e')
  e,
  /// Display: Rush or Outside of office hours
  /// Definition: A Rush service or service performed outside of normal office hours.
  @JsonValue('rooh')
  rooh,
  /// Display: None
  /// Definition: None.
  @JsonValue('x')
  x,
;

@override
  String toString() {
      switch(this) {
        case a: return 'a';
        case b: return 'b';
        case c: return 'c';
        case e: return 'e';
        case rooh: return 'rooh';
        case x: return 'x';
      }
      }
String toJson() => toString();
  ModifierTypeCodes fromString(String str) {
    switch(str) {
      case 'a': return ModifierTypeCodes.a;
      case 'b': return ModifierTypeCodes.b;
      case 'c': return ModifierTypeCodes.c;
      case 'e': return ModifierTypeCodes.e;
      case 'rooh': return ModifierTypeCodes.rooh;
      case 'x': return ModifierTypeCodes.x;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ModifierTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

