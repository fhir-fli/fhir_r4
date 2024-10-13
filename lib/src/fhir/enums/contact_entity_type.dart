/// This example value set defines a set of codes that can be used to indicate the purpose for which you would contact a contact party.
enum ContactEntityType {
  /// Display: Billing
  /// Definition: Contact details for information regarding to billing/general finance enquiries.
  BILL,

  /// Display: Administrative
  /// Definition: Contact details for administrative enquiries.
  ADMIN,

  /// Display: Human Resource
  /// Definition: Contact details for issues related to Human Resources, such as staff matters, OH&S etc.
  HR,

  /// Display: Payor
  /// Definition: Contact details for dealing with issues related to insurance claims/adjudication/payment.
  PAYOR,

  /// Display: Patient
  /// Definition: Generic information contact for patients.
  PATINF,

  /// Display: Press
  /// Definition: Dedicated contact point for matters relating to press enquiries.
  PRESS,
  ;

  @override
  String toString() {
    switch (this) {
      case BILL:
        return 'BILL';
      case ADMIN:
        return 'ADMIN';
      case HR:
        return 'HR';
      case PAYOR:
        return 'PAYOR';
      case PATINF:
        return 'PATINF';
      case PRESS:
        return 'PRESS';
    }
  }

  /// Returns a [String] from a [ContactEntityType] enum.
  String toJson() => toString();

  /// Returns a [ContactEntityType] from a [String] enum.
  static ContactEntityType fromString(String str) {
    switch (str) {
      case 'BILL':
        return ContactEntityType.BILL;
      case 'ADMIN':
        return ContactEntityType.ADMIN;
      case 'HR':
        return ContactEntityType.HR;
      case 'PAYOR':
        return ContactEntityType.PAYOR;
      case 'PATINF':
        return ContactEntityType.PATINF;
      case 'PRESS':
        return ContactEntityType.PRESS;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ContactEntityType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ContactEntityType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
