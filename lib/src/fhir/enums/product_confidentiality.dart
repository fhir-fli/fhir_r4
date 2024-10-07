import 'package:json_annotation/json_annotation.dart';

/// Confidentiality rating, e.g. commercial sensitivity for a Medicinal Product.
enum ProductConfidentiality {
  /// Display: Commercially Sensitive
  /// Definition: Commercially Sensitive
  @JsonValue('CommerciallySensitive')
  CommerciallySensitive,
  /// Display: Not Commercially Sensitive
  /// Definition: Not Commercially Sensitive
  @JsonValue('NotCommerciallySensitive')
  NotCommerciallySensitive,
;

@override
  String toString() {
      switch(this) {
        case CommerciallySensitive: return 'CommerciallySensitive';
        case NotCommerciallySensitive: return 'NotCommerciallySensitive';
      }
      }
String toJson() => toString();
  ProductConfidentiality fromString(String str) {
    switch(str) {
      case 'CommerciallySensitive': return ProductConfidentiality.CommerciallySensitive;
      case 'NotCommerciallySensitive': return ProductConfidentiality.NotCommerciallySensitive;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ProductConfidentiality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

