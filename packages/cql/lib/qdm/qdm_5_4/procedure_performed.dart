import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_4.dart';

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
  final LiteralCode? ordinality;
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
    this.anatomicalLocationSite,
    this.ordinality,
    this.incisionDatetime,
    this.negationRationale,
    this.component,
  });
}
