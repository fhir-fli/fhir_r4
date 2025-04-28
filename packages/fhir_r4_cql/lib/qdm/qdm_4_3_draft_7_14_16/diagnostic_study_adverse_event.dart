import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the diagnostic study indicated by the QDM
/// category and its corresponding value set.

class DiagnosticStudyAdverseEvent {
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DiagnosticStudyAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
    this.radiationDosage,
    this.radiationDuration,
  });
}
