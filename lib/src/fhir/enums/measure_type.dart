// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
@collection
class MeasureType {
  /// Constructor for internal use (like enum)
  MeasureType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureType values
  /// process
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType process = MeasureType(
    fhirCode: 'process',
  );

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType outcome = MeasureType(
    fhirCode: 'outcome',
  );

  /// structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType structure = MeasureType(
    fhirCode: 'structure',
  );

  /// patient_reported_outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType patient_reported_outcome = MeasureType(
    fhirCode: 'patient-reported-outcome',
  );

  /// composite
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MeasureType composite = MeasureType(
    fhirCode: 'composite',
  );

  /// For instances where an Element is present but not value

  static final MeasureType elementOnly = MeasureType();

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
    return MeasureType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureType.$fhirCode';
}
