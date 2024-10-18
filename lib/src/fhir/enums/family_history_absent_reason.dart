// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FamilyHistoryAbsentReason(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FamilyHistoryAbsentReason] instances.
  static FamilyHistoryAbsentReason fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryAbsentReason.elementOnly.withElement(
        element,
      );
    }
    return FamilyHistoryAbsentReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FamilyHistoryAbsentReason withElement(Element? newElement) {
    return FamilyHistoryAbsentReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
