// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of study the evidence was derived from.
class StudyType {
  // Private constructor for internal use (like enum)
  StudyType._(this.fhirCode, {this.element});

  /// Factory constructor to create [StudyType] from JSON.
  factory StudyType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StudyType.elementOnly.withElement(element);
    }
    return StudyType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StudyType values
  /// RCT
  static final StudyType RCT = StudyType._(
    'RCT',
  );

  /// CCT
  static final StudyType CCT = StudyType._(
    'CCT',
  );

  /// cohort
  static final StudyType cohort = StudyType._(
    'cohort',
  );

  /// case_control
  static final StudyType case_control = StudyType._(
    'case-control',
  );

  /// series
  static final StudyType series = StudyType._(
    'series',
  );

  /// case_report
  static final StudyType case_report = StudyType._(
    'case-report',
  );

  /// mixed
  static final StudyType mixed = StudyType._(
    'mixed',
  );

  /// For instances where an Element is present but not value

  static final StudyType elementOnly = StudyType._('');

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
    return StudyType._(fhirCode, element: newElement);
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
