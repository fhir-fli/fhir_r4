import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// reaction in specific patients representing
/// a low threshold to the
/// normal execution of the procedure indicated by
/// the QDM category and
/// its corresponding value set.
///

class ProcedureIntolerance {
  final LiteralConcept? ordinality;
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ProcedureIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
    this.ordinality,
  });
}
