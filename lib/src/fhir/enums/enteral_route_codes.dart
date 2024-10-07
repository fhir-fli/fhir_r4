import 'package:json_annotation/json_annotation.dart';

/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula.  This value set is composed of HL7 V3 codes and is provided as a suggestive example.
enum EnteralRouteCodes {
  @JsonValue('PO')
  PO,
  @JsonValue('EFT')
  EFT,
  @JsonValue('ENTINSTL')
  ENTINSTL,
  @JsonValue('GT')
  GT,
  @JsonValue('NGT')
  NGT,
  @JsonValue('OGT')
  OGT,
  @JsonValue('GJT')
  GJT,
  @JsonValue('JJTINSTL')
  JJTINSTL,
  @JsonValue('OJJ')
  OJJ,
;

@override
  String toString() {
      switch(this) {
        case PO: return 'PO';
        case EFT: return 'EFT';
        case ENTINSTL: return 'ENTINSTL';
        case GT: return 'GT';
        case NGT: return 'NGT';
        case OGT: return 'OGT';
        case GJT: return 'GJT';
        case JJTINSTL: return 'JJTINSTL';
        case OJJ: return 'OJJ';
      }
      }
String toJson() => toString();
  EnteralRouteCodes fromString(String str) {
    switch(str) {
      case 'PO': return EnteralRouteCodes.PO;
      case 'EFT': return EnteralRouteCodes.EFT;
      case 'ENTINSTL': return EnteralRouteCodes.ENTINSTL;
      case 'GT': return EnteralRouteCodes.GT;
      case 'NGT': return EnteralRouteCodes.NGT;
      case 'OGT': return EnteralRouteCodes.OGT;
      case 'GJT': return EnteralRouteCodes.GJT;
      case 'JJTINSTL': return EnteralRouteCodes.JJTINSTL;
      case 'OJJ': return EnteralRouteCodes.OJJ;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 EnteralRouteCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

