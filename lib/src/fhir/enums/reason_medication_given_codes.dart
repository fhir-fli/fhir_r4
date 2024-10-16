import 'package:fhir_r4/fhir_r4.dart';

/// This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust terminology code system that consists of or contains concepts to support the medication process.
enum ReasonMedicationGivenCodes {
  /// Display: None
  /// Definition: No reason known.
  a('a'),

  /// Display: Given as Ordered
  /// Definition: The administration was following an ordered protocol.
  b('b'),

  /// Display: Emergency
  /// Definition: The administration was needed to treat an emergency.
  c('c'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ReasonMedicationGivenCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ReasonMedicationGivenCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReasonMedicationGivenCodes.elementOnly.withElement(element);
    }
    return ReasonMedicationGivenCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ReasonMedicationGivenCodes withElement(Element? newElement) {
    return ReasonMedicationGivenCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
