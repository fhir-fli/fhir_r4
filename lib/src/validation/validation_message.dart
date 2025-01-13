/// Represents a validation message
class ValidationMessage {
  /// Constructor
  ValidationMessage({
    required this.severity,
    required this.message,
    this.path,
    this.location,
  });

  /// Create a copy of the message with new values
  ValidationMessage copyWith({
    Severity? severity,
    String? message,
    String? path,
    String? location,
  }) {
    return ValidationMessage(
      severity: severity ?? this.severity,
      message: message ?? this.message,
      path: path ?? this.path,
      location: location ?? this.location,
    );
  }

  /// Severity of the message
  final Severity severity;

  /// Message content
  final String message;

  /// Path to the element that caused the message
  final String? path;

  /// Location of the message
  final String? location;
}

/// Severity of a validation message
enum Severity {
  /// Informational message
  info,

  /// Warning message
  warning,

  /// Error message
  error,
}

/// Configuration for the validator
class ValidatorConfig {
  /// Constructor
  ValidatorConfig({this.level = ValidationLevel.hints});

  /// Validation level
  final ValidationLevel level;

  /// Checks if a severity level is allowed based on the configuration
  bool allows(Severity severity) {
    switch (level) {
      case ValidationLevel.errors:
        return severity == Severity.error;
      case ValidationLevel.warnings:
        return severity == Severity.error || severity == Severity.warning;
      case ValidationLevel.hints:
        return true;
    }
  }
}

/// Validation levels
enum ValidationLevel {
  /// Only errors
  errors,

  /// Errors and warnings
  warnings,

  /// Errors, warnings, and hints
  hints,
}

/// Core Validator class
class Validator {
  /// Constructor
  Validator(this.config);

  /// Validator configuration
  final ValidatorConfig config;

  /// List of validation messages
  final List<ValidationMessage> messages = [];

  /// Add an error message if the condition fails
  // ignore: avoid_positional_boolean_parameters
  bool rule(bool condition, String message, {String? path, String? location}) {
    if (!condition && config.allows(Severity.error)) {
      messages.add(
        ValidationMessage(
          severity: Severity.error,
          message: message,
          path: path,
          location: location,
        ),
      );
    }
    return condition;
  }

  /// Add a warning message if the condition fails
  // ignore: avoid_positional_boolean_parameters
  bool warning(bool condition, String message,
      {String? path, String? location,}) {
    if (!condition && config.allows(Severity.warning)) {
      messages.add(
        ValidationMessage(
          severity: Severity.warning,
          message: message,
          path: path,
          location: location,
        ),
      );
    }
    return condition;
  }

  /// Add an informational hint if the condition fails
  // ignore: avoid_positional_boolean_parameters
  bool hint(bool condition, String message, {String? path, String? location}) {
    if (!condition && config.allows(Severity.info)) {
      messages.add(
        ValidationMessage(
          severity: Severity.info,
          message: message,
          path: path,
          location: location,
        ),
      );
    }
    return condition;
  }
}
