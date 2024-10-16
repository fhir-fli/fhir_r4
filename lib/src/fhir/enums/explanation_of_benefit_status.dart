import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the state of the resource instance.
enum ExplanationOfBenefitStatus {
  /// Display: Active
  /// Definition: The resource instance is currently in-force.
  active('active'),

  /// Display: Cancelled
  /// Definition: The resource instance is withdrawn, rescinded or reversed.
  cancelled('cancelled'),

  /// Display: Draft
  /// Definition: A new resource instance the contents of which is not complete.
  draft('draft'),

  /// Display: Entered In Error
  /// Definition: The resource instance was entered in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExplanationOfBenefitStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExplanationOfBenefitStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(element);
    }
    return ExplanationOfBenefitStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
