import 'package:json_annotation/json_annotation.dart';

/// This value sets refers to a specific supply item.
enum SupplyItemType {
  /// Display: Medication
  /// Definition: Supply is a kind of medication.
  @JsonValue('medication')
  medication,

  /// Display: Device
  /// Definition: What is supplied (or requested) is a device.
  @JsonValue('device')
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

  String toJson() => toString();
  SupplyItemType fromString(String str) {
    switch (str) {
      case 'medication':
        return SupplyItemType.medication;
      case 'device':
        return SupplyItemType.device;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SupplyItemType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
