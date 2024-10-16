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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceGrade(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceGrade fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceGrade.elementOnly.withElement(element);
    }
    return SubstanceGrade.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceGrade withElement(Element? newElement) {
    return SubstanceGrade.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
