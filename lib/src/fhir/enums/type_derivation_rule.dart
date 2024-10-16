import 'package:fhir_r4/fhir_r4.dart';

/// How a type relates to its baseDefinition.
enum TypeDerivationRule {
  /// Display: Specialization
  /// Definition: This definition defines a new type that adds additional elements to the base type.
  specialization('specialization'),

  /// Display: Constraint
  /// Definition: This definition adds additional rules to an existing concrete type.
  constraint('constraint'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TypeDerivationRule(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TypeDerivationRule fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeDerivationRule.elementOnly.withElement(element);
    }
    return TypeDerivationRule.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TypeDerivationRule withElement(Element? newElement) {
    return TypeDerivationRule.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
