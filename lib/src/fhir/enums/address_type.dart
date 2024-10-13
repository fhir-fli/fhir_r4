/// The type of an address (physical / postal).
enum AddressType {
  /// Display: Postal
  /// Definition: Mailing addresses - PO Boxes and care-of addresses.
  postal,

  /// Display: Physical
  /// Definition: A physical address that can be visited.
  physical,

  /// Display: Postal & Physical
  /// Definition: An address that is both physical and postal.
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

  /// Returns a [String] from a [AddressType] enum.
  String toJson() => toString();

  /// Returns a [AddressType] from a [String] enum.
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

  /// Returns a [AddressType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AddressType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
