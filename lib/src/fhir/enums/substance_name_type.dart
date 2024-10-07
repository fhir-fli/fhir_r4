import 'package:json_annotation/json_annotation.dart';

/// The type of a name given to a substance.
enum SubstanceNameType {
  /// Display: systematic
  @JsonValue('Systematic')
  Systematic,
  /// Display: scientific
  @JsonValue('Scientific')
  Scientific,
  /// Display: brand
  @JsonValue('Brand')
  Brand,
;

@override
  String toString() {
      switch(this) {
        case Systematic: return 'Systematic';
        case Scientific: return 'Scientific';
        case Brand: return 'Brand';
      }
      }
String toJson() => toString();
  SubstanceNameType fromString(String str) {
    switch(str) {
      case 'Systematic': return SubstanceNameType.Systematic;
      case 'Scientific': return SubstanceNameType.Scientific;
      case 'Brand': return SubstanceNameType.Brand;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SubstanceNameType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

