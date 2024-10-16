import 'package:fhir_r4/fhir_r4.dart';

/// Codes describing the reason why a family member's history is not available.
enum FamilyHistoryAbsentReason {
  /// Display: Subject Unknown
  /// Definition: Patient does not know the subject, e.g. the biological parent of an adopted patient.
  subject_unknown('subject-unknown'),

  /// Display: Information Withheld
  /// Definition: The patient withheld or refused to share the information.
  withheld('withheld'),

  /// Display: Unable To Obtain
  /// Definition: Information cannot be obtained; e.g. unconscious patient.
  unable_to_obtain('unable-to-obtain'),

  /// Display: Deferred
  /// Definition: Patient does not have the information now, but can provide the information at a later date.
  deferred_('deferred'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FamilyHistoryAbsentReason(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FamilyHistoryAbsentReason fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryAbsentReason.elementOnly.withElement(element);
    }
    return FamilyHistoryAbsentReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FamilyHistoryAbsentReason withElement(Element? newElement) {
    return FamilyHistoryAbsentReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
