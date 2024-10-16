import 'package:fhir_r4/fhir_r4.dart';

/// Classification of warning type.
enum WarningType {
  /// Display: Get medical advice/attention.
  /// Definition: Get medical advice/attention.
  P313('P313'),

  /// Display: Get medical advice/attention if you feel unwell.
  /// Definition: Get medical advice/attention if you feel unwell.
  P314('P314'),

  /// Display: Get immediate medical advice/attention.
  /// Definition: Get immediate medical advice/attention.
  P315('P315'),

  /// Display: Specific treatment is urgent (see ... on this label).
  /// Definition: Specific treatment is urgent (see ... on this label).
  P320('P320'),

  /// Display: Specific treatment (see ... on this label).
  /// Definition: Specific treatment (see ... on this label).
  P321('P321'),

  /// Display: Specific measures (see ... on this label).
  /// Definition: Specific measures (see ... on this label).
  P322('P322'),

  /// Display: Rinse mouth.
  /// Definition: Rinse mouth.
  P330('P330'),

  /// Display: Do NOT induce vomiting.
  /// Definition: Do NOT induce vomiting.
  P331('P331'),

  /// Display: Remove/Take off immediately all contaminated clothing.
  /// Definition: Remove/Take off immediately all contaminated clothing.
  P361('P361'),

  /// Display: Wash contaminated clothing before reuse..
  /// Definition: Wash contaminated clothing before reuse.
  P363('P363'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const WarningType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static WarningType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WarningType.elementOnly.withElement(element);
    }
    return WarningType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  WarningType withElement(Element? newElement) {
    return WarningType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
