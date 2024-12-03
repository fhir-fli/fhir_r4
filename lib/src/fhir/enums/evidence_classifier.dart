// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Commonly used classifiers for evidence sets.
class EvidenceClassifier extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceClassifier._(super.value, [super.element]);

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
          'EvidenceClassifier cannot be constructed from JSON.');
    }
    return EvidenceClassifier._(value, element);
  }

  /// COVID19Specific
  static final EvidenceClassifier COVID19Specific = EvidenceClassifier._(
    'COVID19Specific',
  );

  /// COVID19Relevant
  static final EvidenceClassifier COVID19Relevant = EvidenceClassifier._(
    'COVID19Relevant',
  );

  /// COVID19HumanResearch
  static final EvidenceClassifier COVID19HumanResearch = EvidenceClassifier._(
    'COVID19HumanResearch',
  );

  /// OriginalResearch
  static final EvidenceClassifier OriginalResearch = EvidenceClassifier._(
    'OriginalResearch',
  );

  /// ResearchSynthesis
  static final EvidenceClassifier ResearchSynthesis = EvidenceClassifier._(
    'ResearchSynthesis',
  );

  /// Guideline
  static final EvidenceClassifier Guideline = EvidenceClassifier._(
    'Guideline',
  );

  /// ResearchProtocol
  static final EvidenceClassifier ResearchProtocol = EvidenceClassifier._(
    'ResearchProtocol',
  );

  /// NotResearchNotGuideline
  static final EvidenceClassifier NotResearchNotGuideline =
      EvidenceClassifier._(
    'NotResearchNotGuideline',
  );

  /// Treatment
  static final EvidenceClassifier Treatment = EvidenceClassifier._(
    'Treatment',
  );

  /// PreventionAndControl
  static final EvidenceClassifier PreventionAndControl = EvidenceClassifier._(
    'PreventionAndControl',
  );

  /// Diagnosis
  static final EvidenceClassifier Diagnosis = EvidenceClassifier._(
    'Diagnosis',
  );

  /// PrognosisPrediction
  static final EvidenceClassifier PrognosisPrediction = EvidenceClassifier._(
    'PrognosisPrediction',
  );

  /// RatedAsYes
  static final EvidenceClassifier RatedAsYes = EvidenceClassifier._(
    'RatedAsYes',
  );

  /// RatedAsNo
  static final EvidenceClassifier RatedAsNo = EvidenceClassifier._(
    'RatedAsNo',
  );

  /// NotAssessed
  static final EvidenceClassifier NotAssessed = EvidenceClassifier._(
    'NotAssessed',
  );

  /// RatedAsRCT
  static final EvidenceClassifier RatedAsRCT = EvidenceClassifier._(
    'RatedAsRCT',
  );

  /// RatedAsControlledTrial
  static final EvidenceClassifier RatedAsControlledTrial = EvidenceClassifier._(
    'RatedAsControlledTrial',
  );

  /// RatedAsComparativeCohort
  static final EvidenceClassifier RatedAsComparativeCohort =
      EvidenceClassifier._(
    'RatedAsComparativeCohort',
  );

  /// RatedAsCaseControl
  static final EvidenceClassifier RatedAsCaseControl = EvidenceClassifier._(
    'RatedAsCaseControl',
  );

  /// RatedAsUncontrolledSeries
  static final EvidenceClassifier RatedAsUncontrolledSeries =
      EvidenceClassifier._(
    'RatedAsUncontrolledSeries',
  );

  /// RatedAsMixedMethods
  static final EvidenceClassifier RatedAsMixedMethods = EvidenceClassifier._(
    'RatedAsMixedMethods',
  );

  /// RatedAsOther
  static final EvidenceClassifier RatedAsOther = EvidenceClassifier._(
    'RatedAsOther',
  );

  /// RiskOfBias
  static final EvidenceClassifier RiskOfBias = EvidenceClassifier._(
    'RiskOfBias',
  );

  /// NoBlinding
  static final EvidenceClassifier NoBlinding = EvidenceClassifier._(
    'NoBlinding',
  );

  /// AllocConcealNotStated
  static final EvidenceClassifier AllocConcealNotStated = EvidenceClassifier._(
    'AllocConcealNotStated',
  );

  /// EarlyTrialTermination
  static final EvidenceClassifier EarlyTrialTermination = EvidenceClassifier._(
    'EarlyTrialTermination',
  );

  /// NoITT
  static final EvidenceClassifier NoITT = EvidenceClassifier._(
    'NoITT',
  );

  /// Preprint
  static final EvidenceClassifier Preprint = EvidenceClassifier._(
    'Preprint',
  );

  /// PreliminaryAnalysis
  static final EvidenceClassifier PreliminaryAnalysis = EvidenceClassifier._(
    'PreliminaryAnalysis',
  );

  /// BaselineImbalance
  static final EvidenceClassifier BaselineImbalance = EvidenceClassifier._(
    'BaselineImbalance',
  );

  /// SubgroupAnalysis
  static final EvidenceClassifier SubgroupAnalysis = EvidenceClassifier._(
    'SubgroupAnalysis',
  );

  /// For instances where an Element is present but not value

  static final EvidenceClassifier elementOnly = EvidenceClassifier._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EvidenceClassifier setElement(
    String name,
    dynamic elementValue,
  ) {
    return EvidenceClassifier._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EvidenceClassifier withElement(Element? newElement) {
    return EvidenceClassifier._(value, newElement);
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
    return EvidenceClassifier._(
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
