// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of study the evidence was derived from.
@collection
class StudyType {
  /// Constructor for internal use (like enum)
  StudyType({this.fhirCode, this.element})
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

  /// StudyType values
  /// RCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType RCT = StudyType(
    fhirCode: 'RCT',
  );

  /// CCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType CCT = StudyType(
    fhirCode: 'CCT',
  );

  /// cohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType cohort = StudyType(
    fhirCode: 'cohort',
  );

  /// case_control
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType case_control = StudyType(
    fhirCode: 'case-control',
  );

  /// series
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType series = StudyType(
    fhirCode: 'series',
  );

  /// case_report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType case_report = StudyType(
    fhirCode: 'case-report',
  );

  /// mixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StudyType mixed = StudyType(
    fhirCode: 'mixed',
  );

  /// For instances where an Element is present but not value

  static final StudyType elementOnly = StudyType();

  /// List of all enum-like values
  static final List<StudyType> values = [
    RCT,
    CCT,
    cohort,
    case_control,
    series,
    case_report,
    mixed,
  ];

  /// Returns the enum value with an element attached
  StudyType withElement(Element? newElement) {
    return StudyType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StudyType] from JSON.
  static StudyType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StudyType.elementOnly.withElement(element);
    }
    return StudyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StudyType.$fhirCode';
}
