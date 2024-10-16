import 'package:fhir_r4/fhir_r4.dart';

/// TODO.
enum AdverseEventCausalityMethod {
  /// Display: Probability Scale
  /// Definition:
  ProbabilityScale('ProbabilityScale'),

  /// Display: Bayesian
  /// Definition:
  Bayesian('Bayesian'),

  /// Display: Checklist
  /// Definition:
  Checklist('Checklist'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventCausalityMethod(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventCausalityMethod fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityMethod.elementOnly.withElement(element);
    }
    return AdverseEventCausalityMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventCausalityMethod withElement(Element? newElement) {
    return AdverseEventCausalityMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
