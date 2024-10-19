// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Evidence Report Section Type.
@Entity()
class ReportSectionType extends FhirCode {
  /// Factory constructor to create [ReportSectionType] from JSON.
  factory ReportSectionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportSectionType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ReportSectionType._(value, element);
    }
    throw ArgumentError(
      'ReportSectionType.fromJson: JSON value is not a valid value',
    );
  }

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Evidence([this.element])
      : dbValue = 'Evidence',
        super('Evidence', element);

  /// Intervention_group_alone_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Intervention_group_alone_Evidence([this.element])
      : dbValue = 'Intervention-group-alone-Evidence',
        super('Intervention-group-alone-Evidence', element);

  /// Intervention_vs_Control_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Intervention_vs_Control_Evidence([this.element])
      : dbValue = 'Intervention-vs-Control-Evidence',
        super('Intervention-vs-Control-Evidence', element);

  /// Control_group_alone_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Control_group_alone_Evidence([this.element])
      : dbValue = 'Control-group-alone-Evidence',
        super('Control-group-alone-Evidence', element);

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.EvidenceVariable([this.element])
      : dbValue = 'EvidenceVariable',
        super('EvidenceVariable', element);

  /// EvidenceVariable_observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.EvidenceVariable_observed([this.element])
      : dbValue = 'EvidenceVariable-observed',
        super('EvidenceVariable-observed', element);

  /// EvidenceVariable_intended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.EvidenceVariable_intended([this.element])
      : dbValue = 'EvidenceVariable-intended',
        super('EvidenceVariable-intended', element);

  /// EvidenceVariable_population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.EvidenceVariable_population([this.element])
      : dbValue = 'EvidenceVariable-population',
        super('EvidenceVariable-population', element);

  /// EvidenceVariable_exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.EvidenceVariable_exposure([this.element])
      : dbValue = 'EvidenceVariable-exposure',
        super('EvidenceVariable-exposure', element);

  /// EvidenceVariable_outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.EvidenceVariable_outcome([this.element])
      : dbValue = 'EvidenceVariable-outcome',
        super('EvidenceVariable-outcome', element);

  /// Efficacy_outcomes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Efficacy_outcomes([this.element])
      : dbValue = 'Efficacy-outcomes',
        super('Efficacy-outcomes', element);

  /// Harms_outcomes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Harms_outcomes([this.element])
      : dbValue = 'Harms-outcomes',
        super('Harms-outcomes', element);

  /// SampleSize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.SampleSize([this.element])
      : dbValue = 'SampleSize',
        super('SampleSize', element);

  /// References
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.References([this.element])
      : dbValue = 'References',
        super('References', element);

  /// Assertion
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Assertion([this.element])
      : dbValue = 'Assertion',
        super('Assertion', element);

  /// Reasons
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Reasons([this.element])
      : dbValue = 'Reasons',
        super('Reasons', element);

  /// Certainty_of_Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Certainty_of_Evidence([this.element])
      : dbValue = 'Certainty-of-Evidence',
        super('Certainty-of-Evidence', element);

  /// Evidence_Classifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Evidence_Classifier([this.element])
      : dbValue = 'Evidence-Classifier',
        super('Evidence-Classifier', element);

  /// Warnings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Warnings([this.element])
      : dbValue = 'Warnings',
        super('Warnings', element);

  /// Text_Summary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Text_Summary([this.element])
      : dbValue = 'Text-Summary',
        super('Text-Summary', element);

  /// SummaryOfBodyOfEvidenceFindings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.SummaryOfBodyOfEvidenceFindings([this.element])
      : dbValue = 'SummaryOfBodyOfEvidenceFindings',
        super('SummaryOfBodyOfEvidenceFindings', element);

  /// SummaryOfIndividualStudyFindings
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.SummaryOfIndividualStudyFindings([this.element])
      : dbValue = 'SummaryOfIndividualStudyFindings',
        super('SummaryOfIndividualStudyFindings', element);

  /// Header
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Header([this.element])
      : dbValue = 'Header',
        super('Header', element);

  /// Tables
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Tables([this.element])
      : dbValue = 'Tables',
        super('Tables', element);

  /// Table
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Table([this.element])
      : dbValue = 'Table',
        super('Table', element);

  /// Row_Headers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Row_Headers([this.element])
      : dbValue = 'Row-Headers',
        super('Row-Headers', element);

  /// Column_Header
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Column_Header([this.element])
      : dbValue = 'Column-Header',
        super('Column-Header', element);

  /// Column_Headers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReportSectionType.Column_Headers([this.element])
      : dbValue = 'Column-Headers',
        super('Column-Headers', element);

  /// For instances where an Element is present but not value

  ReportSectionType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ReportSectionType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'Evidence',
    'Intervention-group-alone-Evidence',
    'Intervention-vs-Control-Evidence',
    'Control-group-alone-Evidence',
    'EvidenceVariable',
    'EvidenceVariable-observed',
    'EvidenceVariable-intended',
    'EvidenceVariable-population',
    'EvidenceVariable-exposure',
    'EvidenceVariable-outcome',
    'Efficacy-outcomes',
    'Harms-outcomes',
    'SampleSize',
    'References',
    'Assertion',
    'Reasons',
    'Certainty-of-Evidence',
    'Evidence-Classifier',
    'Warnings',
    'Text-Summary',
    'SummaryOfBodyOfEvidenceFindings',
    'SummaryOfIndividualStudyFindings',
    'Header',
    'Tables',
    'Table',
    'Row-Headers',
    'Column-Header',
    'Column-Headers',
  ];

  /// Returns the enum value with an element attached
  ReportSectionType withElement(Element? newElement) {
    return ReportSectionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReportSectionType.$value';
}
