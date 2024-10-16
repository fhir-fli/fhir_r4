import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was administered. This value set is provided as a suggestive example.
enum ImmunizationReasonCodes {
  /// Display:
  /// Definition:
  value429060002('429060002'),

  /// Display:
  /// Definition:
  value281657000('281657000'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationReasonCodes.elementOnly.withElement(element);
    }
    return ImmunizationReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationReasonCodes withElement(Element? newElement) {
    return ImmunizationReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
