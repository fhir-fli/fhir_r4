// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Commonly used classifiers for evidence sets.
class EvidenceClassifier {
  // Private constructor for internal use (like enum)
  EvidenceClassifier._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceClassifier values
  /// COVID19Specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier COVID19Specific = EvidenceClassifier._(
    'COVID19Specific',
  );

  /// COVID19Relevant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier COVID19Relevant = EvidenceClassifier._(
    'COVID19Relevant',
  );

  /// COVID19HumanResearch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier COVID19HumanResearch = EvidenceClassifier._(
    'COVID19HumanResearch',
  );

  /// OriginalResearch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier OriginalResearch = EvidenceClassifier._(
    'OriginalResearch',
  );

  /// ResearchSynthesis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier ResearchSynthesis = EvidenceClassifier._(
    'ResearchSynthesis',
  );

  /// Guideline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Guideline = EvidenceClassifier._(
    'Guideline',
  );

  /// ResearchProtocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier ResearchProtocol = EvidenceClassifier._(
    'ResearchProtocol',
  );

  /// NotResearchNotGuideline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NotResearchNotGuideline =
      EvidenceClassifier._(
    'NotResearchNotGuideline',
  );

  /// Treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Treatment = EvidenceClassifier._(
    'Treatment',
  );

  /// PreventionAndControl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier PreventionAndControl = EvidenceClassifier._(
    'PreventionAndControl',
  );

  /// Diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Diagnosis = EvidenceClassifier._(
    'Diagnosis',
  );

  /// PrognosisPrediction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier PrognosisPrediction = EvidenceClassifier._(
    'PrognosisPrediction',
  );

  /// RatedAsYes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsYes = EvidenceClassifier._(
    'RatedAsYes',
  );

  /// RatedAsNo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsNo = EvidenceClassifier._(
    'RatedAsNo',
  );

  /// NotAssessed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NotAssessed = EvidenceClassifier._(
    'NotAssessed',
  );

  /// RatedAsRCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsRCT = EvidenceClassifier._(
    'RatedAsRCT',
  );

  /// RatedAsControlledTrial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsControlledTrial = EvidenceClassifier._(
    'RatedAsControlledTrial',
  );

  /// RatedAsComparativeCohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsComparativeCohort =
      EvidenceClassifier._(
    'RatedAsComparativeCohort',
  );

  /// RatedAsCaseControl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsCaseControl = EvidenceClassifier._(
    'RatedAsCaseControl',
  );

  /// RatedAsUncontrolledSeries
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsUncontrolledSeries =
      EvidenceClassifier._(
    'RatedAsUncontrolledSeries',
  );

  /// RatedAsMixedMethods
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsMixedMethods = EvidenceClassifier._(
    'RatedAsMixedMethods',
  );

  /// RatedAsOther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsOther = EvidenceClassifier._(
    'RatedAsOther',
  );

  /// RiskOfBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RiskOfBias = EvidenceClassifier._(
    'RiskOfBias',
  );

  /// NoBlinding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NoBlinding = EvidenceClassifier._(
    'NoBlinding',
  );

  /// AllocConcealNotStated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier AllocConcealNotStated = EvidenceClassifier._(
    'AllocConcealNotStated',
  );

  /// EarlyTrialTermination
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier EarlyTrialTermination = EvidenceClassifier._(
    'EarlyTrialTermination',
  );

  /// NoITT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NoITT = EvidenceClassifier._(
    'NoITT',
  );

  /// Preprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Preprint = EvidenceClassifier._(
    'Preprint',
  );

  /// PreliminaryAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier PreliminaryAnalysis = EvidenceClassifier._(
    'PreliminaryAnalysis',
  );

  /// BaselineImbalance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier BaselineImbalance = EvidenceClassifier._(
    'BaselineImbalance',
  );

  /// SubgroupAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Returns the enum value with an element attached
  EvidenceClassifier withElement(Element? newElement) {
    return EvidenceClassifier._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceClassifier] from JSON.
  static EvidenceClassifier fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceClassifier.elementOnly.withElement(element);
    }
    return EvidenceClassifier._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
