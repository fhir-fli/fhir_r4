import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this clinical use definition.
enum ClinicalUseDefinitionType {
  /// Display: Indication
  /// Definition: A reason for giving the medication.
  indication('indication'),

  /// Display: Contraindication
  /// Definition: A reason for not giving the medication.
  contraindication('contraindication'),

  /// Display: Interaction
  /// Definition: Interactions between the medication and other substances.
  interaction('interaction'),

  /// Display: Undesirable Effect
  /// Definition: Side effects or adverse effects associated with the medication.
  undesirable_effect('undesirable-effect'),

  /// Display: Warning
  /// Definition: A general warning or issue that is not specifically one of the other types.
  warning('warning'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ClinicalUseDefinitionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ClinicalUseDefinitionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionType.elementOnly.withElement(element);
    }
    return ClinicalUseDefinitionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
