/// EnteralRouteOfAdministration: Codes specifying the route of administration of enteral formula.  This value set is composed of HL7 V3 codes and is provided as a suggestive example.
enum EnteralRouteCodes {
  PO,
  EFT,
  ENTINSTL,
  GT,
  NGT,
  OGT,
  GJT,
  JJTINSTL,
  OJJ,
  ;

  @override
  String toString() {
    switch (this) {
      case PO:
        return 'PO';
      case EFT:
        return 'EFT';
      case ENTINSTL:
        return 'ENTINSTL';
      case GT:
        return 'GT';
      case NGT:
        return 'NGT';
      case OGT:
        return 'OGT';
      case GJT:
        return 'GJT';
      case JJTINSTL:
        return 'JJTINSTL';
      case OJJ:
        return 'OJJ';
    }
  }

  /// Returns a [String] from a [EnteralRouteCodes] enum.
  String toJson() => toString();

  /// Returns a [EnteralRouteCodes] from a [String] enum.
  static EnteralRouteCodes fromString(String str) {
    switch (str) {
      case 'PO':
        return EnteralRouteCodes.PO;
      case 'EFT':
        return EnteralRouteCodes.EFT;
      case 'ENTINSTL':
        return EnteralRouteCodes.ENTINSTL;
      case 'GT':
        return EnteralRouteCodes.GT;
      case 'NGT':
        return EnteralRouteCodes.NGT;
      case 'OGT':
        return EnteralRouteCodes.OGT;
      case 'GJT':
        return EnteralRouteCodes.GJT;
      case 'JJTINSTL':
        return EnteralRouteCodes.JJTINSTL;
      case 'OJJ':
        return EnteralRouteCodes.OJJ;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [EnteralRouteCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static EnteralRouteCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
