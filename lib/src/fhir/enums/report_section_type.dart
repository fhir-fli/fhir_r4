// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Evidence Report Section Type.
@collection
class ReportSectionType {
  /// Constructor for internal use (like enum)
  ReportSectionType({this.fhirCode, this.element})
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

  /// ReportSectionType values
  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Evidence = ReportSectionType(
    fhirCode: 'Evidence',
  );

  /// Intervention_group_alone_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Intervention_group_alone_Evidence =
      ReportSectionType(
    fhirCode: 'Intervention-group-alone-Evidence',
  );

  /// Intervention_vs_Control_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Intervention_vs_Control_Evidence =
      ReportSectionType(
    fhirCode: 'Intervention-vs-Control-Evidence',
  );

  /// Control_group_alone_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Control_group_alone_Evidence =
      ReportSectionType(
    fhirCode: 'Control-group-alone-Evidence',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable = ReportSectionType(
    fhirCode: 'EvidenceVariable',
  );

  /// EvidenceVariable_observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_observed = ReportSectionType(
    fhirCode: 'EvidenceVariable-observed',
  );

  /// EvidenceVariable_intended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_intended = ReportSectionType(
    fhirCode: 'EvidenceVariable-intended',
  );

  /// EvidenceVariable_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_population =
      ReportSectionType(
    fhirCode: 'EvidenceVariable-population',
  );

  /// EvidenceVariable_exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_exposure = ReportSectionType(
    fhirCode: 'EvidenceVariable-exposure',
  );

  /// EvidenceVariable_outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType EvidenceVariable_outcome = ReportSectionType(
    fhirCode: 'EvidenceVariable-outcome',
  );

  /// Efficacy_outcomes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Efficacy_outcomes = ReportSectionType(
    fhirCode: 'Efficacy-outcomes',
  );

  /// Harms_outcomes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Harms_outcomes = ReportSectionType(
    fhirCode: 'Harms-outcomes',
  );

  /// SampleSize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType SampleSize = ReportSectionType(
    fhirCode: 'SampleSize',
  );

  /// References
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType References = ReportSectionType(
    fhirCode: 'References',
  );

  /// Assertion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Assertion = ReportSectionType(
    fhirCode: 'Assertion',
  );

  /// Reasons
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Reasons = ReportSectionType(
    fhirCode: 'Reasons',
  );

  /// Certainty_of_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Certainty_of_Evidence = ReportSectionType(
    fhirCode: 'Certainty-of-Evidence',
  );

  /// Evidence_Classifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Evidence_Classifier = ReportSectionType(
    fhirCode: 'Evidence-Classifier',
  );

  /// Warnings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Warnings = ReportSectionType(
    fhirCode: 'Warnings',
  );

  /// Text_Summary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Text_Summary = ReportSectionType(
    fhirCode: 'Text-Summary',
  );

  /// SummaryOfBodyOfEvidenceFindings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType SummaryOfBodyOfEvidenceFindings =
      ReportSectionType(
    fhirCode: 'SummaryOfBodyOfEvidenceFindings',
  );

  /// SummaryOfIndividualStudyFindings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType SummaryOfIndividualStudyFindings =
      ReportSectionType(
    fhirCode: 'SummaryOfIndividualStudyFindings',
  );

  /// Header
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Header = ReportSectionType(
    fhirCode: 'Header',
  );

  /// Tables
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Tables = ReportSectionType(
    fhirCode: 'Tables',
  );

  /// Table
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Table = ReportSectionType(
    fhirCode: 'Table',
  );

  /// Row_Headers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Row_Headers = ReportSectionType(
    fhirCode: 'Row-Headers',
  );

  /// Column_Header
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Column_Header = ReportSectionType(
    fhirCode: 'Column-Header',
  );

  /// Column_Headers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportSectionType Column_Headers = ReportSectionType(
    fhirCode: 'Column-Headers',
  );

  /// For instances where an Element is present but not value

  static final ReportSectionType elementOnly = ReportSectionType();

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
    return ReportSectionType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReportSectionType.$fhirCode';
}
