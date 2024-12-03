import 'package:fhir_r4/fhir_r4.dart';

/// Exception for primitive type format errors.
class PrimitiveTypeFormatException extends FhirException {
  /// PrimitiveTypeFormatException constructor.
  PrimitiveTypeFormatException({super.message, super.cause});

  @override
  String toString() {
    return cause == null
        ? 'PrimitiveTypeFormatException: $message'
        : 'PrimitiveTypeFormatException: $message\nCause: $cause';
  }
}

/// Exception for YAML parsing errors.
class YamlFormatException<T> extends PrimitiveTypeFormatException {
  /// YamlFormatException constructor.
  YamlFormatException({super.message, super.cause});

  @override
  String toString() {
    return cause == null
        ? 'YamlFormatException: $message'
        : 'YamlFormatException: $message\nCause: $cause';
  }
}

/// Exception for unequal precision errors in FHIR primitives.
class UnequalPrecision<T> extends FhirException {
  /// UnequalPrecision constructor.
  UnequalPrecision({super.message, super.cause});

  @override
  String toString() {
    return cause == null
        ? 'UnequalPrecision: $message'
        : 'UnequalPrecision: $message\nCause: $cause';
  }
}

/// Exception for invalid type errors in FHIR primitives.
class InvalidTypes<T> extends FhirException {
  /// InvalidTypes constructor.
  InvalidTypes({super.message, super.cause});

  @override
  String toString() {
    return cause == null
        ? 'InvalidTypes: $message'
        : 'InvalidTypes: $message\nCause: $cause';
  }
}
