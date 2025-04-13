import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation to use the device indicated by the QDM category and its
/// corresponding value set.

class DeviceRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  DeviceRecommended({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
  });
}
