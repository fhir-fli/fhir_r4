// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Medication Status Codes
class MedicationStatusCodes {
  // Private constructor for internal use (like enum)
  MedicationStatusCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationStatusCodes] from JSON.
  factory MedicationStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatusCodes.elementOnly.withElement(element);
    }
    return MedicationStatusCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationStatusCodes values
  /// active
  static final MedicationStatusCodes active = MedicationStatusCodes._(
    'active',
  );

  /// inactive
  static final MedicationStatusCodes inactive = MedicationStatusCodes._(
    'inactive',
  );

  /// entered_in_error
  static final MedicationStatusCodes entered_in_error = MedicationStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final MedicationStatusCodes elementOnly = MedicationStatusCodes._('');

  /// List of all enum-like values
  static final List<MedicationStatusCodes> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  MedicationStatusCodes withElement(Element? newElement) {
    return MedicationStatusCodes._(fhirCode, element: newElement);
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
