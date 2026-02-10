import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the functional status
/// assessment indicated by the QDM
/// category and its corresponding value
/// set.
///

class FunctionalStatusPerformed {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  FunctionalStatusPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
  });
}
