import 'package:json_annotation/json_annotation.dart';

/// A species of origin a substance raw material.
enum SourceMaterialSpecies {
  /// Display: Ginkgo biloba
  @JsonValue('GinkgoBiloba')
  GinkgoBiloba,
  /// Display: Olea europaea
  @JsonValue('OleaEuropaea')
  OleaEuropaea,
;

@override
  String toString() {
      switch(this) {
        case GinkgoBiloba: return 'GinkgoBiloba';
        case OleaEuropaea: return 'OleaEuropaea';
      }
      }
String toJson() => toString();
  SourceMaterialSpecies fromString(String str) {
    switch(str) {
      case 'GinkgoBiloba': return SourceMaterialSpecies.GinkgoBiloba;
      case 'OleaEuropaea': return SourceMaterialSpecies.OleaEuropaea;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SourceMaterialSpecies fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
