import 'package:fhir_r4/fhir_r4.dart';

/// The use of an address.
enum AddressUse {
  /// Display: Home
  /// Definition: A communication address at a home.
  home('home'),

  /// Display: Work
  /// Definition: An office address. First choice for business related contacts during business hours.
  work('work'),

  /// Display: Temporary
  /// Definition: A temporary address. The period can provide more detailed information.
  temp('temp'),

  /// Display: Old / Incorrect
  /// Definition: This address is no longer in use (or was never correct but retained for records).
  old('old'),

  /// Display: Billing
  /// Definition: An address to be used to send bills, invoices, receipts etc.
  billing('billing'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AddressUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AddressUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly.withElement(element);
    }
    return AddressUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AddressUse withElement(Element? newElement) {
    return AddressUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
