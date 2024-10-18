// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a contact party.
enum ContactEntityType {
  /// Display: Billing
  /// Definition: Contact details for information regarding to billing/general finance enquiries.
  BILL('BILL'),

  /// Display: Administrative
  /// Definition: Contact details for administrative enquiries.
  ADMIN('ADMIN'),

  /// Display: Human Resource
  /// Definition: Contact details for issues related to Human Resources, such as staff matters, OH&S etc.
  HR('HR'),

  /// Display: Payor
  /// Definition: Contact details for dealing with issues related to insurance claims/adjudication/payment.
  PAYOR('PAYOR'),

  /// Display: Patient
  /// Definition: Generic information contact for patients.
  PATINF('PATINF'),

  /// Display: Press
  /// Definition: Dedicated contact point for matters relating to press enquiries.
  PRESS('PRESS'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContactEntityType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContactEntityType] instances.
  static ContactEntityType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactEntityType.elementOnly.withElement(element);
    }
    return ContactEntityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ContactEntityType withElement(Element? newElement) {
    return ContactEntityType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
