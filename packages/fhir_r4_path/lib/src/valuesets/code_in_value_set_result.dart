// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes,
// ignore_for_file: constant_identifier_names

/// CodeInValueSetResult
class CodeInValueSetResult {
  /// Create a new code in value set result
  CodeInValueSetResult({required this.errors, required this.warnings});

  /// The errors
  final List<String> errors;

  /// The warnings
  final List<String> warnings;
}

/// Extension for WorkerContext to handle ValueSet expansion
