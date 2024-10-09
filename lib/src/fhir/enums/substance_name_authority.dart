/// An authority that officates substance names.
enum SubstanceNameAuthority {
  /// Display: BAN
  BAN,

  /// Display: COSING
  COSING,

  /// Display: Ph.Eur.
  Ph_Eur_,

  /// Display: FCC
  FCC,

  /// Display: INCI
  INCI,

  /// Display: INN
  INN,

  /// Display: JAN
  JAN,

  /// Display: JECFA
  JECFA,

  /// Display: MARTINDALE
  MARTINDALE,

  /// Display: USAN
  USAN,

  /// Display: USP
  USP,

  /// Display: PHF
  PHF,

  /// Display: HAB
  HAB,

  /// Display: PhF (Pharmacopée française)
  PhF,

  /// Display: IUIS
  IUIS,
  ;

  @override
  String toString() {
    switch (this) {
      case BAN:
        return 'BAN';
      case COSING:
        return 'COSING';
      case Ph_Eur_:
        return 'Ph.Eur.';
      case FCC:
        return 'FCC';
      case INCI:
        return 'INCI';
      case INN:
        return 'INN';
      case JAN:
        return 'JAN';
      case JECFA:
        return 'JECFA';
      case MARTINDALE:
        return 'MARTINDALE';
      case USAN:
        return 'USAN';
      case USP:
        return 'USP';
      case PHF:
        return 'PHF';
      case HAB:
        return 'HAB';
      case PhF:
        return 'PhF';
      case IUIS:
        return 'IUIS';
    }
  }

  String toJson() => toString();
  static SubstanceNameAuthority fromString(String str) {
    switch (str) {
      case 'BAN':
        return SubstanceNameAuthority.BAN;
      case 'COSING':
        return SubstanceNameAuthority.COSING;
      case 'Ph.Eur.':
        return SubstanceNameAuthority.Ph_Eur_;
      case 'FCC':
        return SubstanceNameAuthority.FCC;
      case 'INCI':
        return SubstanceNameAuthority.INCI;
      case 'INN':
        return SubstanceNameAuthority.INN;
      case 'JAN':
        return SubstanceNameAuthority.JAN;
      case 'JECFA':
        return SubstanceNameAuthority.JECFA;
      case 'MARTINDALE':
        return SubstanceNameAuthority.MARTINDALE;
      case 'USAN':
        return SubstanceNameAuthority.USAN;
      case 'USP':
        return SubstanceNameAuthority.USP;
      case 'PHF':
        return SubstanceNameAuthority.PHF;
      case 'HAB':
        return SubstanceNameAuthority.HAB;
      case 'PhF':
        return SubstanceNameAuthority.PhF;
      case 'IUIS':
        return SubstanceNameAuthority.IUIS;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SubstanceNameAuthority fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
