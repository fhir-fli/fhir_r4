/// Represents a validation message
class ValidationMessage {
  /// Constructor
  ValidationMessage({
    required this.severity,
    required this.message,
    this.location,
  });

  /// Create a copy of the message with new values
  ValidationMessage copyWith({
    Severity? severity,
    String? message,
    String? location,
  }) {
    return ValidationMessage(
      severity: severity ?? this.severity,
      message: message ?? this.message,
      location: location ?? this.location,
    );
  }

  /// Severity of the message
  final Severity severity;

  /// Message content
  final String message;

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
