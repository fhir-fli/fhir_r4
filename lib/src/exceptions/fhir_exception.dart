/// [FHIRException] represents an exception in the FHIR library.
class FHIRException implements Exception {
  /// Constructor for [FHIRException] with optional [message] and [cause].
  FHIRException({this.message, this.cause});

  /// The message of the exception.
  final String? message;

  /// The cause of the exception.
  final Object? cause;

  @override
  String toString() {
    if (message != null && cause != null) {
      return 'FHIRException: $message\nCause: $cause';
    } else if (message != null) {
      return 'FHIRException: $message';
    } else if (cause != null) {
      return 'FHIRException\nCause: $cause';
    } else {
      return 'FHIRException';
    }
  }
}
