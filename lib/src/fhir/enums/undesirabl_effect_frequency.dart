import 'package:fhir_r4/fhir_r4.dart';

/// A categorisation for a frequency of occurence of an undesirable effect.
enum UndesirablEffectFrequency {
  /// Display: Common
  /// Definition:
  Common('Common'),

  /// Display: Uncommon
  /// Definition:
  Uncommon('Uncommon'),

  /// Display: Rare
  /// Definition:
  Rare('Rare'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const UndesirablEffectFrequency(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static UndesirablEffectFrequency fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UndesirablEffectFrequency.elementOnly.withElement(element);
    }
    return UndesirablEffectFrequency.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  UndesirablEffectFrequency withElement(Element? newElement) {
    return UndesirablEffectFrequency.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
