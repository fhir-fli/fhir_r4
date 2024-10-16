import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
enum DetectedIssueSeverity {
  /// Display: High
  /// Definition: Indicates the issue may be life-threatening or has the potential to cause permanent injury.
  high('high'),

  /// Display: Moderate
  /// Definition: Indicates the issue may result in noticeable adverse consequences but is unlikely to be life-threatening or cause permanent injury.
  moderate('moderate'),

  /// Display: Low
  /// Definition: Indicates the issue may result in some adverse consequences but is unlikely to substantially affect the situation of the subject.
  low('low'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DetectedIssueSeverity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DetectedIssueSeverity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly.withElement(element);
    }
    return DetectedIssueSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
