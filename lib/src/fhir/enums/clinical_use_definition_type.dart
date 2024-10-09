/// Overall defining type of this clinical use definition.
enum ClinicalUseDefinitionType {
  /// Display: Indication
  /// Definition: A reason for giving the medication.
  indication,

  /// Display: Contraindication
  /// Definition: A reason for not giving the medication.
  contraindication,

  /// Display: Interaction
  /// Definition: Interactions between the medication and other substances.
  interaction,

  /// Display: Undesirable Effect
  /// Definition: Side effects or adverse effects associated with the medication.
  undesirable_effect,

  /// Display: Warning
  /// Definition: A general warning or issue that is not specifically one of the other types.
  warning,
  ;

  @override
  String toString() {
    switch (this) {
      case indication:
        return 'indication';
      case contraindication:
        return 'contraindication';
      case interaction:
        return 'interaction';
      case undesirable_effect:
        return 'undesirable-effect';
      case warning:
        return 'warning';
    }
  }

  String toJson() => toString();
  static ClinicalUseDefinitionType fromString(String str) {
    switch (str) {
      case 'indication':
        return ClinicalUseDefinitionType.indication;
      case 'contraindication':
        return ClinicalUseDefinitionType.contraindication;
      case 'interaction':
        return ClinicalUseDefinitionType.interaction;
      case 'undesirable-effect':
        return ClinicalUseDefinitionType.undesirable_effect;
      case 'warning':
        return ClinicalUseDefinitionType.warning;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ClinicalUseDefinitionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
