/// The use of an address.
enum AddressUse {
  /// Display: Home
  /// Definition: A communication address at a home.
  home,

  /// Display: Work
  /// Definition: An office address. First choice for business related contacts during business hours.
  work,

  /// Display: Temporary
  /// Definition: A temporary address. The period can provide more detailed information.
  temp,

  /// Display: Old / Incorrect
  /// Definition: This address is no longer in use (or was never correct but retained for records).
  old,

  /// Display: Billing
  /// Definition: An address to be used to send bills, invoices, receipts etc.
  billing,
  ;

  @override
  String toString() {
    switch (this) {
      case home:
        return 'home';
      case work:
        return 'work';
      case temp:
        return 'temp';
      case old:
        return 'old';
      case billing:
        return 'billing';
    }
  }

  /// Returns a [String] from a [AddressUse] enum.
  String toJson() => toString();

  /// Returns a [AddressUse] from a [String] enum.
  static AddressUse fromString(String str) {
    switch (str) {
      case 'home':
        return AddressUse.home;
      case 'work':
        return AddressUse.work;
      case 'temp':
        return AddressUse.temp;
      case 'old':
        return AddressUse.old;
      case 'billing':
        return AddressUse.billing;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AddressUse] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AddressUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
