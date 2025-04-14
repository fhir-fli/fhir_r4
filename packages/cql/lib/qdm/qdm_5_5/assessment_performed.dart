import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// completion of the assessment indicated by the QDM category and its corresponding
/// value set.

class AssessmentPerformed {
  final LiteralDateTime? authorDatetime;
  final Component? component;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralCode? reason;
  final LiteralString? relatedTo;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;

  AssessmentPerformed({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.component,
    this.relatedTo,
    this.performer,
    this.relevantDatetime,
    this.relevantPeriod,
  });
}
