// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
enum PediatricUse {
  /// Display: In utero
  /// Definition: In utero
  InUtero('InUtero'),

  /// Display: Preterm newborn infants (0 – 27 days)
  /// Definition: Preterm newborn infants (0 – 27 days)
  PretermNewborn('PretermNewborn'),

  /// Display: Term newborn infants (0 – 27 days)
  /// Definition: Term newborn infants (0 – 27 days)
  TermNewborn('TermNewborn'),

  /// Display: Infants and toddlers (28 days – 23 months)
  /// Definition: Infants and toddlers (28 days – 23 months)
  Infants('Infants'),

  /// Display: Children (2 to < 12 years)
  /// Definition: Children (2 to < 12 years)
  Children('Children'),

  /// Display: Adolescents (12 to < 18 years)
  /// Definition: Adolescents (12 to < 18 years)
  Adolescents('Adolescents'),

  /// Display: Adults (18 to < 65 years)
  /// Definition: Adults (18 to < 65 years)
  Adults('Adults'),

  /// Display: Elderly (≥ 65 years)
  /// Definition: Elderly (≥ 65 years)
  Elderly('Elderly'),

  /// Display: Neonate
  /// Definition: Neonate
  Neonate('Neonate'),

  /// Display: Pediatric Population (< 18 years)
  /// Definition: Pediatric Population (< 18 years)
  PediatricPopulation('PediatricPopulation'),

  /// Display: All
  /// Definition: All
  All('All'),

  /// Display: Prepubertal children (2 years to onset of puberty)
  /// Definition: Prepubertal children (2 years to onset of puberty)
  Prepubertal('Prepubertal'),

  /// Display: Adult and elderly population (> 18 years)
  /// Definition: Adult and elderly population (> 18 years)
  AdultsAndElderly('AdultsAndElderly'),

  /// Display: Pubertal and postpubertal adolescents (onset of puberty to < 18 years)
  /// Definition: Pubertal and postpubertal adolescents (onset of puberty to < 18 years)
  PubertalAndPostpubertal('PubertalAndPostpubertal'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PediatricUse(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PediatricUse] instances.
  static PediatricUse fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PediatricUse.elementOnly.withElement(element);
    }
    return PediatricUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PediatricUse withElement(Element? newElement) {
    return PediatricUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
