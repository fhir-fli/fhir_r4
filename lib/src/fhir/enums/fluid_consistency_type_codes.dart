import 'package:json_annotation/json_annotation.dart';

/// FluidConsistencyType :  Codes used to represent the consistency of fluids and liquids provided to the patient. This value set includes concepts from [SNOMED CT](http://snomed.info/sct)(US Extension) where concept is a 435681000124103  (Dietary liquid consistency diet (regime/therapy)). It is provided as a suggestive example.
enum FluidConsistencyTypeCodes {
  /// Display: honey thick liquid
  @JsonValue('439031000124108')
  value439031000124108,
  /// Display: nectar thick liquid
  @JsonValue('439021000124105')
  value439021000124105,
  /// Display: spoon thick liquid
  @JsonValue('439041000124103')
  value439041000124103,
  /// Display: thin liquid
  @JsonValue('439081000124109')
  value439081000124109,
;

@override
  String toString() {
      switch(this) {
        case value439031000124108: return '439031000124108';
        case value439021000124105: return '439021000124105';
        case value439041000124103: return '439041000124103';
        case value439081000124109: return '439081000124109';
      }
      }
String toJson() => toString();
  FluidConsistencyTypeCodes fromString(String str) {
    switch(str) {
      case '439031000124108': return FluidConsistencyTypeCodes.value439031000124108;
      case '439021000124105': return FluidConsistencyTypeCodes.value439021000124105;
      case '439041000124103': return FluidConsistencyTypeCodes.value439041000124103;
      case '439081000124109': return FluidConsistencyTypeCodes.value439081000124109;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 FluidConsistencyTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

