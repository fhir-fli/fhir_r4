/// Provides examples of reasons for actions to be performed.
enum ActionReasonCode {
  /// Display: Off pathway
  /// Definition: The action should be performed because the patient was determined to be off pathway.
  off_pathway,

  /// Display: Risk assessment
  /// Definition: The action should be performed based on a particular risk assessment.
  risk_assessment,

  /// Display: Care gap detected
  /// Definition: The action should be performed to address a detected care gap.
  care_gap,

  /// Display: Drug-drug interaction
  /// Definition: The action should be performed to address a detected potential drug-drug interaction.
  drug_drug_interaction,

  /// Display: Quality measure
  /// Definition: The action should be performed to bring the patient's care in line with a quality measure.
  quality_measure,
  ;

  @override
  String toString() {
    switch (this) {
      case off_pathway:
        return 'off-pathway';
      case risk_assessment:
        return 'risk-assessment';
      case care_gap:
        return 'care-gap';
      case drug_drug_interaction:
        return 'drug-drug-interaction';
      case quality_measure:
        return 'quality-measure';
    }
  }

  /// Returns a [String] from a [ActionReasonCode] enum.
  String toJson() => toString();

  /// Returns a [ActionReasonCode] from a [String] enum.
  static ActionReasonCode fromString(String str) {
    switch (str) {
      case 'off-pathway':
        return ActionReasonCode.off_pathway;
      case 'risk-assessment':
        return ActionReasonCode.risk_assessment;
      case 'care-gap':
        return ActionReasonCode.care_gap;
      case 'drug-drug-interaction':
        return ActionReasonCode.drug_drug_interaction;
      case 'quality-measure':
        return ActionReasonCode.quality_measure;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ActionReasonCode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ActionReasonCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
