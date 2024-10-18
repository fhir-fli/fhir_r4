// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose for this identifier, if known .
enum IdentifierUse {
  /// Display: Usual
  /// Definition: The identifier recommended for display and use in real-world interactions.
  usual('usual'),

  /// Display: Official
  /// Definition: The identifier considered to be most trusted for the identification of this item. Sometimes also known as "primary" and "main". The determination of "official" is subjective and implementation guides often provide additional guidelines for use.
  official('official'),

  /// Display: Temp
  /// Definition: A temporary identifier.
  temp('temp'),

  /// Display: Secondary
  /// Definition: An identifier that was assigned in secondary use - it serves to identify the object in a relative context, but cannot be consistently assigned to the same object again in a different context.
  secondary('secondary'),

  /// Display: Old
  /// Definition: The identifier id no longer considered valid, but may be relevant for search purposes. E.g. Changes to identifier schemes, account merges, etc.
  old('old'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const IdentifierUse(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [IdentifierUse] instances.
  static IdentifierUse fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly.withElement(element);
    }
    return IdentifierUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
