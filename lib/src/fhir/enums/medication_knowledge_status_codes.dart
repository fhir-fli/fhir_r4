// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Status Codes
class MedicationKnowledgeStatusCodes {
  // Private constructor for internal use (like enum)
  MedicationKnowledgeStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationKnowledgeStatusCodes] from JSON.
  factory MedicationKnowledgeStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeStatusCodes.elementOnly.withElement(element);
    }
    return MedicationKnowledgeStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationKnowledgeStatusCodes values
  /// active
  static final MedicationKnowledgeStatusCodes active =
      MedicationKnowledgeStatusCodes._(
    'active',
  );

  /// inactive
  static final MedicationKnowledgeStatusCodes inactive =
      MedicationKnowledgeStatusCodes._(
    'inactive',
  );

  /// entered_in_error
  static final MedicationKnowledgeStatusCodes entered_in_error =
      MedicationKnowledgeStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgeStatusCodes elementOnly =
      MedicationKnowledgeStatusCodes._('');

  /// List of all enum-like values
  static final List<MedicationKnowledgeStatusCodes> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  MedicationKnowledgeStatusCodes withElement(Element? newElement) {
    return MedicationKnowledgeStatusCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
