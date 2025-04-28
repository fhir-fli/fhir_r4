import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation for the laboratory test
/// indicated by the QDM category
/// and its corresponding value set.
///

class LaboratoryTestRecommended {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  LaboratoryTestRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.method,
    this.reason,
  });
}
