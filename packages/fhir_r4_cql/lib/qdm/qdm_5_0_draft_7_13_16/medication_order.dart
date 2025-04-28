import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set.

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  MedicationOrder({
    required this.activeDatetime,
    required this.authorDatetime,
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
