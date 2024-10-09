import 'package:json_annotation/json_annotation.dart';

/// Evidence Report Section Type.
enum ReportSectionType {
  /// Display: Evidence Results
  /// Definition: Evidence Results.
  @JsonValue('Evidence')
  Evidence,

  /// Display: Evidence Results for the intervention exposure only
  /// Definition: Evidence Results for the intervention exposure only.
  @JsonValue('Intervention-group-alone-Evidence')
  Intervention_group_alone_Evidence,

  /// Display: Evidence Results for comparison of Intervention and Control
  /// Definition: Evidence Results for comparison of Intervention and Control.
  @JsonValue('Intervention-vs-Control-Evidence')
  Intervention_vs_Control_Evidence,

  /// Display: Evidence Results for the control exposure only
  /// Definition: Evidence Results for the control exposure only.
  @JsonValue('Control-group-alone-Evidence')
  Control_group_alone_Evidence,

  /// Display: Evidence Variables used
  /// Definition: Evidence Variables used.
  @JsonValue('EvidenceVariable')
  EvidenceVariable,

  /// Display: Evidence Variables actually observed
  /// Definition: Evidence Variables as observed in the research data.
  @JsonValue('EvidenceVariable-observed')
  EvidenceVariable_observed,

  /// Display: Evidence Variables intended for interpretation
  /// Definition: Evidence Variables intended for interpretation.
  @JsonValue('EvidenceVariable-intended')
  EvidenceVariable_intended,

  /// Display: Evidence Variable in variable role Population
  /// Definition: Evidence Variable in variable role Population.
  @JsonValue('EvidenceVariable-population')
  EvidenceVariable_population,

  /// Display: Evidence Variable in variable role Exposure
  /// Definition: Evidence Variable in variable role Exposure.
  @JsonValue('EvidenceVariable-exposure')
  EvidenceVariable_exposure,

  /// Display: Evidence Variable in variable role Outcome (MeasuredVariable)
  /// Definition: Evidence Variable in variable role Outcome (MeasuredVariable).
  @JsonValue('EvidenceVariable-outcome')
  EvidenceVariable_outcome,

  /// Display: Efficacy-outcomes
  /// Definition: Outcomes related to efficacy or potential benefits of interventions.
  @JsonValue('Efficacy-outcomes')
  Efficacy_outcomes,

  /// Display: Harms outcomes
  /// Definition: Outcomes related to adverse effects or potential harms of interventions.
  @JsonValue('Harms-outcomes')
  Harms_outcomes,

  /// Display: Sample Size
  /// Definition: Sample Size.
  @JsonValue('SampleSize')
  SampleSize,

  /// Display: References
  /// Definition: References.
  @JsonValue('References')
  References,

  /// Display: Assertion
  /// Definition: Assertion.
  @JsonValue('Assertion')
  Assertion,

  /// Display: Reasons
  /// Definition: Reasons.
  @JsonValue('Reasons')
  Reasons,

  /// Display: Certainty of Evidence
  /// Definition: Certainty of Evidence.
  @JsonValue('Certainty-of-Evidence')
  Certainty_of_Evidence,

  /// Display: Evidence Classifier section
  /// Definition: This section is used for classifiers of the evidence.
  @JsonValue('Evidence-Classifier')
  Evidence_Classifier,

  /// Display: Warnings
  /// Definition: Warnings.
  @JsonValue('Warnings')
  Warnings,

  /// Display: Text Summary
  /// Definition: Denotes a section specifying text summary for a report.
  @JsonValue('Text-Summary')
  Text_Summary,

  /// Display: Summary of Body of Evidence Findings
  /// Definition: Summary of Body of Evidence Findings.
  @JsonValue('SummaryOfBodyOfEvidenceFindings')
  SummaryOfBodyOfEvidenceFindings,

  /// Display: Summary of Individual Study Findings
  /// Definition: Summary of Individual Study Findings.
  @JsonValue('SummaryOfIndividualStudyFindings')
  SummaryOfIndividualStudyFindings,

  /// Display: Header
  /// Definition: Denotes the header to use for a Text Summary or above a Table.
  @JsonValue('Header')
  Header,

  /// Display: Tables
  /// Definition: Tables.
  @JsonValue('Tables')
  Tables,

  /// Display: Table
  @JsonValue('Table')
  Table,

  /// Display: Row Headers
  /// Definition: Denotes a section specifying row headers for a tabular report.
  @JsonValue('Row-Headers')
  Row_Headers,

  /// Display: Column Header
  /// Definition: Denotes the header to use for the column for a tabular report.
  @JsonValue('Column-Header')
  Column_Header,

