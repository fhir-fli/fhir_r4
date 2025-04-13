import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_7_13_16_withNegationTypes.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the diagnostic study indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – When the
/// diagnostic study is initiated stopTime – when the diagnostic study is completed

class DiagnosticStudyPerformed {
  final Component? component;
  final LiteralCode? facilityLocation;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  DiagnosticStudyPerformed({
    this.relevantPeriod,
    this.result,
    this.status,
    this.facilityLocation,
    this.component,
  });
}
