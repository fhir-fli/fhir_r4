import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the intervention indicated
/// by the QDM category and its
/// corresponding value set.
///

class InterventionPerformed {
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralConcept? status;
  final LiteralDateTime? stopDatetime;

  InterventionPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.result,
    this.status,
  });
}
