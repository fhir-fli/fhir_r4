import 'package:fhir_r4/fhir_r4.dart';

/// The method used to determine the characteristic(s) of the variable.
enum CharacteristicMethod {
  /// Display: Default
  /// Definition: Default.
  Default('Default'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CharacteristicMethod(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CharacteristicMethod fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicMethod.elementOnly.withElement(element);
    }
    return CharacteristicMethod.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CharacteristicMethod withElement(Element? newElement) {
    return CharacteristicMethod.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
