import 'package:json_annotation/json_annotation.dart';

/// Codes identifying the lifecycle stage of a product.
enum NutritionProductStatus {
  /// Display: Active
  /// Definition: The product can be used.
  @JsonValue('active')
  active,
  /// Display: Inactive
  /// Definition: The product is not expected or allowed to be used.
  @JsonValue('inactive')
  inactive,
  /// Display: Entered in Error
  /// Definition: This electronic record should never have existed, though it is possible that real-world decisions were based on it.  (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  @JsonValue('entered-in-error')
  entered_in_error,
;

@override
  String toString() {
      switch(this) {
        case active: return 'active';
        case inactive: return 'inactive';
        case entered_in_error: return 'entered-in-error';
      }
      }
String toJson() => toString();
  NutritionProductStatus fromString(String str) {
    switch(str) {
      case 'active': return NutritionProductStatus.active;
      case 'inactive': return NutritionProductStatus.inactive;
      case 'entered-in-error': return NutritionProductStatus.entered_in_error;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 NutritionProductStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

