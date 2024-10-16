import 'package:fhir_r4/fhir_r4.dart';

/// The type of an address (physical / postal).
enum AddressType {
  /// Display: Postal
  /// Definition: Mailing addresses - PO Boxes and care-of addresses.
  postal('postal'),

  /// Display: Physical
  /// Definition: A physical address that can be visited.
  physical('physical'),

  /// Display: Postal & Physical
  /// Definition: An address that is both physical and postal.
  both('both'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AddressType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AddressType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType.elementOnly.withElement(element);
    }
    return AddressType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AddressType withElement(Element? newElement) {
    return AddressType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
