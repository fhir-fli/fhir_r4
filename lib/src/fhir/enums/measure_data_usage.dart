import 'package:json_annotation/json_annotation.dart';

/// The intended usage for supplemental data elements in the measure.
enum MeasureDataUsage {
  /// Display: Supplemental Data
  /// Definition: The data is intended to be provided as additional information alongside the measure results.
  @JsonValue('supplemental-data')
  supplemental_data,

  /// Display: Risk Adjustment Factor
  /// Definition: The data is intended to be used to calculate and apply a risk adjustment model for the measure.
  @JsonValue('risk-adjustment-factor')
  risk_adjustment_factor,
  ;

  @override
  String toString() {
    switch (this) {
      case supplemental_data:
        return 'supplemental-data';
      case risk_adjustment_factor:
        return 'risk-adjustment-factor';
    }
  }

  String toJson() => toString();
  MeasureDataUsage fromString(String str) {
    switch (str) {
      case 'supplemental-data':
        return MeasureDataUsage.supplemental_data;
      case 'risk-adjustment-factor':
        return MeasureDataUsage.risk_adjustment_factor;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  MeasureDataUsage fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
