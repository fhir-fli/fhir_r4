import 'package:json_annotation/json_annotation.dart';

/// A characteristic of a package.
enum PackageCharacteristic {
  /// Display: Hospital pack
  @JsonValue('HospitalPack')
  HospitalPack,
  /// Display: Nurse prescribable
  @JsonValue('NursePrescribable')
  NursePrescribable,
  /// Display: Calendar pack
  @JsonValue('CalendarPack')
  CalendarPack,
;

@override
  String toString() {
      switch(this) {
        case HospitalPack: return 'HospitalPack';
        case NursePrescribable: return 'NursePrescribable';
        case CalendarPack: return 'CalendarPack';
      }
      }
String toJson() => toString();
  PackageCharacteristic fromString(String str) {
    switch(str) {
      case 'HospitalPack': return PackageCharacteristic.HospitalPack;
      case 'NursePrescribable': return PackageCharacteristic.NursePrescribable;
      case 'CalendarPack': return PackageCharacteristic.CalendarPack;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 PackageCharacteristic fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

