import 'package:fhir_r4/fhir_r4.dart';

/// Evidence Report Section Type.
enum ReportSectionType {
  /// Display: Evidence Results
  /// Definition: Evidence Results.
  Evidence('Evidence'),

  /// Display: Evidence Results for the intervention exposure only
  /// Definition: Evidence Results for the intervention exposure only.
  Intervention_group_alone_Evidence('Intervention-group-alone-Evidence'),

  /// Display: Evidence Results for comparison of Intervention and Control
  /// Definition: Evidence Results for comparison of Intervention and Control.
  Intervention_vs_Control_Evidence('Intervention-vs-Control-Evidence'),

  /// Display: Evidence Results for the control exposure only
  /// Definition: Evidence Results for the control exposure only.
  Control_group_alone_Evidence('Control-group-alone-Evidence'),

  /// Display: Evidence Variables used
  /// Definition: Evidence Variables used.
  EvidenceVariable('EvidenceVariable'),

  /// Display: Evidence Variables actually observed
  /// Definition: Evidence Variables as observed in the research data.
  EvidenceVariable_observed('EvidenceVariable-observed'),

  /// Display: Evidence Variables intended for interpretation
  /// Definition: Evidence Variables intended for interpretation.
  EvidenceVariable_intended('EvidenceVariable-intended'),

  /// Display: Evidence Variable in variable role Population
  /// Definition: Evidence Variable in variable role Population.
  EvidenceVariable_population('EvidenceVariable-population'),

  /// Display: Evidence Variable in variable role Exposure
  /// Definition: Evidence Variable in variable role Exposure.
  EvidenceVariable_exposure('EvidenceVariable-exposure'),

  /// Display: Evidence Variable in variable role Outcome (MeasuredVariable)
  /// Definition: Evidence Variable in variable role Outcome (MeasuredVariable).
  EvidenceVariable_outcome('EvidenceVariable-outcome'),

  /// Display: Efficacy-outcomes
  /// Definition: Outcomes related to efficacy or potential benefits of interventions.
  Efficacy_outcomes('Efficacy-outcomes'),

  /// Display: Harms outcomes
  /// Definition: Outcomes related to adverse effects or potential harms of interventions.
  Harms_outcomes('Harms-outcomes'),

  /// Display: Sample Size
  /// Definition: Sample Size.
  SampleSize('SampleSize'),

  /// Display: References
  /// Definition: References.
  References('References'),

  /// Display: Assertion
  /// Definition: Assertion.
  Assertion('Assertion'),

  /// Display: Reasons
  /// Definition: Reasons.
  Reasons('Reasons'),

  /// Display: Certainty of Evidence
  /// Definition: Certainty of Evidence.
  Certainty_of_Evidence('Certainty-of-Evidence'),

  /// Display: Evidence Classifier section
  /// Definition: This section is used for classifiers of the evidence.
  Evidence_Classifier('Evidence-Classifier'),

  /// Display: Warnings
  /// Definition: Warnings.
  Warnings('Warnings'),

  /// Display: Text Summary
  /// Definition: Denotes a section specifying text summary for a report.
  Text_Summary('Text-Summary'),

  /// Display: Summary of Body of Evidence Findings
  /// Definition: Summary of Body of Evidence Findings.
  SummaryOfBodyOfEvidenceFindings('SummaryOfBodyOfEvidenceFindings'),

  /// Display: Summary of Individual Study Findings
  /// Definition: Summary of Individual Study Findings.
  SummaryOfIndividualStudyFindings('SummaryOfIndividualStudyFindings'),

  /// Display: Header
  /// Definition: Denotes the header to use for a Text Summary or above a Table.
  Header('Header'),

  /// Display: Tables
  /// Definition: Tables.
  Tables('Tables'),

  /// Display: Table
  /// Definition:
  Table('Table'),

  /// Display: Row Headers
  /// Definition: Denotes a section specifying row headers for a tabular report.
  Row_Headers('Row-Headers'),

  /// Display: Column Header
  /// Definition: Denotes the header to use for the column for a tabular report.
  Column_Header('Column-Header'),

  /// Display: Column Headers
  /// Definition: Denotes a section specifying column headers for a tabular report.
  Column_Headers('Column-Headers'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ReportSectionType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ReportSectionType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportSectionType.elementOnly.withElement(element);
    }
    return ReportSectionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ReportSectionType withElement(Element? newElement) {
    return ReportSectionType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
