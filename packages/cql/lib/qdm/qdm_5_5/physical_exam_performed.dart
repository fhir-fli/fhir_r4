import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the physical exam indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – The time
/// the physical examination activity begins stopTime – The time the physical
/// examination activity ends

class PhysicalExamPerformed {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final Component? component;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralCode? reason;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;

  PhysicalExamPerformed({
    this.authorDatetime,
    this.relevantDatetime,
    this.relevantPeriod,
    this.reason,
    this.method,
    this.result,
    this.anatomicalLocationSite,
    this.negationRationale,
    this.component,
    this.performer,
  });
}
