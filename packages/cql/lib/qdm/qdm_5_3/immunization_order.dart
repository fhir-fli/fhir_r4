import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the immunization indicated by the QDM category and its corresponding
/// value set.

class ImmunizationOrder {
  final LiteralDateTime? activeDatetime;
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  ImmunizationOrder({
    this.activeDatetime,
    this.authorDatetime,
    this.dosage,
    this.supply,
    this.reason,
    this.route,
    this.negationRationale,
  });
}
