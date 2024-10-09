/// Type of part of a name for a Medicinal Product.
enum ProductNamePartType {
  /// Display: Full name
  FullName,

  /// Display: Invented name part
  InventedNamePart,

  /// Display: Scientific name part
  ScientificNamePart,

  /// Display: Strength part
  StrengthPart,

  /// Display: Pharmaceutical dose form part
  DoseFormPart,

  /// Display: Formulation part
  FormulationPart,

  /// Display: Intended use part
  IntendedUsePart,

  /// Display: Target population part
  PopulationPart,

  /// Display: Container or pack part
  ContainerPart,

  /// Display: Device part
  DevicePart,

  /// Display: Trademark or company name part
  TrademarkOrCompanyPart,

  /// Display: Time/Period part
  TimeOrPeriodPart,

  /// Display: Flavor part
  FlavorPart,

  /// Display: Delimiter part
  DelimiterPart,

  /// Display: Legacy name
  LegacyNamePart,

  /// Display: Target species name part
  SpeciesNamePart,
  ;

  @override
  String toString() {
    switch (this) {
      case FullName:
        return 'FullName';
      case InventedNamePart:
        return 'InventedNamePart';
      case ScientificNamePart:
        return 'ScientificNamePart';
      case StrengthPart:
        return 'StrengthPart';
      case DoseFormPart:
        return 'DoseFormPart';
      case FormulationPart:
        return 'FormulationPart';
      case IntendedUsePart:
        return 'IntendedUsePart';
      case PopulationPart:
        return 'PopulationPart';
      case ContainerPart:
        return 'ContainerPart';
      case DevicePart:
        return 'DevicePart';
      case TrademarkOrCompanyPart:
        return 'TrademarkOrCompanyPart';
      case TimeOrPeriodPart:
        return 'TimeOrPeriodPart';
      case FlavorPart:
        return 'FlavorPart';
      case DelimiterPart:
        return 'DelimiterPart';
      case LegacyNamePart:
        return 'LegacyNamePart';
      case SpeciesNamePart:
        return 'SpeciesNamePart';
    }
  }

  String toJson() => toString();
  static ProductNamePartType fromString(String str) {
    switch (str) {
      case 'FullName':
        return ProductNamePartType.FullName;
      case 'InventedNamePart':
        return ProductNamePartType.InventedNamePart;
      case 'ScientificNamePart':
        return ProductNamePartType.ScientificNamePart;
      case 'StrengthPart':
        return ProductNamePartType.StrengthPart;
      case 'DoseFormPart':
        return ProductNamePartType.DoseFormPart;
      case 'FormulationPart':
        return ProductNamePartType.FormulationPart;
      case 'IntendedUsePart':
        return ProductNamePartType.IntendedUsePart;
      case 'PopulationPart':
        return ProductNamePartType.PopulationPart;
      case 'ContainerPart':
        return ProductNamePartType.ContainerPart;
      case 'DevicePart':
        return ProductNamePartType.DevicePart;
      case 'TrademarkOrCompanyPart':
        return ProductNamePartType.TrademarkOrCompanyPart;
      case 'TimeOrPeriodPart':
        return ProductNamePartType.TimeOrPeriodPart;
      case 'FlavorPart':
        return ProductNamePartType.FlavorPart;
      case 'DelimiterPart':
        return ProductNamePartType.DelimiterPart;
      case 'LegacyNamePart':
        return ProductNamePartType.LegacyNamePart;
      case 'SpeciesNamePart':
        return ProductNamePartType.SpeciesNamePart;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ProductNamePartType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
