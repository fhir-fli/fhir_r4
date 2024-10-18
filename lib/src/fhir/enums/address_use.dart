// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AddressUse(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AddressUse] instances.
  static AddressUse fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly.withElement(
        element,
      );
    }
    return AddressUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AddressUse withElement(Element? newElement) {
    return AddressUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
