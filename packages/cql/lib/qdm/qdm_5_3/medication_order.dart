import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set.

class MedicationOrder {
  final LiteralDateTime authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralInteger? refills;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  MedicationOrder({
    required this.authorDatetime,
    this.relevantPeriod,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
    this.method,
    this.reason,
    this.negationRationale,
  });
}
