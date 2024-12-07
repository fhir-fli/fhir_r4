// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Commonly used classifiers for evidence sets.
class EvidenceClassifier extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceClassifier._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EvidenceClassifier] from JSON.
  factory EvidenceClassifier.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceClassifier.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceClassifier cannot be constructed from JSON.',
      );
    }
    return EvidenceClassifier._(value: value, element: element);
  }

  /// COVID19Specific
  static final EvidenceClassifier COVID19Specific = EvidenceClassifier._(
    value: 'COVID19Specific',
  );

  /// COVID19Relevant
  static final EvidenceClassifier COVID19Relevant = EvidenceClassifier._(
    value: 'COVID19Relevant',
  );

  /// COVID19HumanResearch
  static final EvidenceClassifier COVID19HumanResearch = EvidenceClassifier._(
    value: 'COVID19HumanResearch',
  );

  /// OriginalResearch
  static final EvidenceClassifier OriginalResearch = EvidenceClassifier._(
    value: 'OriginalResearch',
  );

  /// ResearchSynthesis
  static final EvidenceClassifier ResearchSynthesis = EvidenceClassifier._(
    value: 'ResearchSynthesis',
  );

  /// Guideline
  static final EvidenceClassifier Guideline = EvidenceClassifier._(
    value: 'Guideline',
  );

  /// ResearchProtocol
  static final EvidenceClassifier ResearchProtocol = EvidenceClassifier._(
    value: 'ResearchProtocol',
  );

  /// NotResearchNotGuideline
  static final EvidenceClassifier NotResearchNotGuideline =
      EvidenceClassifier._(
    value: 'NotResearchNotGuideline',
  );

  /// Treatment
  static final EvidenceClassifier Treatment = EvidenceClassifier._(
    value: 'Treatment',
  );

  /// PreventionAndControl
  static final EvidenceClassifier PreventionAndControl = EvidenceClassifier._(
    value: 'PreventionAndControl',
  );

  /// Diagnosis
  static final EvidenceClassifier Diagnosis = EvidenceClassifier._(
    value: 'Diagnosis',
  );

  /// PrognosisPrediction
  static final EvidenceClassifier PrognosisPrediction = EvidenceClassifier._(
    value: 'PrognosisPrediction',
  );

  /// RatedAsYes
  static final EvidenceClassifier RatedAsYes = EvidenceClassifier._(
    value: 'RatedAsYes',
  );

  /// RatedAsNo
  static final EvidenceClassifier RatedAsNo = EvidenceClassifier._(
    value: 'RatedAsNo',
  );

  /// NotAssessed
  static final EvidenceClassifier NotAssessed = EvidenceClassifier._(
    value: 'NotAssessed',
  );

  /// RatedAsRCT
  static final EvidenceClassifier RatedAsRCT = EvidenceClassifier._(
    value: 'RatedAsRCT',
  );

  /// RatedAsControlledTrial
  static final EvidenceClassifier RatedAsControlledTrial = EvidenceClassifier._(
    value: 'RatedAsControlledTrial',
  );

  /// RatedAsComparativeCohort
  static final EvidenceClassifier RatedAsComparativeCohort =
      EvidenceClassifier._(
    value: 'RatedAsComparativeCohort',
  );

  /// RatedAsCaseControl
  static final EvidenceClassifier RatedAsCaseControl = EvidenceClassifier._(
    value: 'RatedAsCaseControl',
  );

  /// RatedAsUncontrolledSeries
  static final EvidenceClassifier RatedAsUncontrolledSeries =
      EvidenceClassifier._(
    value: 'RatedAsUncontrolledSeries',
  );

  /// RatedAsMixedMethods
  static final EvidenceClassifier RatedAsMixedMethods = EvidenceClassifier._(
    value: 'RatedAsMixedMethods',
  );

  /// RatedAsOther
  static final EvidenceClassifier RatedAsOther = EvidenceClassifier._(
    value: 'RatedAsOther',
  );

  /// RiskOfBias
  static final EvidenceClassifier RiskOfBias = EvidenceClassifier._(
    value: 'RiskOfBias',
  );

  /// NoBlinding
  static final EvidenceClassifier NoBlinding = EvidenceClassifier._(
    value: 'NoBlinding',
  );

  /// AllocConcealNotStated
  static final EvidenceClassifier AllocConcealNotStated = EvidenceClassifier._(
    value: 'AllocConcealNotStated',
  );

  /// EarlyTrialTermination
  static final EvidenceClassifier EarlyTrialTermination = EvidenceClassifier._(
    value: 'EarlyTrialTermination',
  );

  /// NoITT
  static final EvidenceClassifier NoITT = EvidenceClassifier._(
    value: 'NoITT',
  );

  /// Preprint
  static final EvidenceClassifier Preprint = EvidenceClassifier._(
    value: 'Preprint',
  );

  /// PreliminaryAnalysis
  static final EvidenceClassifier PreliminaryAnalysis = EvidenceClassifier._(
    value: 'PreliminaryAnalysis',
  );

  /// BaselineImbalance
  static final EvidenceClassifier BaselineImbalance = EvidenceClassifier._(
    value: 'BaselineImbalance',
  );

  /// SubgroupAnalysis
  static final EvidenceClassifier SubgroupAnalysis = EvidenceClassifier._(
    value: 'SubgroupAnalysis',
  );

  /// For instances where an Element is present but not value

  static final EvidenceClassifier elementOnly = EvidenceClassifier._(value: '');

  /// List of all enum-like values
  static final List<EvidenceClassifier> values = [
    COVID19Specific,
    COVID19Relevant,
    COVID19HumanResearch,
    OriginalResearch,
    ResearchSynthesis,
    Guideline,
    ResearchProtocol,
    NotResearchNotGuideline,
    Treatment,
    PreventionAndControl,
    Diagnosis,
    PrognosisPrediction,
    RatedAsYes,
    RatedAsNo,
    NotAssessed,
    RatedAsRCT,
    RatedAsControlledTrial,
    RatedAsComparativeCohort,
    RatedAsCaseControl,
    RatedAsUncontrolledSeries,
    RatedAsMixedMethods,
    RatedAsOther,
    RiskOfBias,
    NoBlinding,
    AllocConcealNotStated,
    EarlyTrialTermination,
    NoITT,
    Preprint,
    PreliminaryAnalysis,
    BaselineImbalance,
    SubgroupAnalysis,
  ];

  /// Clones the current instance
  @override
  EvidenceClassifier clone() => EvidenceClassifier._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceClassifier withElement(Element? newElement) {
    return EvidenceClassifier._(value: value, element: newElement);
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
  EvidenceClassifier copyWith({
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
    return EvidenceClassifier._(
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
