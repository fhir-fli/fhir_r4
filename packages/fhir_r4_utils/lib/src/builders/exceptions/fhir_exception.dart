/// A generic exception for FHIR-related errors.
class FHIRException implements Exception {
  /// Constructs a new [FHIRException].
  FHIRException({
    this.message,
    this.cause,
    this.stackTrace,
  });

  /// The exception message.
  final String? message;

  /// The cause of the exception.
  final Object? cause;

  /// The stack trace at the time of the exception.
  final StackTrace? stackTrace;

  @override
  String toString() {
    final buffer = StringBuffer('FHIRException:\n');
    if (message != null) {
      buffer.writeln('Message: $message');
    }
    if (cause != null) {
      buffer.writeln('Cause: $cause');
    }
    if (stackTrace != null) {
      buffer.writeln('StackTrace:\n$stackTrace');
    }
    return buffer.toString();
  }
}
