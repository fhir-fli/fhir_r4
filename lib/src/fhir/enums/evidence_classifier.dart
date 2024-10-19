// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Commonly used classifiers for evidence sets.
@collection
class EvidenceClassifier {
  /// Constructor for internal use (like enum)
  EvidenceClassifier({this.fhirCode, this.element})
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

  /// EvidenceClassifier values
  /// COVID19Specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier COVID19Specific = EvidenceClassifier(
    fhirCode: 'COVID19Specific',
  );

  /// COVID19Relevant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier COVID19Relevant = EvidenceClassifier(
    fhirCode: 'COVID19Relevant',
  );

  /// COVID19HumanResearch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier COVID19HumanResearch = EvidenceClassifier(
    fhirCode: 'COVID19HumanResearch',
  );

  /// OriginalResearch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier OriginalResearch = EvidenceClassifier(
    fhirCode: 'OriginalResearch',
  );

  /// ResearchSynthesis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier ResearchSynthesis = EvidenceClassifier(
    fhirCode: 'ResearchSynthesis',
  );

  /// Guideline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Guideline = EvidenceClassifier(
    fhirCode: 'Guideline',
  );

  /// ResearchProtocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier ResearchProtocol = EvidenceClassifier(
    fhirCode: 'ResearchProtocol',
  );

  /// NotResearchNotGuideline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NotResearchNotGuideline = EvidenceClassifier(
    fhirCode: 'NotResearchNotGuideline',
  );

  /// Treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Treatment = EvidenceClassifier(
    fhirCode: 'Treatment',
  );

  /// PreventionAndControl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier PreventionAndControl = EvidenceClassifier(
    fhirCode: 'PreventionAndControl',
  );

  /// Diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Diagnosis = EvidenceClassifier(
    fhirCode: 'Diagnosis',
  );

  /// PrognosisPrediction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier PrognosisPrediction = EvidenceClassifier(
    fhirCode: 'PrognosisPrediction',
  );

  /// RatedAsYes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsYes = EvidenceClassifier(
    fhirCode: 'RatedAsYes',
  );

  /// RatedAsNo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsNo = EvidenceClassifier(
    fhirCode: 'RatedAsNo',
  );

  /// NotAssessed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NotAssessed = EvidenceClassifier(
    fhirCode: 'NotAssessed',
  );

  /// RatedAsRCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsRCT = EvidenceClassifier(
    fhirCode: 'RatedAsRCT',
  );

  /// RatedAsControlledTrial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsControlledTrial = EvidenceClassifier(
    fhirCode: 'RatedAsControlledTrial',
  );

  /// RatedAsComparativeCohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsComparativeCohort = EvidenceClassifier(
    fhirCode: 'RatedAsComparativeCohort',
  );

  /// RatedAsCaseControl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsCaseControl = EvidenceClassifier(
    fhirCode: 'RatedAsCaseControl',
  );

  /// RatedAsUncontrolledSeries
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsUncontrolledSeries =
      EvidenceClassifier(
    fhirCode: 'RatedAsUncontrolledSeries',
  );

  /// RatedAsMixedMethods
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsMixedMethods = EvidenceClassifier(
    fhirCode: 'RatedAsMixedMethods',
  );

  /// RatedAsOther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RatedAsOther = EvidenceClassifier(
    fhirCode: 'RatedAsOther',
  );

  /// RiskOfBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier RiskOfBias = EvidenceClassifier(
    fhirCode: 'RiskOfBias',
  );

  /// NoBlinding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NoBlinding = EvidenceClassifier(
    fhirCode: 'NoBlinding',
  );

  /// AllocConcealNotStated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier AllocConcealNotStated = EvidenceClassifier(
    fhirCode: 'AllocConcealNotStated',
  );

  /// EarlyTrialTermination
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier EarlyTrialTermination = EvidenceClassifier(
    fhirCode: 'EarlyTrialTermination',
  );

  /// NoITT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier NoITT = EvidenceClassifier(
    fhirCode: 'NoITT',
  );

  /// Preprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier Preprint = EvidenceClassifier(
    fhirCode: 'Preprint',
  );

  /// PreliminaryAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier PreliminaryAnalysis = EvidenceClassifier(
    fhirCode: 'PreliminaryAnalysis',
  );

  /// BaselineImbalance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier BaselineImbalance = EvidenceClassifier(
    fhirCode: 'BaselineImbalance',
  );

  /// SubgroupAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceClassifier SubgroupAnalysis = EvidenceClassifier(
    fhirCode: 'SubgroupAnalysis',
  );

  /// For instances where an Element is present but not value

  static final EvidenceClassifier elementOnly = EvidenceClassifier();

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
    return EvidenceClassifier(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return EvidenceClassifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceClassifier.$fhirCode';
}
