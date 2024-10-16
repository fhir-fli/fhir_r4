import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Status.
enum BiologicallyDerivedProductStatus {
  /// Display: Available
  /// Definition: Product is currently available for use.
  available('available'),

  /// Display: Unavailable
  /// Definition: Product is not currently available for use.
  unavailable('unavailable'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BiologicallyDerivedProductStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BiologicallyDerivedProductStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStatus.elementOnly.withElement(element);
    }
    return BiologicallyDerivedProductStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BiologicallyDerivedProductStatus withElement(Element? newElement) {
    return BiologicallyDerivedProductStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
