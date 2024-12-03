/// [FhirException] represents an exception in the FHIR library.
class FhirException implements Exception {
  /// Constructor for [FhirException] with optional [message] and [cause].
  FhirException({this.message, this.cause});

  /// The message of the exception.
  final String? message;

  /// The cause of the exception.
  final Object? cause;

  @override
  String toString() {
    if (message != null && cause != null) {
      return 'FhirException: $message\nCause: $cause';
    } else if (message != null) {
      return 'FhirException: $message';
    } else if (cause != null) {
      return 'FhirException\nCause: $cause';
    } else {
      return 'FhirException';
    }
  }
}
