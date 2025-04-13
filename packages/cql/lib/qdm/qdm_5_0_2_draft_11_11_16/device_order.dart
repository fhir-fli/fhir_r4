import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an order for the device indicated by the
/// QDM category and its corresponding value set.
///

class DeviceOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  DeviceOrder({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
  });
}
