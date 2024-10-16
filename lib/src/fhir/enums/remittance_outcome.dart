import 'package:fhir_r4/fhir_r4.dart';

/// The outcome of the processing.
enum RemittanceOutcome {
  /// Display: Queued
  /// Definition: The Claim/Pre-authorization/Pre-determination has been received but processing has not begun.
  queued('queued'),

  /// Display: Complete
  /// Definition: The processing completed without errors.
  complete('complete'),

  /// Display: Error
  /// Definition: The processing identified errors.
  error('error'),

  /// Display: Partial
  /// Definition: No errors have been detected and some of the adjudication has been performed.
  partial('partial'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const RemittanceOutcome(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static RemittanceOutcome fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcome.elementOnly.withElement(element);
    }
    return RemittanceOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  RemittanceOutcome withElement(Element? newElement) {
    return RemittanceOutcome.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
