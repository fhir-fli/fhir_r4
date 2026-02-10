import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set. Timing: The Relevant Period addresses: startTime - the time the procedure
/// begins; stopTime - the time the procedure is completed

class ProcedurePerformed {
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? radiationDosage;
  final LiteralCode? radiationDuration;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  ProcedurePerformed({
    this.relevantPeriod,
    this.result,
    this.status,
    this.radiationDuration,
    this.radiationDosage,
    this.incisionDatetime,
  });
}
