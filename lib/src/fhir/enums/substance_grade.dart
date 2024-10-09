import 'package:json_annotation/json_annotation.dart';

/// The quality standard, established benchmark, to which a substance complies.
enum SubstanceGrade {
  /// Display: USP/NF United States Pharmacopeia (USP) and the National Formulary (NF)
  @JsonValue('USP-NF')
  USP_NF,

  /// Display: European Pharmacopoeia
  @JsonValue('Ph.Eur')
  Ph_Eur,

  /// Display: Japanese Pharmacopoeia
  @JsonValue('JP')
  JP,

  /// Display: British Pharmacopoeia
  @JsonValue('BP')
  BP,

  /// Display: Company Standard
  @JsonValue('CompanyStandard')
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

  String toJson() => toString();
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

  static SubstanceGrade fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
