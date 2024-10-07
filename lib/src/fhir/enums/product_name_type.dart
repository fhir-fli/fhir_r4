import 'package:json_annotation/json_annotation.dart';

/// Type of a name for a Medicinal Product.
enum ProductNameType {
  /// Display: British Approved Name
  @JsonValue('BAN')
  BAN,
  /// Display: International Non-Proprietary Name
  @JsonValue('INN')
  INN,
  /// Display: Modified International Non-Proprietary Name
  @JsonValue('INNM')
  INNM,
  /// Display: Proposed International Non-Proprietary Name
  @JsonValue('pINN')
  pINN,
  /// Display: Recommended International Non-Proprietary Name
  @JsonValue('rINN')
  rINN,
;

@override
  String toString() {
      switch(this) {
        case BAN: return 'BAN';
        case INN: return 'INN';
        case INNM: return 'INNM';
        case pINN: return 'pINN';
        case rINN: return 'rINN';
      }
      }
String toJson() => toString();
  ProductNameType fromString(String str) {
    switch(str) {
      case 'BAN': return ProductNameType.BAN;
      case 'INN': return ProductNameType.INN;
      case 'INNM': return ProductNameType.INNM;
      case 'pINN': return ProductNameType.pINN;
      case 'rINN': return ProductNameType.rINN;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ProductNameType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

