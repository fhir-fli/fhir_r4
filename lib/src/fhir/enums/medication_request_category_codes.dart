// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Category Codes
class MedicationRequestCategoryCodes {
  // Private constructor for internal use (like enum)
  MedicationRequestCategoryCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationRequestCategoryCodes values
  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes inpatient =
      MedicationRequestCategoryCodes._(
    'inpatient',
  );

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes outpatient =
      MedicationRequestCategoryCodes._(
    'outpatient',
  );

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes community =
      MedicationRequestCategoryCodes._(
    'community',
  );

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCategoryCodes discharge =
      MedicationRequestCategoryCodes._(
    'discharge',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestCategoryCodes elementOnly =
      MedicationRequestCategoryCodes._('');

  /// List of all enum-like values
  static final List<MedicationRequestCategoryCodes> values = [
    inpatient,
    outpatient,
    community,
    discharge,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestCategoryCodes withElement(Element? newElement) {
    return MedicationRequestCategoryCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationRequestCategoryCodes] from JSON.
  static MedicationRequestCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCategoryCodes.elementOnly.withElement(element);
    }
    return MedicationRequestCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestCategoryCodes.$fhirCode';
}
