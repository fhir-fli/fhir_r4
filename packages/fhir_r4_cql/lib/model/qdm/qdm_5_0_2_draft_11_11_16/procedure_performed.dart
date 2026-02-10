import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the procedure indicated by
/// the QDM category and its
/// corresponding value set.
/// Timing: The Relevant Period addresses:
/// startTime - the time the procedure begins;
/// stopTime - the time the procedure is completed
///

class ProcedurePerformed {
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? ordinality;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  ProcedurePerformed({
    this.authorDatetime,
    this.relevantPeriod,
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
    this.negationRationale,
  });
}
