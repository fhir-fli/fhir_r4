import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? refills;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  SubstanceRecommended({
    this.authorDatetime,
    this.reason,
    this.dosage,
    this.supply,
    this.frequency,
    this.method,
    this.refills,
    this.route,
    this.negationRationale,
  });
}
