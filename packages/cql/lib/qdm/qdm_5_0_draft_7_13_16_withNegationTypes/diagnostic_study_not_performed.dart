import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the diagnostic study indicated by the QDM category and its corresponding value
/// set was not performed. Timing: The Relevant Period addresses: startTime – When the
/// diagnostic study is initiated stopTime – when the diagnostic study is completed

class DiagnosticStudyNotPerformed {
  final LiteralCode? negationRationale;

  DiagnosticStudyNotPerformed({
    this.negationRationale,
  });
}
