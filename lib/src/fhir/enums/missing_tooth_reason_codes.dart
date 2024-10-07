import 'package:json_annotation/json_annotation.dart';

/// This value set includes sample Missing Tooth Reason codes.
enum MissingToothReasonCodes {
  /// Display: E
  /// Definition: Extraction
  @JsonValue('e')
  e,
  /// Display: C
  /// Definition: Congenital
  @JsonValue('c')
  c,
  /// Display: U
  /// Definition: Unknown
  @JsonValue('u')
  u,
  /// Display: O
  /// Definition: Other
  @JsonValue('o')
  o,
;

@override
  String toString() {
      switch(this) {
        case e: return 'e';
        case c: return 'c';
        case u: return 'u';
        case o: return 'o';
      }
      }
String toJson() => toString();
  MissingToothReasonCodes fromString(String str) {
    switch(str) {
      case 'e': return MissingToothReasonCodes.e;
      case 'c': return MissingToothReasonCodes.c;
      case 'u': return MissingToothReasonCodes.u;
      case 'o': return MissingToothReasonCodes.o;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MissingToothReasonCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

