/// The quality standard, established benchmark, to which a substance complies.
enum SubstanceGrade {
  /// Display: USP/NF United States Pharmacopeia (USP) and the National Formulary (NF)
  USP_NF,

  /// Display: European Pharmacopoeia
  Ph_Eur,

  /// Display: Japanese Pharmacopoeia
  JP,

  /// Display: British Pharmacopoeia
  BP,

  /// Display: Company Standard
  CompanyStandard,
  ;

  @override
  String toString() {
    switch (this) {
      case USP_NF:
        return 'USP-NF';
      case Ph_Eur:
        return 'Ph.Eur';
      case JP:
        return 'JP';
      case BP:
        return 'BP';
      case CompanyStandard:
        return 'CompanyStandard';
    }
  }

  /// Returns a [String] from a [SubstanceGrade] enum.
  String toJson() => toString();

  /// Returns a [SubstanceGrade] from a [String] enum.
  static SubstanceGrade fromString(String str) {
    switch (str) {
      case 'USP-NF':
        return SubstanceGrade.USP_NF;
      case 'Ph.Eur':
        return SubstanceGrade.Ph_Eur;
      case 'JP':
        return SubstanceGrade.JP;
      case 'BP':
        return SubstanceGrade.BP;
      case 'CompanyStandard':
        return SubstanceGrade.CompanyStandard;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SubstanceGrade] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SubstanceGrade fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
