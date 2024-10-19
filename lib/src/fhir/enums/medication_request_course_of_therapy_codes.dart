// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Course of Therapy Codes
class MedicationRequestCourseOfTherapyCodes {
  // Private constructor for internal use (like enum)
  MedicationRequestCourseOfTherapyCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MedicationRequestCourseOfTherapyCodes values
  /// continuous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCourseOfTherapyCodes continuous =
      MedicationRequestCourseOfTherapyCodes._(
    'continuous',
  );

  /// acute
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCourseOfTherapyCodes acute =
      MedicationRequestCourseOfTherapyCodes._(
    'acute',
  );

  /// seasonal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestCourseOfTherapyCodes seasonal =
      MedicationRequestCourseOfTherapyCodes._(
    'seasonal',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestCourseOfTherapyCodes elementOnly =
      MedicationRequestCourseOfTherapyCodes._('');

  /// List of all enum-like values
  static final List<MedicationRequestCourseOfTherapyCodes> values = [
    continuous,
    acute,
    seasonal,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestCourseOfTherapyCodes withElement(Element? newElement) {
    return MedicationRequestCourseOfTherapyCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationRequestCourseOfTherapyCodes] from JSON.
  static MedicationRequestCourseOfTherapyCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCourseOfTherapyCodes.elementOnly
          .withElement(element);
    }
    return MedicationRequestCourseOfTherapyCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestCourseOfTherapyCodes.$fhirCode';
}
