// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Commonly used classifiers for evidence sets.
@Entity()
class EvidenceClassifier extends FhirCode {
  /// Factory constructor to create [EvidenceClassifier] from JSON.
  factory EvidenceClassifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceClassifier.elementOnly(element);
    }
    if (values.contains(value)) {
      return EvidenceClassifier._(value, element);
    }
    throw ArgumentError(
      'EvidenceClassifier.fromJson: JSON value is not a valid value',
    );
  }

  /// COVID19Specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.COVID19Specific([this.element])
      : dbValue = 'COVID19Specific',
        super('COVID19Specific', element);

  /// COVID19Relevant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.COVID19Relevant([this.element])
      : dbValue = 'COVID19Relevant',
        super('COVID19Relevant', element);

  /// COVID19HumanResearch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.COVID19HumanResearch([this.element])
      : dbValue = 'COVID19HumanResearch',
        super('COVID19HumanResearch', element);

  /// OriginalResearch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.OriginalResearch([this.element])
      : dbValue = 'OriginalResearch',
        super('OriginalResearch', element);

  /// ResearchSynthesis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.ResearchSynthesis([this.element])
      : dbValue = 'ResearchSynthesis',
        super('ResearchSynthesis', element);

  /// Guideline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.Guideline([this.element])
      : dbValue = 'Guideline',
        super('Guideline', element);

  /// ResearchProtocol
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.ResearchProtocol([this.element])
      : dbValue = 'ResearchProtocol',
        super('ResearchProtocol', element);

  /// NotResearchNotGuideline
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.NotResearchNotGuideline([this.element])
      : dbValue = 'NotResearchNotGuideline',
        super('NotResearchNotGuideline', element);

  /// Treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.Treatment([this.element])
      : dbValue = 'Treatment',
        super('Treatment', element);

  /// PreventionAndControl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.PreventionAndControl([this.element])
      : dbValue = 'PreventionAndControl',
        super('PreventionAndControl', element);

  /// Diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.Diagnosis([this.element])
      : dbValue = 'Diagnosis',
        super('Diagnosis', element);

  /// PrognosisPrediction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.PrognosisPrediction([this.element])
      : dbValue = 'PrognosisPrediction',
        super('PrognosisPrediction', element);

  /// RatedAsYes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsYes([this.element])
      : dbValue = 'RatedAsYes',
        super('RatedAsYes', element);

  /// RatedAsNo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsNo([this.element])
      : dbValue = 'RatedAsNo',
        super('RatedAsNo', element);

  /// NotAssessed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.NotAssessed([this.element])
      : dbValue = 'NotAssessed',
        super('NotAssessed', element);

  /// RatedAsRCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsRCT([this.element])
      : dbValue = 'RatedAsRCT',
        super('RatedAsRCT', element);

  /// RatedAsControlledTrial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsControlledTrial([this.element])
      : dbValue = 'RatedAsControlledTrial',
        super('RatedAsControlledTrial', element);

  /// RatedAsComparativeCohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsComparativeCohort([this.element])
      : dbValue = 'RatedAsComparativeCohort',
        super('RatedAsComparativeCohort', element);

  /// RatedAsCaseControl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsCaseControl([this.element])
      : dbValue = 'RatedAsCaseControl',
        super('RatedAsCaseControl', element);

  /// RatedAsUncontrolledSeries
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsUncontrolledSeries([this.element])
      : dbValue = 'RatedAsUncontrolledSeries',
        super('RatedAsUncontrolledSeries', element);

  /// RatedAsMixedMethods
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsMixedMethods([this.element])
      : dbValue = 'RatedAsMixedMethods',
        super('RatedAsMixedMethods', element);

  /// RatedAsOther
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RatedAsOther([this.element])
      : dbValue = 'RatedAsOther',
        super('RatedAsOther', element);

  /// RiskOfBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.RiskOfBias([this.element])
      : dbValue = 'RiskOfBias',
        super('RiskOfBias', element);

  /// NoBlinding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.NoBlinding([this.element])
      : dbValue = 'NoBlinding',
        super('NoBlinding', element);

  /// AllocConcealNotStated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.AllocConcealNotStated([this.element])
      : dbValue = 'AllocConcealNotStated',
        super('AllocConcealNotStated', element);

  /// EarlyTrialTermination
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.EarlyTrialTermination([this.element])
      : dbValue = 'EarlyTrialTermination',
        super('EarlyTrialTermination', element);

  /// NoITT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.NoITT([this.element])
      : dbValue = 'NoITT',
        super('NoITT', element);

  /// Preprint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.Preprint([this.element])
      : dbValue = 'Preprint',
        super('Preprint', element);

  /// PreliminaryAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.PreliminaryAnalysis([this.element])
      : dbValue = 'PreliminaryAnalysis',
        super('PreliminaryAnalysis', element);

  /// BaselineImbalance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.BaselineImbalance([this.element])
      : dbValue = 'BaselineImbalance',
        super('BaselineImbalance', element);

  /// SubgroupAnalysis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceClassifier.SubgroupAnalysis([this.element])
      : dbValue = 'SubgroupAnalysis',
        super('SubgroupAnalysis', element);

  /// For instances where an Element is present but not value

  EvidenceClassifier.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EvidenceClassifier._(super.input, [super.element])
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
    'COVID19Specific',
    'COVID19Relevant',
    'COVID19HumanResearch',
    'OriginalResearch',
    'ResearchSynthesis',
    'Guideline',
    'ResearchProtocol',
    'NotResearchNotGuideline',
    'Treatment',
    'PreventionAndControl',
    'Diagnosis',
    'PrognosisPrediction',
    'RatedAsYes',
    'RatedAsNo',
    'NotAssessed',
    'RatedAsRCT',
    'RatedAsControlledTrial',
    'RatedAsComparativeCohort',
    'RatedAsCaseControl',
    'RatedAsUncontrolledSeries',
    'RatedAsMixedMethods',
    'RatedAsOther',
    'RiskOfBias',
    'NoBlinding',
    'AllocConcealNotStated',
    'EarlyTrialTermination',
    'NoITT',
    'Preprint',
    'PreliminaryAnalysis',
    'BaselineImbalance',
    'SubgroupAnalysis',
  ];

  /// Returns the enum value with an element attached
  EvidenceClassifier withElement(Element? newElement) {
    return EvidenceClassifier._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceClassifier.$value';
}
