import 'package:json_annotation/json_annotation.dart';

/// The method by which the substance weight was measured.
enum WeightMethod {
  /// Display: SDS-PAGE (sodium dodecyl sulfate-polyacrylamide gel electrophoresis)
  @JsonValue('SDS-PAGE')
  SDS_PAGE,
  /// Display: calculated
  @JsonValue('Calculated')
  Calculated,
  /// Display: light scattering
  @JsonValue('LighScattering')
  LighScattering,
  /// Display: viscosity
  @JsonValue('Viscosity')
  Viscosity,
  /// Display: gel permeation centrifugation
  @JsonValue('GelPermeationCentrifugation')
  GelPermeationCentrifugation,
  /// Display: End-group analysis
  @JsonValue('End-groupAnalysis')
  End_groupAnalysis,
  /// Display: End-group titration
  @JsonValue('End-groupTitration')
  End_groupTitration,
  /// Display: Size-exclusion chromatography
  @JsonValue('Size-ExclusionChromatography')
  Size_ExclusionChromatography,
;

@override
  String toString() {
      switch(this) {
        case SDS_PAGE: return 'SDS-PAGE';
        case Calculated: return 'Calculated';
        case LighScattering: return 'LighScattering';
        case Viscosity: return 'Viscosity';
        case GelPermeationCentrifugation: return 'GelPermeationCentrifugation';
        case End_groupAnalysis: return 'End-groupAnalysis';
        case End_groupTitration: return 'End-groupTitration';
        case Size_ExclusionChromatography: return 'Size-ExclusionChromatography';
      }
      }
String toJson() => toString();
  WeightMethod fromString(String str) {
    switch(str) {
      case 'SDS-PAGE': return WeightMethod.SDS_PAGE;
      case 'Calculated': return WeightMethod.Calculated;
      case 'LighScattering': return WeightMethod.LighScattering;
      case 'Viscosity': return WeightMethod.Viscosity;
      case 'GelPermeationCentrifugation': return WeightMethod.GelPermeationCentrifugation;
      case 'End-groupAnalysis': return WeightMethod.End_groupAnalysis;
      case 'End-groupTitration': return WeightMethod.End_groupTitration;
      case 'Size-ExclusionChromatography': return WeightMethod.Size_ExclusionChromatography;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 WeightMethod fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
