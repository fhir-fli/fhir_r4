/// The prescription supply types appropriate to a medicinal product
enum LegalStatusOfSupply {
  /// Display: Medicinal product not subject to medical prescription
  value100000072076,

  /// Display: Medicinal product on medical prescription for renewable or non-renewable delivery
  value100000072077,

  /// Display: Medicinal product subject to restricted medical prescription
  value100000072078,

  /// Display: Medicinal product on medical prescription for non-renewable delivery
  value100000072079,

  /// Display: Medicinal product subject to medical prescription
  value100000072084,

  /// Display: Medicinal product subject to special medical prescription
  value100000072085,

  /// Display: Medicinal product on medical prescription for renewable delivery
  value100000072086,

  /// Display: Medicinal product subject to special and restricted medical prescription
  value100000157313,
  ;

  @override
  String toString() {
    switch (this) {
      case value100000072076:
        return '100000072076';
      case value100000072077:
        return '100000072077';
      case value100000072078:
        return '100000072078';
      case value100000072079:
        return '100000072079';
      case value100000072084:
        return '100000072084';
      case value100000072085:
        return '100000072085';
      case value100000072086:
        return '100000072086';
      case value100000157313:
        return '100000157313';
    }
  }

  /// Returns a [String] from a [LegalStatusOfSupply] enum.
  String toJson() => toString();

  /// Returns a [LegalStatusOfSupply] from a [String] enum.
  static LegalStatusOfSupply fromString(String str) {
    switch (str) {
      case '100000072076':
        return LegalStatusOfSupply.value100000072076;
      case '100000072077':
        return LegalStatusOfSupply.value100000072077;
      case '100000072078':
        return LegalStatusOfSupply.value100000072078;
      case '100000072079':
        return LegalStatusOfSupply.value100000072079;
      case '100000072084':
        return LegalStatusOfSupply.value100000072084;
      case '100000072085':
        return LegalStatusOfSupply.value100000072085;
      case '100000072086':
        return LegalStatusOfSupply.value100000072086;
      case '100000157313':
        return LegalStatusOfSupply.value100000157313;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [LegalStatusOfSupply] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static LegalStatusOfSupply fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
