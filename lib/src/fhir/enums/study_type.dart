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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StudyType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StudyType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StudyType.elementOnly.withElement(element);
    }
    return StudyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StudyType withElement(Element? newElement) {
    return StudyType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
