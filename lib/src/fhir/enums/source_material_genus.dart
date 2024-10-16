import 'package:fhir_r4/fhir_r4.dart';

/// The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.
enum SourceMaterialGenus {
  /// Display: Mycobacterium
  /// Definition:
  Mycobacterium('Mycobacterium'),

  /// Display: Influenza A virus
  /// Definition:
  InfluenzavirusA('InfluenzavirusA'),

  /// Display: Ginkgo
  /// Definition:
  Ginkgo('Ginkgo'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SourceMaterialGenus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SourceMaterialGenus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialGenus.elementOnly.withElement(element);
    }
    return SourceMaterialGenus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SourceMaterialGenus withElement(Element? newElement) {
    return SourceMaterialGenus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
