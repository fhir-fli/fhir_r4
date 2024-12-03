// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir_path/java/source_location.dart';

class FhirPathException implements Exception {
  FhirPathException([this.message, this.cause]);

  final String? message;
  final Exception? cause;

  @override
  String toString() {
    if (message == null) return 'FhirPathException';
    return 'FhirPathException: $message';
  }
}

class PathEngineException extends FhirPathException {
  PathEngineException(
    String message, {
    this.location,
    this.expression,
    Exception? cause,
  })  : id = null,
        super(message, cause);

  PathEngineException.withId(
    String message,
    this.id, {
    this.location,
    this.expression,
    Exception? cause,
  }) : super(message, cause);

  final SourceLocation? location;
  final String? expression;
  final String? id;

  static String rep(SourceLocation? loc, String? expr) {
    if (loc != null) {
      if (loc.line == 1) {
        return ' (@char ${loc.column})';
      } else {
        return ' (@line ${loc.line} char ${loc.column})';
      }
    } else if (expr != null && expr.isNotEmpty) {
      return ' (@~$expr)';
    } else {
      return '';
    }
  }

  @override
  String toString() {
    final locString = location != null ? rep(location, expression) : '';
    return 'PathEngineException: ${message ?? ''}$locString';
  }
}
