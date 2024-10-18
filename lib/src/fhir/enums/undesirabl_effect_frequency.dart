// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const UndesirablEffectFrequency(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [UndesirablEffectFrequency] instances.
  static UndesirablEffectFrequency fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UndesirablEffectFrequency.elementOnly.withElement(element);
    }
    return UndesirablEffectFrequency.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  UndesirablEffectFrequency withElement(Element? newElement) {
    return UndesirablEffectFrequency.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
