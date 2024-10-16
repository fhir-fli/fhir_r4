import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is provided as a suggestive example.
enum ImmunizationSubpotentReason {
  /// Display: Partial Dose
  /// Definition: The full volume of the dose was not administered to the patient.
  partial('partial'),

  /// Display: Cold Chain Break
  /// Definition: The vaccine experienced a cold chain break.
  coldchainbreak('coldchainbreak'),

  /// Display: Manufacturer Recall
  /// Definition: The vaccine was recalled by the manufacturer.
  recall('recall'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationSubpotentReason(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationSubpotentReason fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationSubpotentReason.elementOnly.withElement(element);
    }
    return ImmunizationSubpotentReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationSubpotentReason withElement(Element? newElement) {
    return ImmunizationSubpotentReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
