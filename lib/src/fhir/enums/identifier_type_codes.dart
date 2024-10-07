import 'package:json_annotation/json_annotation.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
enum IdentifierTypeCodes {
  @JsonValue('DL')
  DL,
  @JsonValue('PPN')
  PPN,
  @JsonValue('BRN')
  BRN,
  @JsonValue('MR')
  MR,
  @JsonValue('MCN')
  MCN,
  @JsonValue('EN')
  EN,
  @JsonValue('TAX')
  TAX,
  @JsonValue('NIIP')
  NIIP,
  @JsonValue('PRN')
  PRN,
  @JsonValue('MD')
  MD,
  @JsonValue('DR')
  DR,
  @JsonValue('ACSN')
  ACSN,
  @JsonValue('UDI')
  UDI,
  @JsonValue('SNO')
  SNO,
  @JsonValue('SB')
  SB,
  @JsonValue('PLAC')
  PLAC,
  @JsonValue('FILL')
  FILL,
  @JsonValue('JHN')
  JHN,
;

@override
  String toString() {
      switch(this) {
        case DL: return 'DL';
        case PPN: return 'PPN';
        case BRN: return 'BRN';
        case MR: return 'MR';
        case MCN: return 'MCN';
        case EN: return 'EN';
        case TAX: return 'TAX';
        case NIIP: return 'NIIP';
        case PRN: return 'PRN';
        case MD: return 'MD';
        case DR: return 'DR';
        case ACSN: return 'ACSN';
        case UDI: return 'UDI';
        case SNO: return 'SNO';
        case SB: return 'SB';
        case PLAC: return 'PLAC';
        case FILL: return 'FILL';
        case JHN: return 'JHN';
      }
      }
String toJson() => toString();
  IdentifierTypeCodes fromString(String str) {
    switch(str) {
      case 'DL': return IdentifierTypeCodes.DL;
      case 'PPN': return IdentifierTypeCodes.PPN;
      case 'BRN': return IdentifierTypeCodes.BRN;
      case 'MR': return IdentifierTypeCodes.MR;
      case 'MCN': return IdentifierTypeCodes.MCN;
      case 'EN': return IdentifierTypeCodes.EN;
      case 'TAX': return IdentifierTypeCodes.TAX;
      case 'NIIP': return IdentifierTypeCodes.NIIP;
      case 'PRN': return IdentifierTypeCodes.PRN;
      case 'MD': return IdentifierTypeCodes.MD;
      case 'DR': return IdentifierTypeCodes.DR;
      case 'ACSN': return IdentifierTypeCodes.ACSN;
      case 'UDI': return IdentifierTypeCodes.UDI;
      case 'SNO': return IdentifierTypeCodes.SNO;
      case 'SB': return IdentifierTypeCodes.SB;
      case 'PLAC': return IdentifierTypeCodes.PLAC;
      case 'FILL': return IdentifierTypeCodes.FILL;
      case 'JHN': return IdentifierTypeCodes.JHN;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 IdentifierTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

