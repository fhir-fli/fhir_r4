/// The quality of how direct the match is.
enum EvidenceDirectness {
  /// Display: Low quality match between observed and intended variable
  /// Definition: Low matching quality between observed and intended variable, so very serious concern for indirectness in evidence interpretation.
  low,

  /// Display: Moderate quality match between observed and intended variable
  /// Definition: Moderate matching quality between observed and intended variable, so serious concern for indirectness in evidence interpretation.
  moderate,

  /// Display: High quality match between observed and intended variable
  /// Definition: High matching quality between observed and intended variable, so little concern for indirectness in evidence interpretation.
  high,

  /// Display: Exact match between observed and intended variable
  /// Definition: Exact matching quality between observed and intended variable, so no concern for indirectness in evidence interpretation.
  exact,
  ;

  @override
  String toString() {
    switch (this) {
      case low:
        return 'low';
      case moderate:
        return 'moderate';
      case high:
        return 'high';
      case exact:
        return 'exact';
    }
  }

  String toJson() => toString();
  static EvidenceDirectness fromString(String str) {
    switch (str) {
      case 'low':
        return EvidenceDirectness.low;
      case 'moderate':
        return EvidenceDirectness.moderate;
      case 'high':
        return EvidenceDirectness.high;
      case 'exact':
        return EvidenceDirectness.exact;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EvidenceDirectness fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
