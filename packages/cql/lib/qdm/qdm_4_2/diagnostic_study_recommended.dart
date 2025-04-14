import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation for a request by a
/// clinician or appropriately
/// licensed care provider to an appropriate
/// provider or organization to
/// perform the diagnostic study indicated by
/// the QDM category and its
/// corresponding value set.
///

class DiagnosticStudyRecommended {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DiagnosticStudyRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
  });
}
