import 'package:fhir_r4/fhir_r4.dart';

/// The severity of the adverse event itself, in direct relation to the subject.
enum AdverseEventSeverity {
  /// Display: Mild
  /// Definition:
  mild('mild'),

  /// Display: Moderate
  /// Definition:
  moderate('moderate'),

  /// Display: Severe
  /// Definition:
  severe('severe'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventSeverity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventSeverity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeverity.elementOnly.withElement(element);
    }
    return AdverseEventSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventSeverity withElement(Element? newElement) {
    return AdverseEventSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
