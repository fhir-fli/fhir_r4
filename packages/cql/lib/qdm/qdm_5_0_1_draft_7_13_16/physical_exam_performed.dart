import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the physical exam
/// indicated by the QDM category and
/// its corresponding value set.
/// Timing: The Relevant Period addresses:
/// startTime – The time the physical examination activity begins
/// stopTime – The time the physical examination activity ends
///

class PhysicalExamPerformed {
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;

  PhysicalExamPerformed({
    this.relevantPeriod,
    this.reason,
    this.method,
    this.result,
    this.anatomicalLocationSite,
    this.negationRationale,
  });
}
