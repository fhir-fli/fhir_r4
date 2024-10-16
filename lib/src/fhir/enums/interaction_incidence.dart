import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for incidence of occurence of an interaction.
enum InteractionIncidence {
  /// Display: Theoretical
  /// Definition:
  Theoretical('Theoretical'),

  /// Display: Observed
  /// Definition:
  Observed('Observed'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const InteractionIncidence(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static InteractionIncidence fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionIncidence.elementOnly.withElement(element);
    }
    return InteractionIncidence.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  InteractionIncidence withElement(Element? newElement) {
    return InteractionIncidence.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
