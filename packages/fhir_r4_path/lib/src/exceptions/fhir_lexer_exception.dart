import 'package:fhir_r4_path/fhir_r4_path.dart';

/// Represents an error that occurred during the lexing phase of
/// FHIRPath parsing.
class FHIRLexerException implements Exception {
  /// Constructor for [FHIRLexerException] with optional [message]
  /// and [location].
  FHIRLexerException({this.message, required this.location});

  /// The exception message.
  final String? message;

  /// The location in the source where the error occurred.
  SourceLocation location;

//    public FHIRLexerException() {
//      super();
//    }
//
//    public FHIRLexerException(String message, Throwable cause) {
//      super(message, cause);
//    }
//
//    public FHIRLexerException(String message) {
//      super(message);
//    }
//
//    public FHIRLexerException(Throwable cause) {
//      super(cause);
//    }

  @override
  String toString() => 'FHIRLexerException: $message';
}
