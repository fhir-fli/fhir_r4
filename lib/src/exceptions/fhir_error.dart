/// Base class for all FHIR errors.
class FHIRError implements Error {
  /// Constructs a new [FHIRError].
  FHIRError({
    this.message,
    this.cause,
    this.stackTrace,
  });

  /// The error message.
  final String? message;

  /// The cause of the error.
  final Object? cause;

  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    final buffer = StringBuffer('FHIRError:\n');
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
