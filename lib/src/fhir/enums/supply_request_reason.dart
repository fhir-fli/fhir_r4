import 'package:fhir_r4/fhir_r4.dart';

/// The reason why the supply item was requested.
enum SupplyRequestReason {
  /// Display: Patient Care
  /// Definition: The supply has been requested for use in direct patient care.
  patient_care('patient-care'),

  /// Display: Ward Stock
  /// Definition: The supply has been requested for creating or replenishing ward stock.
  ward_stock('ward-stock'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SupplyRequestReason(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SupplyRequestReason fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestReason.elementOnly.withElement(element);
    }
    return SupplyRequestReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SupplyRequestReason withElement(Element? newElement) {
    return SupplyRequestReason.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
