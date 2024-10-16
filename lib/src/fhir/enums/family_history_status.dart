import 'package:fhir_r4/fhir_r4.dart';

/// A code that identifies the status of the family history record.
enum FamilyHistoryStatus {
  /// Display: Partial
  /// Definition: Some health information is known and captured, but not complete - see notes for details.
  partial('partial'),

  /// Display: Completed
  /// Definition: All available related health information is captured as of the date (and possibly time) when the family member history was taken.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),

  /// Display: Health Unknown
  /// Definition: Health information for this family member is unavailable/unknown.
  health_unknown('health-unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FamilyHistoryStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FamilyHistoryStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    }
    return FamilyHistoryStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
