import 'package:fhir_r4/fhir_r4.dart';

/// Defines which action to take if there is no match in the group.
enum ConceptMapGroupUnmappedMode {
  /// Display: Provided Code
  /// Definition: Use the code as provided in the $translate request.
  provided('provided'),

  /// Display: Fixed Code
  /// Definition: Use the code explicitly provided in the group.unmapped.
  fixed('fixed'),

  /// Display: Other Map
  /// Definition: Use the map identified by the canonical URL in the url element.
  other_map('other-map'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConceptMapGroupUnmappedMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConceptMapGroupUnmappedMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode.elementOnly.withElement(element);
    }
    return ConceptMapGroupUnmappedMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
