import 'package:fhir_r4/fhir_r4.dart';

/// How a compartment must be linked.
enum GraphCompartmentRule {
  /// Display: Identical
  /// Definition: The compartment must be identical (the same literal reference).
  identical('identical'),

  /// Display: Matching
  /// Definition: The compartment must be the same - the record must be about the same patient, but the reference may be different.
  matching('matching'),

  /// Display: Different
  /// Definition: The compartment must be different.
  different('different'),

  /// Display: Custom
  /// Definition: The compartment rule is defined in the accompanying FHIRPath expression.
  custom('custom'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GraphCompartmentRule(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GraphCompartmentRule fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRule.elementOnly.withElement(element);
    }
    return GraphCompartmentRule.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GraphCompartmentRule withElement(Element? newElement) {
    return GraphCompartmentRule.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
