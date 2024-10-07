import 'package:json_annotation/json_annotation.dart';

/// This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a contact party.
enum ContactEntityType {
  /// Display: Billing
  /// Definition: Contact details for information regarding to billing/general finance enquiries.
  @JsonValue('BILL')
  BILL,
  /// Display: Administrative
  /// Definition: Contact details for administrative enquiries.
  @JsonValue('ADMIN')
  ADMIN,
  /// Display: Human Resource
  /// Definition: Contact details for issues related to Human Resources, such as staff matters, OH&S etc.
  @JsonValue('HR')
  HR,
  /// Display: Payor
  /// Definition: Contact details for dealing with issues related to insurance claims/adjudication/payment.
  @JsonValue('PAYOR')
  PAYOR,
  /// Display: Patient
  /// Definition: Generic information contact for patients.
  @JsonValue('PATINF')
  PATINF,
  /// Display: Press
  /// Definition: Dedicated contact point for matters relating to press enquiries.
  @JsonValue('PRESS')
  PRESS,
;

@override
  String toString() {
      switch(this) {
        case BILL: return 'BILL';
        case ADMIN: return 'ADMIN';
        case HR: return 'HR';
        case PAYOR: return 'PAYOR';
        case PATINF: return 'PATINF';
        case PRESS: return 'PRESS';
      }
      }
String toJson() => toString();
  ContactEntityType fromString(String str) {
    switch(str) {
      case 'BILL': return ContactEntityType.BILL;
      case 'ADMIN': return ContactEntityType.ADMIN;
      case 'HR': return ContactEntityType.HR;
      case 'PAYOR': return ContactEntityType.PAYOR;
      case 'PATINF': return ContactEntityType.PATINF;
      case 'PRESS': return ContactEntityType.PRESS;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ContactEntityType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

