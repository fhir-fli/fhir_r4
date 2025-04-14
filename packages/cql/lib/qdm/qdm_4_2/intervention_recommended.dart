import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation for the intervention
/// indicated by the QDM category
/// and its corresponding value set.
///

class InterventionRecommended {
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  InterventionRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
  });
}
