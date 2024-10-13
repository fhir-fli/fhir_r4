/// This value sets refers to a specific supply item.
enum SupplyItemType {
  /// Display: Medication
  /// Definition: Supply is a kind of medication.
  medication,

  /// Display: Device
  /// Definition: What is supplied (or requested) is a device.
  device,
  ;

  @override
  String toString() {
    switch (this) {
      case medication:
        return 'medication';
      case device:
        return 'device';
    }
  }

  /// Returns a [String] from a [SupplyItemType] enum.
  String toJson() => toString();

  /// Returns a [SupplyItemType] from a [String] enum.
  static SupplyItemType fromString(String str) {
    switch (str) {
      case 'medication':
        return SupplyItemType.medication;
      case 'device':
        return SupplyItemType.device;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SupplyItemType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SupplyItemType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
