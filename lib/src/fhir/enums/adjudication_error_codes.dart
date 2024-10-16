import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of adjudication codes.
enum AdjudicationErrorCodes {
  /// Display: Missing Identifier
  /// Definition: Missing Identifier
  a001('a001'),

  /// Display: Missing Creation Date
  /// Definition: Missing Creation Date
  a002('a002'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdjudicationErrorCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdjudicationErrorCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationErrorCodes.elementOnly.withElement(element);
    }
    return AdjudicationErrorCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdjudicationErrorCodes withElement(Element? newElement) {
    return AdjudicationErrorCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
