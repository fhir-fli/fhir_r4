import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
enum SpecialMeasures {
  /// Display: Requirement to conduct post-authorisation studies
  /// Definition: Requirement to conduct post-authorisation studies
  Post_authorisationStudies('Post-authorisationStudies'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SpecialMeasures(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SpecialMeasures fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialMeasures.elementOnly.withElement(element);
    }
    return SpecialMeasures.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SpecialMeasures withElement(Element? newElement) {
    return SpecialMeasures.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
