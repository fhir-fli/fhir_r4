import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set. NOTE: The start and stop datetime of Device, Order reflects the “author
/// time” of the record in the Quality Reporting Document Architecture (QRDA). This
/// corresponds to when the order was signed. Thus, the Start Datetime and Stop Datetime
/// refer to the same point in time.

class ProcedureOrder {
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? ordinality;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ProcedureOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
    this.radiationDuration,
  });
}
