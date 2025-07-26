import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlException implements Exception {
  final String? message;
  final Exception? cause;
  SourceLocator? sourceLocator;
  final Severity severity;

  // Constructors
  CqlException(
      {required this.message,
      this.cause,
      this.sourceLocator,
      Severity? severity})
      : severity = severity ?? Severity.error;

  CqlException.fromCause(Exception cause,
      {SourceLocator? sourceLocator, Severity? severity})
      : this(
            message: null,
            cause: cause,
            sourceLocator: sourceLocator,
            severity: severity);

  CqlException.withSourceLocator(String message, SourceLocator sourceLocator,
      {Severity? severity})
      : this(
            message: message, sourceLocator: sourceLocator, severity: severity);

  CqlException.withSeverity(String message,
      {SourceLocator? sourceLocator, required Severity severity})
      : this(
            message: message, sourceLocator: sourceLocator, severity: severity);

  // Getter for message to mimic Java's getMessage method
  String? get getMessage => message;

  Map<String, dynamic> toJson() {
    return {
      if (message != null) 'message': message,
      if (cause != null) 'cause': cause.toString(),
      if (sourceLocator != null) 'sourceLocator': sourceLocator!.toJson(),
      'severity': severity.toString(),
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CqlException) return false;

    return message == other.message &&
        cause == other.cause &&
        sourceLocator == other.sourceLocator &&
        severity == other.severity;
  }

  @override
  String toString() {
    var result = 'CqlException';
    if (message != null) {
      result += ': $message';
    }
    if (cause != null) {
      result += '\nCaused by: ${cause.toString()}';
    }
    if (sourceLocator != null) {
      result += '\nSource: ${sourceLocator.toString()}';
    }
    return result;
  }
}
