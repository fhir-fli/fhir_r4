import 'package:antlr4/antlr4.dart';
import 'package:antlr4/src/util/bit_set.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class ElmErrorListener implements ErrorListener {
  final List<ErrorAnnotation> errors = [];

  @override
  void reportAmbiguity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    bool exact,
    BitSet? ambigAlts,
    ATNConfigSet configs,
  ) {
    // // Extract information about the conflicting alternatives
    // String conflictingAlts = ambigAlts?.toString() ?? "Unknown Alternatives";

    // // Create a more informative error message
    // String errorMessage =
    //     "Ambiguity detected at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAlts\n"
    //     "Exact: $exact";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'Ambiguity',
    //     errorSeverity: 'Error'));
  }

  @override
  void reportAttemptingFullContext(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    BitSet? conflictingAlts,
    ATNConfigSet configs,
  ) {
    // // Extract information about the conflicting alternatives
    // String conflictingAltsStr =
    //     conflictingAlts?.toString() ?? "Unknown Alternatives";

    // // Create a more informative error message
    // String errorMessage =
    //     "Attempting full context at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAltsStr";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'AttemptingFullContext',
    //     errorSeverity: 'Error'));
  }

  @override
  void reportContextSensitivity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    int prediction,
    ATNConfigSet configs,
  ) {
    // // Extract information about the rule names and conflicting alternatives
    // String ruleNames = recognizer.ruleNames[prediction];
    // String conflictingAlts =
    //     configs.toString(); // This might contain the conflicting alternatives

    // // Create a more informative error message
    // String errorMessage = "Context sensitivity detected in rule '$ruleNames' "
    //     "at Line $startIndex to $stopIndex\n"
    //     "Conflicting alternatives: $conflictingAlts";

    // errors.add(ErrorAnnotation(
    //     startLine: startIndex,
    //     endLine: stopIndex,
    //     message: errorMessage,
    //     errorType: 'ContextSensitivity',
    //     errorSeverity: 'Error'));
  }

  @override
  void syntaxError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    errors.add(ErrorAnnotation(
        startLine: line,
        startChar: charPositionInLine,
        endLine: line,
        endChar: charPositionInLine + 1,
        message: msg,
        errorType: 'SyntaxError',
        errorSeverity: 'Error'));
  }

  void semanticError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    errors.add(ErrorAnnotation(
        startLine: line,
        startChar: charPositionInLine,
        endLine: line,
        endChar: charPositionInLine + 1,
        message: msg,
        errorType: 'SemanticError',
        errorSeverity: 'Error'));
  }
}
