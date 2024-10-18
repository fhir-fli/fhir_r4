// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of study the evidence was derived from.
enum StudyType {
  /// Display: randomized trial
  /// Definition: randomized controlled trial.
  RCT('RCT'),

  /// Display: controlled trial (non-randomized)
  /// Definition: controlled (but not randomized) trial.
  CCT('CCT'),

  /// Display: comparative cohort study
  /// Definition: observational study comparing cohorts.
  cohort('cohort'),

  /// Display: case-control study
  /// Definition: case-control study.
  case_control('case-control'),

  /// Display: uncontrolled cohort or case series
  /// Definition: uncontrolled cohort or case series.
  series('series'),

  /// Display: case report
  /// Definition: a single case report.
  case_report('case-report'),

  /// Display: mixed methods
  /// Definition: a combination of 1 or more types of studies.
  mixed('mixed'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StudyType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StudyType] instances.
  static StudyType fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  StudyType withElement(Element? newElement) {
    return StudyType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
