import 'package:json_annotation/json_annotation.dart';

/// This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust terminology code system that consists of or contains concepts to support the medication process.
enum ReasonMedicationGivenCodes {
  /// Display: None
  /// Definition: No reason known.
  @JsonValue('a')
  a,
  /// Display: Given as Ordered
  /// Definition: The administration was following an ordered protocol.
  @JsonValue('b')
  b,
  /// Display: Emergency
  /// Definition: The administration was needed to treat an emergency.
  @JsonValue('c')
  c,
;

@override
  String toString() {
      switch(this) {
        case a: return 'a';
        case b: return 'b';
        case c: return 'c';
      }
      }
String toJson() => toString();
  ReasonMedicationGivenCodes fromString(String str) {
    switch(str) {
      case 'a': return ReasonMedicationGivenCodes.a;
      case 'b': return ReasonMedicationGivenCodes.b;
      case 'c': return ReasonMedicationGivenCodes.c;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ReasonMedicationGivenCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

