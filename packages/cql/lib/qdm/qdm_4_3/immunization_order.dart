import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the immunization indicated by the QDM category and its corresponding
/// value set. NOTE: The start and stop datetime of Device, Order reflects the “author
/// time” of the record in the Quality Reporting Document Architecture (QRDA). This
/// corresponds to when the order was signed. Thus, the Start Datetime and Stop Datetime
/// refer to the same point in time.

class ImmunizationOrder {
  final LiteralDateTime? activeDatetime;
  final LiteralQuantity? dose;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? route;
  final LiteralDateTime? signedDatetime;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ImmunizationOrder({
    this.activeDatetime,
    this.signedDatetime,
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.route,
    this.dose,
  });
}
