/// Type for quality report.
enum QualityType {
  /// Display: INDEL Comparison
  /// Definition: INDEL Comparison.
  indel,

  /// Display: SNP Comparison
  /// Definition: SNP Comparison.
  snp,

  /// Display: UNKNOWN Comparison
  /// Definition: UNKNOWN Comparison.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case indel:
        return 'indel';
      case snp:
        return 'snp';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static QualityType fromString(String str) {
    switch (str) {
      case 'indel':
        return QualityType.indel;
      case 'snp':
        return QualityType.snp;
      case 'unknown':
        return QualityType.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static QualityType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
