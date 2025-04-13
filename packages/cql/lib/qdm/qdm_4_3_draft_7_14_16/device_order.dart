import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// an order for the device indicated by the QDM category and its corresponding value
/// set. NOTE: The start and stop datetime of Device, Order reflects the “author time”
/// of the record in the Quality Reporting Document Architecture (QRDA). This
/// corresponds to when the order was signed.

class DeviceOrder {
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DeviceOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
  });
}
