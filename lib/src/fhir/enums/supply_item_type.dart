import 'package:fhir_r4/fhir_r4.dart';

/// This value sets refers to a specific supply item.
enum SupplyItemType {
  /// Display: Medication
  /// Definition: Supply is a kind of medication.
  medication('medication'),

  /// Display: Device
  /// Definition: What is supplied (or requested) is a device.
  device('device'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SupplyItemType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SupplyItemType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyItemType.elementOnly.withElement(element);
    }
    return SupplyItemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SupplyItemType withElement(Element? newElement) {
    return SupplyItemType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
