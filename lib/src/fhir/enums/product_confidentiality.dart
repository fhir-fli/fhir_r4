/// Confidentiality rating, e.g. commercial sensitivity for a Medicinal Product.
enum ProductConfidentiality {
  /// Display: Commercially Sensitive
  /// Definition: Commercially Sensitive
  CommerciallySensitive,

  /// Display: Not Commercially Sensitive
  /// Definition: Not Commercially Sensitive
  NotCommerciallySensitive,
  ;

  @override
  String toString() {
    switch (this) {
      case CommerciallySensitive:
        return 'CommerciallySensitive';
      case NotCommerciallySensitive:
        return 'NotCommerciallySensitive';
    }
  }

  String toJson() => toString();
  static ProductConfidentiality fromString(String str) {
    switch (str) {
      case 'CommerciallySensitive':
        return ProductConfidentiality.CommerciallySensitive;
      case 'NotCommerciallySensitive':
        return ProductConfidentiality.NotCommerciallySensitive;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ProductConfidentiality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
