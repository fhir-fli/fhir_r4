import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Adjudication Reason codes.
enum AdjudicationReasonCodes {
  /// Display: Not covered
  /// Definition: Not covered
  ar001('ar001'),

  /// Display: Plan Limit Reached
  /// Definition: Plan Limit Reached
  ar002('ar002'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdjudicationReasonCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdjudicationReasonCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationReasonCodes.elementOnly.withElement(element);
    }
    return AdjudicationReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdjudicationReasonCodes withElement(Element? newElement) {
    return AdjudicationReasonCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
