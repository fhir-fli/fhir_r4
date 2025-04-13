import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the physical exam indicated by the QDM category and its
/// corresponding value set.

class PhysicalExamPerformed {
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PhysicalExamPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.anatomicalLocationSite,
  });
}
