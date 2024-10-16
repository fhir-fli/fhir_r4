import 'package:fhir_r4/fhir_r4.dart';

/// Overall nature of the adverse event, e.g. real or potential.
enum AdverseEventActuality {
  /// Display: Adverse Event
  /// Definition: The adverse event actually happened regardless of whether anyone was affected or harmed.
  actual('actual'),

  /// Display: Potential Adverse Event
  /// Definition: A potential adverse event.
  potential('potential'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdverseEventActuality(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdverseEventActuality fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality.elementOnly.withElement(element);
    }
    return AdverseEventActuality.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
