/// Represents a validation message
class ValidationMessage {
  /// Constructor
  ValidationMessage({
    required this.severity,
    required this.message,
    this.location,
  });

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
