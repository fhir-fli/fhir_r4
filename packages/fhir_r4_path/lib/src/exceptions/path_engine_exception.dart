import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// An exception that occurs during FHIRPath evaluation.
class PathEngineException extends FHIRException {
  /// Constructs a new [PathEngineException].
  PathEngineException(
    String message, {
    this.location,
    this.expression,
    this.id,
    Exception? cause,
    super.stackTrace,
  }) : super(message: message, cause: cause);

  /// The location in the FHIRPath where the exception occurred.
  final SourceLocation? location;

  /// The FHIRPath expression being evaluated when the exception occurred.
  final String? expression;

  /// Optional identifier for the exception.
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
    final buffer = StringBuffer('PathEngineException:\n');
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

/// Something went wrong while parsing or executing a FHIRPath expression.
class FhirPathException extends PathEngineException {
  /// Constructs a new [FhirPathException].
  FhirPathException(
    super.message, {
    this.pathExpression,
    this.offset,
    this.token,
    Object? cause,
    this.operation,
    this.arguments,
    this.collection,
    this.context,
    this.environment,
    super.location,
  }) : super(
          expression: pathExpression,
          cause: cause is Exception ? cause : null,
        );

  /// Optional offset in the expression where the issue occurred
  final int? offset;

  /// Which token was causing the issue
  final Object? token;

  /// Which expression is having the issue
  final String? pathExpression;

  /// Which function or operator was causing the issue
  final String? operation;

  /// The arguments to a function or operator at the time of the issue
  final dynamic arguments;

  /// The intermediate results collection at the time of the issue
  final List<dynamic>? collection;

  /// The original node that was passed to the evaluation engine before
  /// starting evaluation
  final Object? context;

  /// Environment which was present
  final Map<dynamic, dynamic>? environment;

  /// Creates a new [FhirPathException] with the given parameters.
  FhirPathException copyWith({
    Object? context,
    Map<dynamic, dynamic>? variables,
  }) {
    return FhirPathException(
      message ?? message!,
      pathExpression: pathExpression,
      offset: offset,
      token: token,
      cause: cause,
      operation: operation,
      arguments: arguments,
      collection: collection,
      context: context ?? this.context,
      environment: variables ?? environment,
    );
  }

  @override
  String toString() {
    return _toString(false);
  }

  /// Returns a short string representation of the exception.
  String toShortString() {
    return _toString(true);
  }

  String _toString(bool short) {
    final result = StringBuffer()
      ..writeln(message)
      ..writeln('[');

    if (pathExpression != null) {
      result.writeln('Expression: $pathExpression');
    }

    if (offset != null) {
      result.writeln('Offset: $offset');
    }
    if (token != null) {
      result.writeln('Token: $token');
    }
    if (cause != null) {
      result.writeln('Cause: $cause');
    }

    if (operation != null) {
      result.writeln('Operation: $operation');
    }

    if (arguments != null) {
      if (arguments is List<dynamic>) {
        result.writeln(
          'Arguments (length: ${(arguments as List<dynamic>).length}): '
          '$arguments',
        );
      } else {
        result.writeln('Argument value: $arguments');
      }
    }

    if (collection != null) {
      result.writeln('Collection (length: ${collection?.length}): $collection');
    }

    if (!short && context != null) {
      result.writeln('Context: $context');
    }
    if (!short && environment != null) {
      result.writeln('Environment: $environment');
    }
    result.write(']');

    return result.toString();
  }
}

/// The overall syntax of the expression is incorrect.
class FhirPathInvalidExpressionException extends FhirPathException {
  /// Constructs a new [FhirPathInvalidExpressionException].
  FhirPathInvalidExpressionException(
    super.message, {
    super.pathExpression,
    super.offset,
    String? super.token,
    super.cause,
    super.location,
  });
}

/// The FHIRPath expression is using elements that have been deprecated.
class FhirPathDeprecatedExpressionException extends FhirPathException {
  /// Constructs a new [FhirPathDeprecatedExpressionException].
  FhirPathDeprecatedExpressionException(
    super.message, {
    super.pathExpression,
    super.offset,
    String? super.token,
    super.cause,
    super.location,
  });
}

/// The evaluation of the expression failed with the given parameters.
class FhirPathEvaluationException extends FhirPathException {
  /// Constructs a new [FhirPathEvaluationException].
  FhirPathEvaluationException(
    super.message, {
    super.pathExpression,
    super.cause,
    super.operation,
    super.arguments,
    super.collection,
    Map<dynamic, dynamic>? variables,
    super.location,
  }) : super(
          environment: variables,
        );
}
