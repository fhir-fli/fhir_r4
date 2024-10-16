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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceCertaintyType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceCertaintyType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyType.elementOnly.withElement(element);
    }
    return EvidenceCertaintyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceCertaintyType withElement(Element? newElement) {
    return EvidenceCertaintyType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
