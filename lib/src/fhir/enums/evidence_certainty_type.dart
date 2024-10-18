// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The aspect of quality, confidence, or certainty.
enum EvidenceCertaintyType {
  /// Display: Overall certainty
  /// Definition: Overall certainty of evidence (quality of evidence).
  Overall('Overall'),

  /// Display: Risk of bias
  /// Definition: methodologic concerns reducing internal validity.
  RiskOfBias('RiskOfBias'),

  /// Display: Inconsistency
  /// Definition: concerns that findings are not similar enough to support certainty.
  Inconsistency('Inconsistency'),

  /// Display: Indirectness
  /// Definition: concerns reducing external validity.
  Indirectness('Indirectness'),

  /// Display: Imprecision
  /// Definition: fuzzy or wide variability.
  Imprecision('Imprecision'),

  /// Display: Publication bias
  /// Definition: likelihood that what is published misrepresents what is available to publish.
  PublicationBias('PublicationBias'),

  /// Display: Dose response gradient
  /// Definition: higher certainty due to dose response relationship.
  DoseResponseGradient('DoseResponseGradient'),

  /// Display: Plausible confounding
  /// Definition: higher certainty due to risk of bias in opposite direction.
  PlausibleConfounding('PlausibleConfounding'),

  /// Display: Large effect
  /// Definition: higher certainty due to large effect size.
  LargeEffect('LargeEffect'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EvidenceCertaintyType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EvidenceCertaintyType] instances.
  static EvidenceCertaintyType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyType.elementOnly.withElement(element);
    }
    return EvidenceCertaintyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EvidenceCertaintyType withElement(Element? newElement) {
    return EvidenceCertaintyType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
