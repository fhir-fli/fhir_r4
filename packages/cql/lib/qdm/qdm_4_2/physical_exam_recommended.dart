import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation for the physical exam
/// indicated by the QDM category
/// and its corresponding value set.
///

class PhysicalExamRecommended {
  final LiteralConcept? anatomicalLocationSite;
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PhysicalExamRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.anatomicalLocationSite,
  });
}
