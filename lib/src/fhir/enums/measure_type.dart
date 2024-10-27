// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
class MeasureType {
  // Private constructor for internal use (like enum)
  MeasureType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureType values
  /// process
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType process = MeasureType._(
    'process',
  );

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType outcome = MeasureType._(
    'outcome',
  );

  /// structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType structure = MeasureType._(
    'structure',
  );

  /// patient_reported_outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType patient_reported_outcome = MeasureType._(
    'patient-reported-outcome',
  );

  /// composite
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType composite = MeasureType._(
    'composite',
  );

  /// For instances where an Element is present but not value

  static final MeasureType elementOnly = MeasureType._('');

  /// List of all enum-like values
  static final List<MeasureType> values = [
    process,
    outcome,
    structure,
    patient_reported_outcome,
    composite,
  ];

  /// Returns the enum value with an element attached
  MeasureType withElement(Element? newElement) {
    return MeasureType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MeasureType] from JSON.
  static MeasureType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureType.elementOnly.withElement(element);
    }
    return MeasureType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
