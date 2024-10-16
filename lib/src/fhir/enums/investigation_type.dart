import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for investigation type.
enum InvestigationType {
  /// Display: Examination / signs
  /// Definition:
  value271336007('271336007'),

  /// Display: History/symptoms
  /// Definition:
  value160237006('160237006'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const InvestigationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static InvestigationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvestigationType.elementOnly.withElement(element);
    }
    return InvestigationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  InvestigationType withElement(Element? newElement) {
    return InvestigationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
