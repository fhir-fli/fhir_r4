// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type of part of a name for a Medicinal Product.
enum ProductNamePartType {
  /// Display: Full name
  /// Definition:
  FullName('FullName'),

  /// Display: Invented name part
  /// Definition:
  InventedNamePart('InventedNamePart'),

  /// Display: Scientific name part
  /// Definition:
  ScientificNamePart('ScientificNamePart'),

  /// Display: Strength part
  /// Definition:
  StrengthPart('StrengthPart'),

  /// Display: Pharmaceutical dose form part
  /// Definition:
  DoseFormPart('DoseFormPart'),

  /// Display: Formulation part
  /// Definition:
  FormulationPart('FormulationPart'),

  /// Display: Intended use part
  /// Definition:
  IntendedUsePart('IntendedUsePart'),

  /// Display: Target population part
  /// Definition:
  PopulationPart('PopulationPart'),

  /// Display: Container or pack part
  /// Definition:
  ContainerPart('ContainerPart'),

  /// Display: Device part
  /// Definition:
  DevicePart('DevicePart'),

  /// Display: Trademark or company name part
  /// Definition:
  TrademarkOrCompanyPart('TrademarkOrCompanyPart'),

  /// Display: Time/Period part
  /// Definition:
  TimeOrPeriodPart('TimeOrPeriodPart'),

  /// Display: Flavor part
  /// Definition:
  FlavorPart('FlavorPart'),

  /// Display: Delimiter part
  /// Definition:
  DelimiterPart('DelimiterPart'),

  /// Display: Legacy name
  /// Definition:
  LegacyNamePart('LegacyNamePart'),

  /// Display: Target species name part
  /// Definition:
  SpeciesNamePart('SpeciesNamePart'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ProductNamePartType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ProductNamePartType] instances.
  static ProductNamePartType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNamePartType.elementOnly.withElement(element);
    }
    return ProductNamePartType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ProductNamePartType withElement(Element? newElement) {
    return ProductNamePartType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
