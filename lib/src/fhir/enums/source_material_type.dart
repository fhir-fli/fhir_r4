import 'package:fhir_r4/fhir_r4.dart';

/// A classification that provides the origin of the substance raw material.
enum SourceMaterialType {
  /// Display: animal
  /// Definition:
  Animal('Animal'),

  /// Display: plant
  /// Definition:
  Plant('Plant'),

  /// Display: mineral
  /// Definition:
  Mineral('Mineral'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SourceMaterialType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SourceMaterialType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialType.elementOnly.withElement(element);
    }
    return SourceMaterialType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SourceMaterialType withElement(Element? newElement) {
    return SourceMaterialType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
