import 'package:json_annotation/json_annotation.dart';

/// Types of medicinal product packs
enum MedicinalProductPackageType {
  /// Display: Ampoule
  @JsonValue('100000073490')
  value100000073490,
  /// Display: Applicator
  @JsonValue('100000073491')
  value100000073491,
  /// Display: Automatic injection device
  @JsonValue('100000073492')
  value100000073492,
  /// Display: Bag
  @JsonValue('100000073493')
  value100000073493,
  /// Display: Balling gun
  @JsonValue('100000073494')
  value100000073494,
  /// Display: Barrel
  @JsonValue('100000073495')
  value100000073495,
  /// Display: Blister
  @JsonValue('100000073496')
  value100000073496,
  /// Display: Bottle
  @JsonValue('100000073497')
  value100000073497,
  /// Display: Box
  @JsonValue('100000073498')
  value100000073498,
  /// Display: Sachet
  @JsonValue('100000073547')
  value100000073547,
  /// Display: Vial
  @JsonValue('100000073563')
  value100000073563,
  /// Display: Pack
  @JsonValue('100000143555')
  value100000143555,
;

@override
  String toString() {
      switch(this) {
        case value100000073490: return '100000073490';
        case value100000073491: return '100000073491';
        case value100000073492: return '100000073492';
        case value100000073493: return '100000073493';
        case value100000073494: return '100000073494';
        case value100000073495: return '100000073495';
        case value100000073496: return '100000073496';
        case value100000073497: return '100000073497';
        case value100000073498: return '100000073498';
        case value100000073547: return '100000073547';
        case value100000073563: return '100000073563';
        case value100000143555: return '100000143555';
      }
      }
String toJson() => toString();
  MedicinalProductPackageType fromString(String str) {
    switch(str) {
      case '100000073490': return MedicinalProductPackageType.value100000073490;
      case '100000073491': return MedicinalProductPackageType.value100000073491;
      case '100000073492': return MedicinalProductPackageType.value100000073492;
      case '100000073493': return MedicinalProductPackageType.value100000073493;
      case '100000073494': return MedicinalProductPackageType.value100000073494;
      case '100000073495': return MedicinalProductPackageType.value100000073495;
      case '100000073496': return MedicinalProductPackageType.value100000073496;
      case '100000073497': return MedicinalProductPackageType.value100000073497;
      case '100000073498': return MedicinalProductPackageType.value100000073498;
      case '100000073547': return MedicinalProductPackageType.value100000073547;
      case '100000073563': return MedicinalProductPackageType.value100000073563;
      case '100000143555': return MedicinalProductPackageType.value100000143555;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MedicinalProductPackageType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

