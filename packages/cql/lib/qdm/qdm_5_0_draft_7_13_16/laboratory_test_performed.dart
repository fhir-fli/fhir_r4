import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// the laboratory test indicated by the QDM category and its corresponding value set
/// was performed. Timing: The Relevant Period addresses: startTime – When the
/// laboratory test is initiated (i.e., the time the specimen collection begins)
/// stopTime – when the laboratory test is completed (i.e., the time the specimen
/// collection ends) Note – the time that the result report is available is a separate
/// attribute than the time of the study (specimen collection)

class LaboratoryTestPerformed {
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralQuantityInterval? referenceRange;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralDateTime? resultDatetime;
  final LiteralCode? status;

  LaboratoryTestPerformed({
    this.relevantPeriod,
    this.status,
    this.method,
    this.result,
    this.resultDatetime,
    this.reason,
    this.referenceRange,
    this.negationRationale,
  });
}
