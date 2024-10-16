import 'package:fhir_r4/fhir_r4.dart';

/// BiologicallyDerived Product Storage Scale.
enum BiologicallyDerivedProductStorageScale {
  /// Display: Fahrenheit
  /// Definition: Fahrenheit temperature scale.
  farenheit('farenheit'),

  /// Display: Celsius
  /// Definition: Celsius or centigrade temperature scale.
  celsius('celsius'),

  /// Display: Kelvin
  /// Definition: Kelvin absolute thermodynamic temperature scale.
  kelvin('kelvin'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BiologicallyDerivedProductStorageScale(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BiologicallyDerivedProductStorageScale fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScale.elementOnly
          .withElement(element);
    }
    return BiologicallyDerivedProductStorageScale.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BiologicallyDerivedProductStorageScale withElement(Element? newElement) {
    return BiologicallyDerivedProductStorageScale.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
