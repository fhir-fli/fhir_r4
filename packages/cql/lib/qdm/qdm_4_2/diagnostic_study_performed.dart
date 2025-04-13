import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the diagnostic study
/// indicated by the QDM category and
/// its corresponding value set.
///

class DiagnosticStudyPerformed {
  final LiteralConcept? facilityLocation;
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralConcept? reason;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralConcept? status;
  final LiteralDateTime? stopDatetime;

  DiagnosticStudyPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.result,
    this.status,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
    this.facilityLocation,
  });
}
