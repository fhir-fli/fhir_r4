import 'package:json_annotation/json_annotation.dart';

/// Overall categorization of the event, e.g. product-related or situational.
enum AdverseEventCategory {
  /// Display: Product Problem
  /// Definition: The adverse event pertains to a product problem.
  @JsonValue('product-problem')
  product_problem,

  /// Display: Product Quality
  /// Definition: The adverse event pertains to product quality.
  @JsonValue('product-quality')
  product_quality,

  /// Display: Product Use Error
  /// Definition: The adverse event pertains to a product use error.
  @JsonValue('product-use-error')
  product_use_error,

  /// Display: Medical Device Use Error
  /// Definition: The adverse event pertains to a medical device use error.
  @JsonValue('medical-device-use-error')
  medical_device_use_error,

  /// Display: Problem with Different Manufacturer of Same Medicine
  /// Definition: The adverse event pertains to a problem with a different manufacturer of the same medication.
  @JsonValue('problem-different-manufacturer')
  problem_different_manufacturer,

  /// Display: Unsafe Physical Environment
  /// Definition: The adverse event pertains to an unsafe physical environment.
  @JsonValue('unsafe-physical-environment')
  unsafe_physical_environment,
  ;

  @override
  String toString() {
    switch (this) {
      case product_problem:
        return 'product-problem';
      case product_quality:
        return 'product-quality';
      case product_use_error:
        return 'product-use-error';
      case medical_device_use_error:
        return 'medical-device-use-error';
      case problem_different_manufacturer:
        return 'problem-different-manufacturer';
      case unsafe_physical_environment:
        return 'unsafe-physical-environment';
    }
  }

  String toJson() => toString();
  AdverseEventCategory fromString(String str) {
    switch (str) {
      case 'product-problem':
        return AdverseEventCategory.product_problem;
      case 'product-quality':
        return AdverseEventCategory.product_quality;
      case 'product-use-error':
        return AdverseEventCategory.product_use_error;
      case 'medical-device-use-error':
        return AdverseEventCategory.medical_device_use_error;
      case 'problem-different-manufacturer':
        return AdverseEventCategory.problem_different_manufacturer;
      case 'unsafe-physical-environment':
        return AdverseEventCategory.unsafe_physical_environment;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdverseEventCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
