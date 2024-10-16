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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IdentifierUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IdentifierUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly.withElement(element);
    }
    return IdentifierUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
