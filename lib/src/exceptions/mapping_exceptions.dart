import 'package:fhir_r4/fhir_r4.dart';

/// Exception thrown when casting a value to a different type.
class FHIRMappingCastException extends FHIRException {
  /// Constructs a new [FHIRMappingCastException].
  FHIRMappingCastException({super.message});
}

/// Exception thrown when a definition is incorrect
class MappingDefinitionException extends FHIRException {
  /// Constructs a new [DefinitionException].
  MappingDefinitionException({super.message, super.cause, super.stackTrace});
}

/// Exception thrown when a lexer error occurs.
class FHIRMappingLexerException extends FHIRException {
  /// Constructs a new [FHIRLexerException].
  FHIRMappingLexerException({super.message, super.cause, super.stackTrace});
}
