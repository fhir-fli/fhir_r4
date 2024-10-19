// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes describing the reason why a family member's history is not available.
class FamilyHistoryAbsentReason {
  // Private constructor for internal use (like enum)
  FamilyHistoryAbsentReason._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FamilyHistoryAbsentReason values
  /// subject_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryAbsentReason subject_unknown =
      FamilyHistoryAbsentReason._(
    'subject-unknown',
  );

  /// withheld
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryAbsentReason withheld = FamilyHistoryAbsentReason._(
    'withheld',
  );

  /// unable_to_obtain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryAbsentReason unable_to_obtain =
      FamilyHistoryAbsentReason._(
    'unable-to-obtain',
  );

  /// deferred_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FamilyHistoryAbsentReason deferred_ =
      FamilyHistoryAbsentReason._(
    'deferred',
  );

  /// For instances where an Element is present but not value

  static final FamilyHistoryAbsentReason elementOnly =
      FamilyHistoryAbsentReason._('');

  /// List of all enum-like values
  static final List<FamilyHistoryAbsentReason> values = [
    subject_unknown,
    withheld,
    unable_to_obtain,
    deferred_,
  ];

  /// Returns the enum value with an element attached
  FamilyHistoryAbsentReason withElement(Element? newElement) {
    return FamilyHistoryAbsentReason._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FamilyHistoryAbsentReason] from JSON.
  static FamilyHistoryAbsentReason fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryAbsentReason.elementOnly.withElement(element);
    }
    return FamilyHistoryAbsentReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FamilyHistoryAbsentReason.$fhirCode';
}
