/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the administrative routes used during vaccination. This value set is provided as a suggestive example.
enum ImmunizationRouteCodes {
  /// Display: Injection, intradermal
  IDINJ,

  /// Display: Injection, intramuscular
  IM,

  /// Display: Inhalation, nasal
  NASINHLC,

  /// Display: Injection, intravenous
  IVINJ,

  /// Display: Swallow, oral
  PO,

  /// Display: Injection, subcutaneous
  SQ,

  /// Display: Transdermal
  TRNSDERM,
  ;

  @override
  String toString() {
    switch (this) {
      case IDINJ:
        return 'IDINJ';
      case IM:
        return 'IM';
      case NASINHLC:
        return 'NASINHLC';
      case IVINJ:
        return 'IVINJ';
      case PO:
        return 'PO';
      case SQ:
        return 'SQ';
      case TRNSDERM:
        return 'TRNSDERM';
    }
  }

  String toJson() => toString();
  static ImmunizationRouteCodes fromString(String str) {
    switch (str) {
      case 'IDINJ':
        return ImmunizationRouteCodes.IDINJ;
      case 'IM':
        return ImmunizationRouteCodes.IM;
      case 'NASINHLC':
        return ImmunizationRouteCodes.NASINHLC;
      case 'IVINJ':
        return ImmunizationRouteCodes.IVINJ;
      case 'PO':
        return ImmunizationRouteCodes.PO;
      case 'SQ':
        return ImmunizationRouteCodes.SQ;
      case 'TRNSDERM':
        return ImmunizationRouteCodes.TRNSDERM;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ImmunizationRouteCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
