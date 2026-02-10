import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an
/// unexpected or dangerous reaction to the
/// procedure indicated by the
/// QDM category and its corresponding value
/// set.
///

class ProcedureAdverseEvent {
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ProcedureAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
