import 'package:fhir_r4/fhir_r4.dart';

/// An anatomical origin of the source material within an organism.
enum SourceMaterialPart {
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

  const SourceMaterialPart(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SourceMaterialPart fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialPart.elementOnly.withElement(element);
    }
    return SourceMaterialPart.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SourceMaterialPart withElement(Element? newElement) {
    return SourceMaterialPart.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
