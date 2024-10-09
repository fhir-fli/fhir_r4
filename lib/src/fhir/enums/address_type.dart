import 'package:json_annotation/json_annotation.dart';

/// The type of an address (physical / postal).
enum AddressType {
  /// Display: Postal
  /// Definition: Mailing addresses - PO Boxes and care-of addresses.
  @JsonValue('postal')
  postal,

  /// Display: Physical
  /// Definition: A physical address that can be visited.
  @JsonValue('physical')
  physical,

  /// Display: Postal & Physical
  /// Definition: An address that is both physical and postal.
  @JsonValue('both')
  both,
  ;

  @override
  String toString() {
    switch (this) {
      case postal:
        return 'postal';
      case physical:
        return 'physical';
      case both:
        return 'both';
    }
  }

  String toJson() => toString();
  static AddressType fromString(String str) {
    switch (str) {
      case 'postal':
        return AddressType.postal;
      case 'physical':
        return AddressType.physical;
      case 'both':
        return AddressType.both;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AddressType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
