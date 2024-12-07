// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Evidence Report Section Type.
class ReportSectionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ReportSectionType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ReportSectionType] from JSON.
  factory ReportSectionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportSectionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReportSectionType cannot be constructed from JSON.',
      );
    }
    return ReportSectionType._(value: value, element: element);
  }

  /// Evidence
  static final ReportSectionType Evidence = ReportSectionType._(
    value: 'Evidence',
  );

  /// Intervention_group_alone_Evidence
  static final ReportSectionType Intervention_group_alone_Evidence =
      ReportSectionType._(
    value: 'Intervention-group-alone-Evidence',
  );

  /// Intervention_vs_Control_Evidence
  static final ReportSectionType Intervention_vs_Control_Evidence =
      ReportSectionType._(
    value: 'Intervention-vs-Control-Evidence',
  );

  /// Control_group_alone_Evidence
  static final ReportSectionType Control_group_alone_Evidence =
      ReportSectionType._(
    value: 'Control-group-alone-Evidence',
  );

  /// EvidenceVariable
  static final ReportSectionType EvidenceVariable = ReportSectionType._(
    value: 'EvidenceVariable',
  );

  /// EvidenceVariable_observed
  static final ReportSectionType EvidenceVariable_observed =
      ReportSectionType._(
    value: 'EvidenceVariable-observed',
  );

  /// EvidenceVariable_intended
  static final ReportSectionType EvidenceVariable_intended =
      ReportSectionType._(
    value: 'EvidenceVariable-intended',
  );

  /// EvidenceVariable_population
  static final ReportSectionType EvidenceVariable_population =
      ReportSectionType._(
    value: 'EvidenceVariable-population',
  );

  /// EvidenceVariable_exposure
  static final ReportSectionType EvidenceVariable_exposure =
      ReportSectionType._(
    value: 'EvidenceVariable-exposure',
  );

  /// EvidenceVariable_outcome
  static final ReportSectionType EvidenceVariable_outcome = ReportSectionType._(
    value: 'EvidenceVariable-outcome',
  );

  /// Efficacy_outcomes
  static final ReportSectionType Efficacy_outcomes = ReportSectionType._(
    value: 'Efficacy-outcomes',
  );

  /// Harms_outcomes
  static final ReportSectionType Harms_outcomes = ReportSectionType._(
    value: 'Harms-outcomes',
  );

  /// SampleSize
  static final ReportSectionType SampleSize = ReportSectionType._(
    value: 'SampleSize',
  );

  /// References
  static final ReportSectionType References = ReportSectionType._(
    value: 'References',
  );

  /// Assertion
  static final ReportSectionType Assertion = ReportSectionType._(
    value: 'Assertion',
  );

  /// Reasons
  static final ReportSectionType Reasons = ReportSectionType._(
    value: 'Reasons',
  );

  /// Certainty_of_Evidence
  static final ReportSectionType Certainty_of_Evidence = ReportSectionType._(
    value: 'Certainty-of-Evidence',
  );

  /// Evidence_Classifier
  static final ReportSectionType Evidence_Classifier = ReportSectionType._(
    value: 'Evidence-Classifier',
  );

  /// Warnings
  static final ReportSectionType Warnings = ReportSectionType._(
    value: 'Warnings',
  );

  /// Text_Summary
  static final ReportSectionType Text_Summary = ReportSectionType._(
    value: 'Text-Summary',
  );

  /// SummaryOfBodyOfEvidenceFindings
  static final ReportSectionType SummaryOfBodyOfEvidenceFindings =
      ReportSectionType._(
    value: 'SummaryOfBodyOfEvidenceFindings',
  );

  /// SummaryOfIndividualStudyFindings
  static final ReportSectionType SummaryOfIndividualStudyFindings =
      ReportSectionType._(
    value: 'SummaryOfIndividualStudyFindings',
  );

  /// Header
  static final ReportSectionType Header = ReportSectionType._(
    value: 'Header',
  );

  /// Tables
  static final ReportSectionType Tables = ReportSectionType._(
    value: 'Tables',
  );

  /// Table
  static final ReportSectionType Table = ReportSectionType._(
    value: 'Table',
  );

  /// Row_Headers
  static final ReportSectionType Row_Headers = ReportSectionType._(
    value: 'Row-Headers',
  );

  /// Column_Header
  static final ReportSectionType Column_Header = ReportSectionType._(
    value: 'Column-Header',
  );

  /// Column_Headers
  static final ReportSectionType Column_Headers = ReportSectionType._(
    value: 'Column-Headers',
  );

  /// For instances where an Element is present but not value

  static final ReportSectionType elementOnly = ReportSectionType._(value: '');

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
  ReportSectionType clone() => ReportSectionType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ReportSectionType withElement(Element? newElement) {
    return ReportSectionType._(value: value, element: newElement);
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ReportSectionType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
