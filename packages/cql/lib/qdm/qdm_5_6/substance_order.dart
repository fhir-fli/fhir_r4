import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the substance indicated by the QDM category and its corresponding
/// value set.

class SubstanceOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralInteger? refills;
  final LiteralDateTimeInterval? relevantPeriod;
  final QDMEntity? requester;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  SubstanceOrder({
    this.authorDatetime,
    this.relevantPeriod,
    this.reason,
    this.dosage,
    this.supply,
    this.frequency,
    this.refills,
    this.route,
    this.negationRationale,
    this.requester,
  });
}
