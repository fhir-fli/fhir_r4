import 'package:fhir_r4/fhir_r4.dart';

/// Defines how a compartment rule is used.
enum GraphCompartmentUse {
  /// Display: Condition
  /// Definition: This compartment rule is a condition for whether the rule applies.
  condition('condition'),

  /// Display: Requirement
  /// Definition: This compartment rule is enforced on any relationships that meet the conditions.
  requirement('requirement'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GraphCompartmentUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GraphCompartmentUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUse.elementOnly.withElement(element);
    }
    return GraphCompartmentUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GraphCompartmentUse withElement(Element? newElement) {
    return GraphCompartmentUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
