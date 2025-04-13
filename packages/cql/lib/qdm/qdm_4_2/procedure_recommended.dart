import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// recommendation for the procedure
/// indicated by the QDM category and
/// its corresponding value set.
///

class ProcedureRecommended {
  final LiteralConcept? anatomicalApproachSite;
  final LiteralConcept? anatomicalLocationSite;
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? ordinality;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ProcedureRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
  });
}
