import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedurePerformed {
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? ordinality;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralCode? status;
  final LiteralDateTime? stopDatetime;

  ProcedurePerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.status,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
    this.radiationDuration,
    this.radiationDosage,
    this.incisionDatetime,
  });
}