  /// Display: Column Headers
  /// Definition: Denotes a section specifying column headers for a tabular report.
  @JsonValue('Column-Headers')
  Column_Headers,
  ;

  @override
  String toString() {
    switch (this) {
      case Evidence:
        return 'Evidence';
      case Intervention_group_alone_Evidence:
        return 'Intervention-group-alone-Evidence';
      case Intervention_vs_Control_Evidence:
        return 'Intervention-vs-Control-Evidence';
      case Control_group_alone_Evidence:
        return 'Control-group-alone-Evidence';
      case EvidenceVariable:
        return 'EvidenceVariable';
      case EvidenceVariable_observed:
        return 'EvidenceVariable-observed';
      case EvidenceVariable_intended:
        return 'EvidenceVariable-intended';
      case EvidenceVariable_population:
        return 'EvidenceVariable-population';
      case EvidenceVariable_exposure:
        return 'EvidenceVariable-exposure';
      case EvidenceVariable_outcome:
        return 'EvidenceVariable-outcome';
      case Efficacy_outcomes:
        return 'Efficacy-outcomes';
      case Harms_outcomes:
        return 'Harms-outcomes';
      case SampleSize:
        return 'SampleSize';
      case References:
        return 'References';
      case Assertion:
        return 'Assertion';
      case Reasons:
        return 'Reasons';
      case Certainty_of_Evidence:
        return 'Certainty-of-Evidence';
      case Evidence_Classifier:
        return 'Evidence-Classifier';
      case Warnings:
        return 'Warnings';
      case Text_Summary:
        return 'Text-Summary';
      case SummaryOfBodyOfEvidenceFindings:
        return 'SummaryOfBodyOfEvidenceFindings';
      case SummaryOfIndividualStudyFindings:
        return 'SummaryOfIndividualStudyFindings';
      case Header:
        return 'Header';
      case Tables:
        return 'Tables';
      case Table:
        return 'Table';
      case Row_Headers:
        return 'Row-Headers';
      case Column_Header:
        return 'Column-Header';
      case Column_Headers:
        return 'Column-Headers';
    }
  }

  String toJson() => toString();
  static ReportSectionType fromString(String str) {
    switch (str) {
      case 'Evidence':
        return ReportSectionType.Evidence;
      case 'Intervention-group-alone-Evidence':
        return ReportSectionType.Intervention_group_alone_Evidence;
      case 'Intervention-vs-Control-Evidence':
        return ReportSectionType.Intervention_vs_Control_Evidence;
      case 'Control-group-alone-Evidence':
        return ReportSectionType.Control_group_alone_Evidence;
      case 'EvidenceVariable':
        return ReportSectionType.EvidenceVariable;
      case 'EvidenceVariable-observed':
        return ReportSectionType.EvidenceVariable_observed;
      case 'EvidenceVariable-intended':
        return ReportSectionType.EvidenceVariable_intended;
      case 'EvidenceVariable-population':
        return ReportSectionType.EvidenceVariable_population;
      case 'EvidenceVariable-exposure':
        return ReportSectionType.EvidenceVariable_exposure;
      case 'EvidenceVariable-outcome':
        return ReportSectionType.EvidenceVariable_outcome;
      case 'Efficacy-outcomes':
        return ReportSectionType.Efficacy_outcomes;
      case 'Harms-outcomes':
        return ReportSectionType.Harms_outcomes;
      case 'SampleSize':
        return ReportSectionType.SampleSize;
      case 'References':
        return ReportSectionType.References;
      case 'Assertion':
        return ReportSectionType.Assertion;
      case 'Reasons':
        return ReportSectionType.Reasons;
      case 'Certainty-of-Evidence':
        return ReportSectionType.Certainty_of_Evidence;
      case 'Evidence-Classifier':
        return ReportSectionType.Evidence_Classifier;
      case 'Warnings':
        return ReportSectionType.Warnings;
      case 'Text-Summary':
        return ReportSectionType.Text_Summary;
      case 'SummaryOfBodyOfEvidenceFindings':
        return ReportSectionType.SummaryOfBodyOfEvidenceFindings;
      case 'SummaryOfIndividualStudyFindings':
        return ReportSectionType.SummaryOfIndividualStudyFindings;
      case 'Header':
        return ReportSectionType.Header;
      case 'Tables':
        return ReportSectionType.Tables;
      case 'Table':
        return ReportSectionType.Table;
      case 'Row-Headers':
        return ReportSectionType.Row_Headers;
      case 'Column-Header':
        return ReportSectionType.Column_Header;
      case 'Column-Headers':
        return ReportSectionType.Column_Headers;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ReportSectionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
