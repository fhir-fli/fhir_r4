import 'package:fhir_r4/fhir_r4.dart';

/// A species of origin a substance raw material.
enum SourceMaterialSpecies {
  /// Display: Ginkgo biloba
  /// Definition:
  GinkgoBiloba('GinkgoBiloba'),

  /// Display: Olea europaea
  /// Definition:
  OleaEuropaea('OleaEuropaea'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SourceMaterialSpecies(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SourceMaterialSpecies fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialSpecies.elementOnly.withElement(element);
    }
    return SourceMaterialSpecies.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SourceMaterialSpecies withElement(Element? newElement) {
    return SourceMaterialSpecies.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
