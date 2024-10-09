import 'package:json_annotation/json_annotation.dart';

/// A code specifying the types of information being requested.
enum EligibilityResponsePurpose {
  /// Display: Coverage auth-requirements
  /// Definition: The prior authorization requirements for the listed, or discovered if specified, converages for the categories of service and/or specifed biling codes are requested.
  @JsonValue('auth-requirements')
  auth_requirements,

  /// Display: Coverage benefits
  /// Definition: The plan benefits and optionally benefits consumed  for the listed, or discovered if specified, converages are requested.
  @JsonValue('benefits')
  benefits,

  /// Display: Coverage Discovery
  /// Definition: The insurer is requested to report on any coverages which they are aware of in addition to any specifed.
  @JsonValue('discovery')
  discovery,

  /// Display: Coverage Validation
  /// Definition: A check that the specified coverages are in-force is requested.
  @JsonValue('validation')
  validation,
  ;

  @override
  String toString() {
    switch (this) {
      case auth_requirements:
        return 'auth-requirements';
      case benefits:
        return 'benefits';
      case discovery:
        return 'discovery';
      case validation:
        return 'validation';
    }
  }

  String toJson() => toString();
  static EligibilityResponsePurpose fromString(String str) {
    switch (str) {
      case 'auth-requirements':
        return EligibilityResponsePurpose.auth_requirements;
      case 'benefits':
        return EligibilityResponsePurpose.benefits;
      case 'discovery':
        return EligibilityResponsePurpose.discovery;
      case 'validation':
        return EligibilityResponsePurpose.validation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static EligibilityResponsePurpose fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
