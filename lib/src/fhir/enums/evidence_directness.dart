import 'package:json_annotation/json_annotation.dart';

/// The quality of how direct the match is.
enum EvidenceDirectness {
  /// Display: Low quality match between observed and intended variable
  /// Definition: Low matching quality between observed and intended variable, so very serious concern for indirectness in evidence interpretation.
  @JsonValue('low')
  low,
  /// Display: Moderate quality match between observed and intended variable
  /// Definition: Moderate matching quality between observed and intended variable, so serious concern for indirectness in evidence interpretation.
  @JsonValue('moderate')
  moderate,
  /// Display: High quality match between observed and intended variable
  /// Definition: High matching quality between observed and intended variable, so little concern for indirectness in evidence interpretation.
  @JsonValue('high')
  high,
  /// Display: Exact match between observed and intended variable
  /// Definition: Exact matching quality between observed and intended variable, so no concern for indirectness in evidence interpretation.
  @JsonValue('exact')
  exact,
;

@override
  String toString() {
      switch(this) {
        case low: return 'low';
        case moderate: return 'moderate';
        case high: return 'high';
        case exact: return 'exact';
      }
      }
String toJson() => toString();
  EvidenceDirectness fromString(String str) {
    switch(str) {
      case 'low': return EvidenceDirectness.low;
      case 'moderate': return EvidenceDirectness.moderate;
      case 'high': return EvidenceDirectness.high;
      case 'exact': return EvidenceDirectness.exact;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 EvidenceDirectness fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

