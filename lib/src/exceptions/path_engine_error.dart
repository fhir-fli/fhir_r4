import 'package:fhir_r4/fhir_r4.dart';

/// An error that occurs during FHIRPath evaluation.
class PathEngineError extends FHIRError {
  /// Constructs a new [PathEngineError].
  PathEngineError(
    String message, {
    this.location,
    this.expression,
    this.id,
    Error? super.cause,
    super.stackTrace,
  }) : super(message: message);

  /// The location in the FHIRPath where the error occurred.
  final SourceLocation? location;

  /// The FHIRPath expression being evaluated when the error occurred.
  final String? expression;

  /// Optional identifier for the error.
  final String? id;

  /// Returns a string representation of the location and expression.
  static String rep(SourceLocation? loc, String? expr) {
    if (loc != null) {
      if (loc.line == 1) {
        return ' (@char ${loc.column})';
      } else {
        return ' (@line ${loc.line}, char ${loc.column})';
      }
    } else if (expr != null && expr.isNotEmpty) {
      return ' (@~$expr)';
    } else {
      return '';
    }
  }

  @override
  String toString() {
    final buffer = StringBuffer('PathEngineError:\n');
    if (message != null) {
      buffer.writeln('Message: $message');
    }
    if (location != null) {
      buffer.writeln('Location: ${rep(location, expression)}');
    }
    if (id != null) {
      buffer.writeln('ID: $id');
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
