import 'package:json_annotation/json_annotation.dart';

/// How resource references can be aggregated.
enum AggregationMode {
  /// Display: Contained
  /// Definition: The reference is a local reference to a contained resource.
  @JsonValue('contained')
  contained,
  /// Display: Referenced
  /// Definition: The reference to a resource that has to be resolved externally to the resource that includes the reference.
  @JsonValue('referenced')
  referenced,
;

@override
  String toString() {
      switch(this) {
        case contained: return 'contained';
        case referenced: return 'referenced';
      }
      }
String toJson() => toString();
  AggregationMode fromString(String str) {
    switch(str) {
      case 'contained': return AggregationMode.contained;
      case 'referenced': return AggregationMode.referenced;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AggregationMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
