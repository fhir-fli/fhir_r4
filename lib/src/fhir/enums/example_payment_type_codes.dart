import 'package:json_annotation/json_annotation.dart';

/// This value set includes example Payment Type codes.
enum ExamplePaymentTypeCodes {
  /// Display: Complete
  /// Definition: Complete (final) payment of the benefit under the Claim less any adjustments.
  @JsonValue('complete')
  complete,
  /// Display: Partial
  /// Definition: Partial payment of the benefit under the Claim less any adjustments.
  @JsonValue('partial')
  partial,
;

@override
  String toString() {
      switch(this) {
        case complete: return 'complete';
        case partial: return 'partial';
      }
      }
String toJson() => toString();
  ExamplePaymentTypeCodes fromString(String str) {
    switch(str) {
      case 'complete': return ExamplePaymentTypeCodes.complete;
      case 'partial': return ExamplePaymentTypeCodes.partial;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ExamplePaymentTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

