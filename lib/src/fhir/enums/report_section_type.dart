// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Evidence Report Section Type.
class ReportSectionType {
  // Private constructor for internal use (like enum)
  ReportSectionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReportSectionType values
  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Evidence = ReportSectionType._(
    'Evidence',
  );

  /// Intervention_group_alone_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Intervention_group_alone_Evidence =
      ReportSectionType._(
    'Intervention-group-alone-Evidence',
  );

  /// Intervention_vs_Control_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Intervention_vs_Control_Evidence =
      ReportSectionType._(
    'Intervention-vs-Control-Evidence',
  );

  /// Control_group_alone_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Control_group_alone_Evidence =
      ReportSectionType._(
    'Control-group-alone-Evidence',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable = ReportSectionType._(
    'EvidenceVariable',
  );

  /// EvidenceVariable_observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_observed =
      ReportSectionType._(
    'EvidenceVariable-observed',
  );

  /// EvidenceVariable_intended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_intended =
      ReportSectionType._(
    'EvidenceVariable-intended',
  );

  /// EvidenceVariable_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_population =
      ReportSectionType._(
    'EvidenceVariable-population',
  );

  /// EvidenceVariable_exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_exposure =
      ReportSectionType._(
    'EvidenceVariable-exposure',
  );

  /// EvidenceVariable_outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_outcome = ReportSectionType._(
    'EvidenceVariable-outcome',
  );

  /// Efficacy_outcomes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Efficacy_outcomes = ReportSectionType._(
    'Efficacy-outcomes',
  );

  /// Harms_outcomes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Harms_outcomes = ReportSectionType._(
    'Harms-outcomes',
  );

  /// SampleSize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType SampleSize = ReportSectionType._(
    'SampleSize',
  );

  /// References
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType References = ReportSectionType._(
    'References',
  );

  /// Assertion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Assertion = ReportSectionType._(
    'Assertion',
  );

  /// Reasons
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Reasons = ReportSectionType._(
    'Reasons',
  );

  /// Certainty_of_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Certainty_of_Evidence = ReportSectionType._(
    'Certainty-of-Evidence',
  );

  /// Evidence_Classifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Evidence_Classifier = ReportSectionType._(
    'Evidence-Classifier',
  );

  /// Warnings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Warnings = ReportSectionType._(
    'Warnings',
  );

  /// Text_Summary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Text_Summary = ReportSectionType._(
    'Text-Summary',
  );

  /// SummaryOfBodyOfEvidenceFindings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType SummaryOfBodyOfEvidenceFindings =
      ReportSectionType._(
    'SummaryOfBodyOfEvidenceFindings',
  );

  /// SummaryOfIndividualStudyFindings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType SummaryOfIndividualStudyFindings =
      ReportSectionType._(
    'SummaryOfIndividualStudyFindings',
  );

  /// Header
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Header = ReportSectionType._(
    'Header',
  );

  /// Tables
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Tables = ReportSectionType._(
    'Tables',
  );

  /// Table
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Table = ReportSectionType._(
    'Table',
  );

  /// Row_Headers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Row_Headers = ReportSectionType._(
    'Row-Headers',
  );

  /// Column_Header
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Column_Header = ReportSectionType._(
    'Column-Header',
  );

  /// Column_Headers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Column_Headers = ReportSectionType._(
    'Column-Headers',
  );

  /// For instances where an Element is present but not value

  static final ReportSectionType elementOnly = ReportSectionType._('');

  /// List of all enum-like values
  static final List<ReportSectionType> values = [
    Evidence,
    Intervention_group_alone_Evidence,
    Intervention_vs_Control_Evidence,
    Control_group_alone_Evidence,
    EvidenceVariable,
    EvidenceVariable_observed,
    EvidenceVariable_intended,
    EvidenceVariable_population,
    EvidenceVariable_exposure,
    EvidenceVariable_outcome,
    Efficacy_outcomes,
    Harms_outcomes,
    SampleSize,
    References,
    Assertion,
    Reasons,
    Certainty_of_Evidence,
    Evidence_Classifier,
    Warnings,
    Text_Summary,
    SummaryOfBodyOfEvidenceFindings,
    SummaryOfIndividualStudyFindings,
    Header,
    Tables,
    Table,
    Row_Headers,
    Column_Header,
    Column_Headers,
  ];

  /// Returns the enum value with an element attached
  ReportSectionType withElement(Element? newElement) {
    return ReportSectionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReportSectionType] from JSON.
  static ReportSectionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportSectionType.elementOnly.withElement(element);
    }
    return ReportSectionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
