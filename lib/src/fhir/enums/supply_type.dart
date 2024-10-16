import 'package:fhir_r4/fhir_r4.dart';

/// This value sets refers to a Category of supply.
enum SupplyType {
  /// Display: Central Supply
  /// Definition: Supply is stored and requested from central supply.
  central('central'),

  /// Display: Non-Stock
  /// Definition: Supply is not onsite and must be requested from an outside vendor using a non-stock requisition.
  nonstock('nonstock'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SupplyType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SupplyType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyType.elementOnly.withElement(element);
    }
    return SupplyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SupplyType withElement(Element? newElement) {
    return SupplyType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
