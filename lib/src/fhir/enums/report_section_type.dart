// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Evidence Report Section Type.
class ReportSectionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ReportSectionType._(super.value, [super.element]);

  /// Factory constructor to create [ReportSectionType] from JSON.
  factory ReportSectionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportSectionType.elementOnly.withElement(element);
    }
    return ReportSectionType._(value, element);
  }

  /// Evidence
  static final ReportSectionType Evidence = ReportSectionType._(
    'Evidence',
  );

  /// Intervention_group_alone_Evidence
  static final ReportSectionType Intervention_group_alone_Evidence =
      ReportSectionType._(
    'Intervention-group-alone-Evidence',
  );

  /// Intervention_vs_Control_Evidence
  static final ReportSectionType Intervention_vs_Control_Evidence =
      ReportSectionType._(
    'Intervention-vs-Control-Evidence',
  );

  /// Control_group_alone_Evidence
  static final ReportSectionType Control_group_alone_Evidence =
      ReportSectionType._(
    'Control-group-alone-Evidence',
  );

  /// EvidenceVariable
  static final ReportSectionType EvidenceVariable = ReportSectionType._(
    'EvidenceVariable',
  );

  /// EvidenceVariable_observed
  static final ReportSectionType EvidenceVariable_observed =
      ReportSectionType._(
    'EvidenceVariable-observed',
  );

  /// EvidenceVariable_intended
  static final ReportSectionType EvidenceVariable_intended =
      ReportSectionType._(
    'EvidenceVariable-intended',
  );

  /// EvidenceVariable_population
  static final ReportSectionType EvidenceVariable_population =
      ReportSectionType._(
    'EvidenceVariable-population',
  );

  /// EvidenceVariable_exposure
  static final ReportSectionType EvidenceVariable_exposure =
      ReportSectionType._(
    'EvidenceVariable-exposure',
  );

  /// EvidenceVariable_outcome
  static final ReportSectionType EvidenceVariable_outcome = ReportSectionType._(
    'EvidenceVariable-outcome',
  );

  /// Efficacy_outcomes
  static final ReportSectionType Efficacy_outcomes = ReportSectionType._(
    'Efficacy-outcomes',
  );

  /// Harms_outcomes
  static final ReportSectionType Harms_outcomes = ReportSectionType._(
    'Harms-outcomes',
  );

  /// SampleSize
  static final ReportSectionType SampleSize = ReportSectionType._(
    'SampleSize',
  );

  /// References
  static final ReportSectionType References = ReportSectionType._(
    'References',
  );

  /// Assertion
  static final ReportSectionType Assertion = ReportSectionType._(
    'Assertion',
  );

  /// Reasons
  static final ReportSectionType Reasons = ReportSectionType._(
    'Reasons',
  );

  /// Certainty_of_Evidence
  static final ReportSectionType Certainty_of_Evidence = ReportSectionType._(
    'Certainty-of-Evidence',
  );

  /// Evidence_Classifier
  static final ReportSectionType Evidence_Classifier = ReportSectionType._(
    'Evidence-Classifier',
  );

  /// Warnings
  static final ReportSectionType Warnings = ReportSectionType._(
    'Warnings',
  );

  /// Text_Summary
  static final ReportSectionType Text_Summary = ReportSectionType._(
    'Text-Summary',
  );

  /// SummaryOfBodyOfEvidenceFindings
  static final ReportSectionType SummaryOfBodyOfEvidenceFindings =
      ReportSectionType._(
    'SummaryOfBodyOfEvidenceFindings',
  );

  /// SummaryOfIndividualStudyFindings
  static final ReportSectionType SummaryOfIndividualStudyFindings =
      ReportSectionType._(
    'SummaryOfIndividualStudyFindings',
  );

  /// Header
  static final ReportSectionType Header = ReportSectionType._(
    'Header',
  );

  /// Tables
  static final ReportSectionType Tables = ReportSectionType._(
    'Tables',
  );

  /// Table
  static final ReportSectionType Table = ReportSectionType._(
    'Table',
  );

  /// Row_Headers
  static final ReportSectionType Row_Headers = ReportSectionType._(
    'Row-Headers',
  );

  /// Column_Header
  static final ReportSectionType Column_Header = ReportSectionType._(
    'Column-Header',
  );

  /// Column_Headers
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

  /// Clones the current instance
  @override
  ReportSectionType clone() =>
      ReportSectionType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ReportSectionType setElement(String name, dynamic elementValue) {
    return ReportSectionType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ReportSectionType withElement(Element? newElement) {
    return ReportSectionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ReportSectionType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ReportSectionType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
