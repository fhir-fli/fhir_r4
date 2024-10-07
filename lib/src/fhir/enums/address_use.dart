import 'package:json_annotation/json_annotation.dart';

/// The use of an address.
enum AddressUse {
  /// Display: Home
  /// Definition: A communication address at a home.
  @JsonValue('home')
  home,
  /// Display: Work
  /// Definition: An office address. First choice for business related contacts during business hours.
  @JsonValue('work')
  work,
  /// Display: Temporary
  /// Definition: A temporary address. The period can provide more detailed information.
  @JsonValue('temp')
  temp,
  /// Display: Old / Incorrect
  /// Definition: This address is no longer in use (or was never correct but retained for records).
  @JsonValue('old')
  old,
  /// Display: Billing
  /// Definition: An address to be used to send bills, invoices, receipts etc.
  @JsonValue('billing')
  billing,
;

@override
  String toString() {
      switch(this) {
        case home: return 'home';
        case work: return 'work';
        case temp: return 'temp';
        case old: return 'old';
        case billing: return 'billing';
      }
      }
String toJson() => toString();
  AddressUse fromString(String str) {
    switch(str) {
      case 'home': return AddressUse.home;
      case 'work': return AddressUse.work;
      case 'temp': return AddressUse.temp;
      case 'old': return AddressUse.old;
      case 'billing': return AddressUse.billing;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AddressUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

