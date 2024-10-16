import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for an interaction between two substances.
enum InteractionType {
  /// Display: drug to drug interaction
  /// Definition:
  drug_drug('drug-drug'),

  /// Display: drug to food interaction
  /// Definition:
  drug_food('drug-food'),

  /// Display: drug to laboratory test interaction
  /// Definition:
  drug_test('drug-test'),

  /// Display: other interaction
  /// Definition:
  other('other'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const InteractionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static InteractionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionType.elementOnly.withElement(element);
    }
    return InteractionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  InteractionType withElement(Element? newElement) {
    return InteractionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
