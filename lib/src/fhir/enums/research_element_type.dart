import 'package:fhir_r4/fhir_r4.dart';

/// The possible types of research elements (E.g. Population, Exposure, Outcome).
enum ResearchElementType {
  /// Display: Population
  /// Definition: The element defines the population that forms the basis for research.
  population('population'),

  /// Display: Exposure
  /// Definition: The element defines an exposure within the population that is being researched.
  exposure('exposure'),

  /// Display: Outcome
  /// Definition: The element defines an outcome within the population that is being researched.
  outcome('outcome'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ResearchElementType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ResearchElementType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType.elementOnly.withElement(element);
    }
    return ResearchElementType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
