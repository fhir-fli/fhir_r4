import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an
/// unexpected or dangerous reaction to the
/// substance (e.g., food,
/// environmental agent) indicated by the QDM
/// category and its
/// corresponding value set.
///

class SubstanceAdverseEvent {
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  SubstanceAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
