import 'package:json_annotation/json_annotation.dart';

/// Extra monitoring defined for a Medicinal Product.
enum AdditionalMonitoring {
  /// Display: Requirement for Black Triangle Monitoring
  /// Definition: Requirement for Black Triangle Monitoring
  @JsonValue('BlackTriangleMonitoring')
  BlackTriangleMonitoring,
;

@override
  String toString() {
      switch(this) {
        case BlackTriangleMonitoring: return 'BlackTriangleMonitoring';
      }
      }
String toJson() => toString();
  AdditionalMonitoring fromString(String str) {
    switch(str) {
      case 'BlackTriangleMonitoring': return AdditionalMonitoring.BlackTriangleMonitoring;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AdditionalMonitoring fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

