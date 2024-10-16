import 'package:fhir_r4/fhir_r4.dart';

/// The type of a name given to a substance.
enum SubstanceNameType {
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

  const SubstanceNameType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubstanceNameType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameType.elementOnly.withElement(element);
    }
    return SubstanceNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubstanceNameType withElement(Element? newElement) {
    return SubstanceNameType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
