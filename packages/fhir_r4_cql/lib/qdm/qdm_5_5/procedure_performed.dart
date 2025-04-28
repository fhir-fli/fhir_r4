import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set. Timing: The Relevant Period addresses: startTime - the time the procedure
/// begins; stopTime - the time the procedure is completed

class ProcedurePerformed {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final Component? component;
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralCode? priority;
  final LiteralInteger? rank;
  final LiteralCode? reason;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  ProcedurePerformed({
    this.authorDatetime,
    this.relevantDatetime,
    this.relevantPeriod,
    this.reason,
    this.method,
    this.result,
    this.status,
    this.anatomicalLocationSite,
    this.rank,
    this.incisionDatetime,
    this.negationRationale,
    this.component,
    this.performer,
    this.priority,
  });
}
