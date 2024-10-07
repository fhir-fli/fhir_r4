import 'package:json_annotation/json_annotation.dart';

/// Overall defining type of this clinical use definition.
enum ClinicalUseDefinitionType {
  /// Display: Indication
  /// Definition: A reason for giving the medication.
  @JsonValue('indication')
  indication,
  /// Display: Contraindication
  /// Definition: A reason for not giving the medication.
  @JsonValue('contraindication')
  contraindication,
  /// Display: Interaction
  /// Definition: Interactions between the medication and other substances.
  @JsonValue('interaction')
  interaction,
  /// Display: Undesirable Effect
  /// Definition: Side effects or adverse effects associated with the medication.
  @JsonValue('undesirable-effect')
  undesirable_effect,
  /// Display: Warning
  /// Definition: A general warning or issue that is not specifically one of the other types.
  @JsonValue('warning')
  warning,
;

@override
  String toString() {
      switch(this) {
        case indication: return 'indication';
        case contraindication: return 'contraindication';
        case interaction: return 'interaction';
        case undesirable_effect: return 'undesirable-effect';
        case warning: return 'warning';
      }
      }
String toJson() => toString();
  ClinicalUseDefinitionType fromString(String str) {
    switch(str) {
      case 'indication': return ClinicalUseDefinitionType.indication;
      case 'contraindication': return ClinicalUseDefinitionType.contraindication;
      case 'interaction': return ClinicalUseDefinitionType.interaction;
      case 'undesirable-effect': return ClinicalUseDefinitionType.undesirable_effect;
      case 'warning': return ClinicalUseDefinitionType.warning;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ClinicalUseDefinitionType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

