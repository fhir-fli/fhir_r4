/// A characteristic of a package.
enum PackageCharacteristic {
  /// Display: Hospital pack
  HospitalPack,

  /// Display: Nurse prescribable
  NursePrescribable,

  /// Display: Calendar pack
  CalendarPack,
  ;

  @override
  String toString() {
    switch (this) {
      case HospitalPack:
        return 'HospitalPack';
      case NursePrescribable:
        return 'NursePrescribable';
      case CalendarPack:
        return 'CalendarPack';
    }
  }

  /// Returns a [String] from a [PackageCharacteristic] enum.
  String toJson() => toString();

  /// Returns a [PackageCharacteristic] from a [String] enum.
  static PackageCharacteristic fromString(String str) {
    switch (str) {
      case 'HospitalPack':
        return PackageCharacteristic.HospitalPack;
      case 'NursePrescribable':
        return PackageCharacteristic.NursePrescribable;
      case 'CalendarPack':
        return PackageCharacteristic.CalendarPack;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [PackageCharacteristic] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static PackageCharacteristic fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
