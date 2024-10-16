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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContactEntityType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContactEntityType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactEntityType.elementOnly.withElement(element);
    }
    return ContactEntityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContactEntityType withElement(Element? newElement) {
    return ContactEntityType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
