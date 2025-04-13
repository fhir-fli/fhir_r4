import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the intervention indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – The time
/// the intervention begins stopTime – The time the intervention ends

class InterventionPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralCode? reason;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  InterventionPerformed({
    this.authorDatetime,
    this.relevantDatetime,
    this.relevantPeriod,
    this.reason,
    this.result,
    this.status,
    this.negationRationale,
    this.performer,
  });
}
