/// Types of medicinal product packs
enum MedicinalProductPackageType {
  /// Display: Ampoule
  value100000073490,

  /// Display: Applicator
  value100000073491,

  /// Display: Automatic injection device
  value100000073492,

  /// Display: Bag
  value100000073493,

  /// Display: Balling gun
  value100000073494,

  /// Display: Barrel
  value100000073495,

  /// Display: Blister
  value100000073496,

  /// Display: Bottle
  value100000073497,

  /// Display: Box
  value100000073498,

  /// Display: Sachet
  value100000073547,

  /// Display: Vial
  value100000073563,

  /// Display: Pack
  value100000143555,
  ;

  @override
  String toString() {
    switch (this) {
      case value100000073490:
        return '100000073490';
      case value100000073491:
        return '100000073491';
      case value100000073492:
        return '100000073492';
      case value100000073493:
        return '100000073493';
      case value100000073494:
        return '100000073494';
      case value100000073495:
        return '100000073495';
      case value100000073496:
        return '100000073496';
      case value100000073497:
        return '100000073497';
      case value100000073498:
        return '100000073498';
      case value100000073547:
        return '100000073547';
      case value100000073563:
        return '100000073563';
      case value100000143555:
        return '100000143555';
    }
  }

  String toJson() => toString();
  static MedicinalProductPackageType fromString(String str) {
    switch (str) {
      case '100000073490':
        return MedicinalProductPackageType.value100000073490;
      case '100000073491':
        return MedicinalProductPackageType.value100000073491;
      case '100000073492':
        return MedicinalProductPackageType.value100000073492;
      case '100000073493':
        return MedicinalProductPackageType.value100000073493;
      case '100000073494':
        return MedicinalProductPackageType.value100000073494;
      case '100000073495':
        return MedicinalProductPackageType.value100000073495;
      case '100000073496':
        return MedicinalProductPackageType.value100000073496;
      case '100000073497':
        return MedicinalProductPackageType.value100000073497;
      case '100000073498':
        return MedicinalProductPackageType.value100000073498;
      case '100000073547':
        return MedicinalProductPackageType.value100000073547;
      case '100000073563':
        return MedicinalProductPackageType.value100000073563;
      case '100000143555':
        return MedicinalProductPackageType.value100000143555;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MedicinalProductPackageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
