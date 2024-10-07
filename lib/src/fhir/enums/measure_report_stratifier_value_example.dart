import 'package:json_annotation/json_annotation.dart';

/// Example Measure Stratification Value for MeasureReports Resource.
enum MeasureReportStratifierValueExample {
  /// Display: Northwest
  /// Definition: Northwest region stratification.
  @JsonValue('northwest')
  northwest,
  /// Display: Northeast
  /// Definition: Northeast region stratification.
  @JsonValue('northeast')
  northeast,
  /// Display: Soutwest
  /// Definition: Soutwest region stratification.
  @JsonValue('southwest')
  southwest,
  /// Display: Southeast
  /// Definition: Southeast region stratification.
  @JsonValue('southeast')
  southeast,
;

@override
  String toString() {
      switch(this) {
        case northwest: return 'northwest';
        case northeast: return 'northeast';
        case southwest: return 'southwest';
        case southeast: return 'southeast';
      }
      }
String toJson() => toString();
  MeasureReportStratifierValueExample fromString(String str) {
    switch(str) {
      case 'northwest': return MeasureReportStratifierValueExample.northwest;
      case 'northeast': return MeasureReportStratifierValueExample.northeast;
      case 'southwest': return MeasureReportStratifierValueExample.southwest;
      case 'southeast': return MeasureReportStratifierValueExample.southeast;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 MeasureReportStratifierValueExample fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

