import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes SNOMED CT codes for materials that specimen containers are made of
enum ContainerMaterials {
  /// Display: glass
  /// Definition:
  value32039001('32039001'),

  /// Display: plastic
  /// Definition:
  value61088005('61088005'),

  /// Display: metal
  /// Definition:
  value425620007('425620007'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContainerMaterials(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContainerMaterials fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerMaterials.elementOnly.withElement(element);
    }
    return ContainerMaterials.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContainerMaterials withElement(Element? newElement) {
    return ContainerMaterials.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
