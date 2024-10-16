import 'package:fhir_r4/fhir_r4.dart';

/// The assessment of quality, confidence, or certainty.
enum EvidenceCertaintyRating {
  /// Display: High quality
  /// Definition: High quality evidence.
  high('high'),

  /// Display: Moderate quality
  /// Definition: Moderate quality evidence.
  moderate('moderate'),

  /// Display: Low quality
  /// Definition: Low quality evidence.
  low('low'),

  /// Display: Very low quality
  /// Definition: Very low quality evidence.
  very_low('very-low'),

  /// Display: no serious concern
  /// Definition: no serious concern.
  no_concern('no-concern'),

  /// Display: serious concern
  /// Definition: serious concern.
  serious_concern('serious-concern'),

  /// Display: very serious concern
  /// Definition: very serious concern.
  very_serious_concern('very-serious-concern'),

  /// Display: extremely serious concern
  /// Definition: extremely serious concern.
  extremely_serious_concern('extremely-serious-concern'),

  /// Display: present
  /// Definition: possible reason for increasing quality rating was checked and found to be present.
  present('present'),

  /// Display: absent
  /// Definition: possible reason for increasing quality rating was checked and found to be absent.
  absent('absent'),

  /// Display: no change to rating
  /// Definition: no change to quality rating.
  no_change('no-change'),

  /// Display: reduce rating: -1
  /// Definition: reduce quality rating by 1.
  downcode1('downcode1'),

  /// Display: reduce rating: -2
  /// Definition: reduce quality rating by 2.
  downcode2('downcode2'),

  /// Display: reduce rating: -3
  /// Definition: reduce quality rating by 3.
  downcode3('downcode3'),

  /// Display: increase rating: +1
  /// Definition: increase quality rating by 1.
  upcode1('upcode1'),

  /// Display: increase rating: +2
  /// Definition: increase quality rating by 2.
  upcode2('upcode2'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceCertaintyRating(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceCertaintyRating fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyRating.elementOnly.withElement(element);
    }
    return EvidenceCertaintyRating.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceCertaintyRating withElement(Element? newElement) {
    return EvidenceCertaintyRating.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
