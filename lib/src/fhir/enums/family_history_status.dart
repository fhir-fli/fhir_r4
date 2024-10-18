// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FamilyHistoryStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FamilyHistoryStatus] instances.
  static FamilyHistoryStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    }
    return FamilyHistoryStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
