import 'package:fhir_r4/fhir_r4.dart';

/// The type of a name given to a substance.
enum SubstanceRepresentationType {
  /// Display: systematic
  /// Definition:
  Systematic('Systematic'),

  /// Display: scientific
  /// Definition:
  Scientific('Scientific'),

  /// Display: brand
  /// Definition:
  Brand('Brand'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubstanceRepresentationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceRepresentationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationType.elementOnly.withElement(element);
    }
    return SubstanceRepresentationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceRepresentationType withElement(Element? newElement) {
    return SubstanceRepresentationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
