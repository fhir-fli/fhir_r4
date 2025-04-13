import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the intervention indicated
/// by the QDM category and its
/// corresponding value set.
/// Timing: The Relevant Period addresses:
/// startTime – The time the intervention begins
/// stopTime – The time the intervention ends
///

class InterventionPerformed {
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  InterventionPerformed({
    this.relevantPeriod,
    this.reason,
    this.result,
    this.status,
    this.negationRationale,
  });
}
