import 'package:fhir_r4/fhir_r4.dart';

/// Exception thrown when casting a value to a different type.
class FHIRMappingCastException extends FHIRException {
  /// Constructs a new [FHIRMappingCastException].
  FHIRMappingCastException({super.message});

  @override
  String toString() {
    final buffer = StringBuffer();
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

/// Exception thrown when a definition is incorrect
class MappingDefinitionException extends FHIRException {
  /// Constructs a new [DefinitionException].
  MappingDefinitionException({super.message, super.cause, super.stackTrace});

  @override
  String toString() {
    final buffer = StringBuffer();
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

/// Exception thrown when a lexer error occurs.
class FHIRMappingLexerException extends FHIRException {
  /// Constructs a new [FHIRLexerException].
  FHIRMappingLexerException({super.message, super.cause, super.stackTrace});

  @override
  String toString() {
    final buffer = StringBuffer();
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
