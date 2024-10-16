import 'package:fhir_r4/fhir_r4.dart';

/// How the Quantity should be understood and represented.
enum QuantityComparator {
  /// Display: Less than
  /// Definition: The actual value is less than the given value.
  lt('<'),

  /// Display: Less or Equal to
  /// Definition: The actual value is less than or equal to the given value.
  le('<='),

  /// Display: Greater or Equal to
  /// Definition: The actual value is greater than or equal to the given value.
  ge('>='),

  /// Display: Greater than
  /// Definition: The actual value is greater than the given value.
  gt('>'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const QuantityComparator(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static QuantityComparator fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly.withElement(element);
    }
    return QuantityComparator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
