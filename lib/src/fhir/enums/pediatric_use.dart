import 'package:json_annotation/json_annotation.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
enum PediatricUse {
  /// Display: In utero
  /// Definition: In utero
  @JsonValue('InUtero')
  InUtero,

  /// Display: Preterm newborn infants (0 – 27 days)
  /// Definition: Preterm newborn infants (0 – 27 days)
  @JsonValue('PretermNewborn')
  PretermNewborn,

  /// Display: Term newborn infants (0 – 27 days)
  /// Definition: Term newborn infants (0 – 27 days)
  @JsonValue('TermNewborn')
  TermNewborn,

  /// Display: Infants and toddlers (28 days – 23 months)
  /// Definition: Infants and toddlers (28 days – 23 months)
  @JsonValue('Infants')
  Infants,

  /// Display: Children (2 to < 12 years)
  /// Definition: Children (2 to < 12 years)
  @JsonValue('Children')
  Children,

  /// Display: Adolescents (12 to < 18 years)
  /// Definition: Adolescents (12 to < 18 years)
  @JsonValue('Adolescents')
  Adolescents,

  /// Display: Adults (18 to < 65 years)
  /// Definition: Adults (18 to < 65 years)
  @JsonValue('Adults')
  Adults,

  /// Display: Elderly (≥ 65 years)
  /// Definition: Elderly (≥ 65 years)
  @JsonValue('Elderly')
  Elderly,

  /// Display: Neonate
  /// Definition: Neonate
  @JsonValue('Neonate')
  Neonate,

  /// Display: Pediatric Population (< 18 years)
  /// Definition: Pediatric Population (< 18 years)
  @JsonValue('PediatricPopulation')
  PediatricPopulation,

  /// Display: All
  /// Definition: All
  @JsonValue('All')
  All,

  /// Display: Prepubertal children (2 years to onset of puberty)
  /// Definition: Prepubertal children (2 years to onset of puberty)
  @JsonValue('Prepubertal')
  Prepubertal,

  /// Display: Adult and elderly population (> 18 years)
  /// Definition: Adult and elderly population (> 18 years)
  @JsonValue('AdultsAndElderly')
  AdultsAndElderly,

  /// Display: Pubertal and postpubertal adolescents (onset of puberty to < 18 years)
  /// Definition: Pubertal and postpubertal adolescents (onset of puberty to < 18 years)
  @JsonValue('PubertalAndPostpubertal')
  PubertalAndPostpubertal,
  ;

  @override
  String toString() {
    switch (this) {
      case InUtero:
        return 'InUtero';
      case PretermNewborn:
        return 'PretermNewborn';
      case TermNewborn:
        return 'TermNewborn';
      case Infants:
        return 'Infants';
      case Children:
        return 'Children';
      case Adolescents:
        return 'Adolescents';
      case Adults:
        return 'Adults';
      case Elderly:
        return 'Elderly';
      case Neonate:
        return 'Neonate';
      case PediatricPopulation:
        return 'PediatricPopulation';
      case All:
        return 'All';
      case Prepubertal:
        return 'Prepubertal';
      case AdultsAndElderly:
        return 'AdultsAndElderly';
      case PubertalAndPostpubertal:
        return 'PubertalAndPostpubertal';
    }
  }

  String toJson() => toString();
  PediatricUse fromString(String str) {
    switch (str) {
      case 'InUtero':
        return PediatricUse.InUtero;
      case 'PretermNewborn':
        return PediatricUse.PretermNewborn;
      case 'TermNewborn':
        return PediatricUse.TermNewborn;
      case 'Infants':
        return PediatricUse.Infants;
      case 'Children':
        return PediatricUse.Children;
      case 'Adolescents':
        return PediatricUse.Adolescents;
      case 'Adults':
        return PediatricUse.Adults;
      case 'Elderly':
        return PediatricUse.Elderly;
      case 'Neonate':
        return PediatricUse.Neonate;
      case 'PediatricPopulation':
        return PediatricUse.PediatricPopulation;
      case 'All':
        return PediatricUse.All;
      case 'Prepubertal':
        return PediatricUse.Prepubertal;
      case 'AdultsAndElderly':
        return PediatricUse.AdultsAndElderly;
      case 'PubertalAndPostpubertal':
        return PediatricUse.PubertalAndPostpubertal;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  PediatricUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
