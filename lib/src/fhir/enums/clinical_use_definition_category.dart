import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a clinical use information item.
enum ClinicalUseDefinitionCategory {
  /// Display: Pregnancy and Lactation
  /// Definition:
  Pregnancy('Pregnancy'),

  /// Display: Overdose
  /// Definition:
  Overdose('Overdose'),

  /// Display: Effects on Ability to Drive and Use Machines
  /// Definition:
  DriveAndMachines('DriveAndMachines'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ClinicalUseDefinitionCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ClinicalUseDefinitionCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionCategory.elementOnly.withElement(element);
    }
    return ClinicalUseDefinitionCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ClinicalUseDefinitionCategory withElement(Element? newElement) {
    return ClinicalUseDefinitionCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
