// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Category Codes
class MedicationDispenseCategoryCodes {
  // Private constructor for internal use (like enum)
  MedicationDispenseCategoryCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MedicationDispenseCategoryCodes] from JSON.
  factory MedicationDispenseCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationDispenseCategoryCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationDispenseCategoryCodes values
  /// inpatient
  static final MedicationDispenseCategoryCodes inpatient =
      MedicationDispenseCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  static final MedicationDispenseCategoryCodes outpatient =
      MedicationDispenseCategoryCodes._(
    'outpatient',
  );

  /// community
  static final MedicationDispenseCategoryCodes community =
      MedicationDispenseCategoryCodes._(
    'community',
  );

  /// discharge
  static final MedicationDispenseCategoryCodes discharge =
      MedicationDispenseCategoryCodes._(
    'discharge',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseCategoryCodes elementOnly =
      MedicationDispenseCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationDispenseCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    discharge,
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseCategoryCodes withElement(Element? newElement) {
    return MedicationDispenseCategoryCodes._(fhirCode, element: newElement);
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
