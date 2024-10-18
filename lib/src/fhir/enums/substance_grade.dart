// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The quality standard, established benchmark, to which a substance complies.
enum SubstanceGrade {
  /// Display: USP/NF United States Pharmacopeia (USP) and the National Formulary (NF)
  /// Definition:
  USP_NF('USP-NF'),

  /// Display: European Pharmacopoeia
  /// Definition:
  Ph_Eur('Ph.Eur'),

  /// Display: Japanese Pharmacopoeia
  /// Definition:
  JP('JP'),

  /// Display: British Pharmacopoeia
  /// Definition:
  BP('BP'),

  /// Display: Company Standard
  /// Definition:
  CompanyStandard('CompanyStandard'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubstanceGrade(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubstanceGrade] instances.
  static SubstanceGrade fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceGrade.elementOnly.withElement(
        element,
      );
    }
    return SubstanceGrade.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubstanceGrade withElement(Element? newElement) {
    return SubstanceGrade.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
