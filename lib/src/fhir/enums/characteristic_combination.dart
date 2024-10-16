import 'package:fhir_r4/fhir_r4.dart';

/// Logical grouping of characteristics.
enum CharacteristicCombination {
  /// Display: intersection
  /// Definition: Combine characteristics with AND.
  intersection('intersection'),

  /// Display: union
  /// Definition: Combine characteristics with OR.
  union('union'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CharacteristicCombination(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CharacteristicCombination fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombination.elementOnly.withElement(element);
    }
    return CharacteristicCombination.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CharacteristicCombination withElement(Element? newElement) {
    return CharacteristicCombination.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
