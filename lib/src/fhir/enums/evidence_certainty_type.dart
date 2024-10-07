import 'package:json_annotation/json_annotation.dart';

/// The aspect of quality, confidence, or certainty.
enum EvidenceCertaintyType {
  /// Display: Overall certainty
  /// Definition: Overall certainty of evidence (quality of evidence).
  @JsonValue('Overall')
  Overall,

  /// Display: Risk of bias
  /// Definition: methodologic concerns reducing internal validity.
  @JsonValue('RiskOfBias')
  RiskOfBias,

  /// Display: Inconsistency
  /// Definition: concerns that findings are not similar enough to support certainty.
  @JsonValue('Inconsistency')
  Inconsistency,

  /// Display: Indirectness
  /// Definition: concerns reducing external validity.
  @JsonValue('Indirectness')
  Indirectness,

  /// Display: Imprecision
  /// Definition: fuzzy or wide variability.
  @JsonValue('Imprecision')
  Imprecision,

  /// Display: Publication bias
  /// Definition: likelihood that what is published misrepresents what is available to publish.
  @JsonValue('PublicationBias')
  PublicationBias,

  /// Display: Dose response gradient
  /// Definition: higher certainty due to dose response relationship.
  @JsonValue('DoseResponseGradient')
  DoseResponseGradient,

  /// Display: Plausible confounding
  /// Definition: higher certainty due to risk of bias in opposite direction.
  @JsonValue('PlausibleConfounding')
  PlausibleConfounding,

  /// Display: Large effect
  /// Definition: higher certainty due to large effect size.
  @JsonValue('LargeEffect')
  LargeEffect,
  ;

  @override
  String toString() {
    switch (this) {
      case Overall:
        return 'Overall';
      case RiskOfBias:
        return 'RiskOfBias';
      case Inconsistency:
        return 'Inconsistency';
      case Indirectness:
        return 'Indirectness';
      case Imprecision:
        return 'Imprecision';
      case PublicationBias:
        return 'PublicationBias';
      case DoseResponseGradient:
        return 'DoseResponseGradient';
      case PlausibleConfounding:
        return 'PlausibleConfounding';
      case LargeEffect:
        return 'LargeEffect';
    }
  }

  String toJson() => toString();
  EvidenceCertaintyType fromString(String str) {
    switch (str) {
      case 'Overall':
        return EvidenceCertaintyType.Overall;
      case 'RiskOfBias':
        return EvidenceCertaintyType.RiskOfBias;
      case 'Inconsistency':
        return EvidenceCertaintyType.Inconsistency;
      case 'Indirectness':
        return EvidenceCertaintyType.Indirectness;
      case 'Imprecision':
        return EvidenceCertaintyType.Imprecision;
      case 'PublicationBias':
        return EvidenceCertaintyType.PublicationBias;
      case 'DoseResponseGradient':
        return EvidenceCertaintyType.DoseResponseGradient;
      case 'PlausibleConfounding':
        return EvidenceCertaintyType.PlausibleConfounding;
      case 'LargeEffect':
        return EvidenceCertaintyType.LargeEffect;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  EvidenceCertaintyType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
