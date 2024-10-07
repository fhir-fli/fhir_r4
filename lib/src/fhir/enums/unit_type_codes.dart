import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Unit type codes.
enum UnitTypeCodes {
  /// Display: Individual
  /// Definition: A single individual
  @JsonValue('individual')
  individual,
  /// Display: Family
  /// Definition: A family, typically includes self, spouse(s) and children to a defined age
  @JsonValue('family')
  family,
;

@override
  String toString() {
      switch(this) {
        case individual: return 'individual';
        case family: return 'family';
      }
      }
String toJson() => toString();
  UnitTypeCodes fromString(String str) {
    switch(str) {
      case 'individual': return UnitTypeCodes.individual;
      case 'family': return UnitTypeCodes.family;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 UnitTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

