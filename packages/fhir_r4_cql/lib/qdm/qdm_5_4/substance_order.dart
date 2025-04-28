import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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
  final LiteralCode? route;
  final LiteralQuantity? supply;

  SubstanceOrder({
    this.authorDatetime,
    this.reason,
    this.dosage,
    this.supply,
    this.frequency,
    this.refills,
    this.route,
    this.negationRationale,
  });
}
