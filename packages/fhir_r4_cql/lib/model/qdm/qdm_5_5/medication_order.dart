import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set.

class MedicationOrder {
  final LiteralDateTime authorDatetime;
  final LiteralInteger? daysSupplied;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final QDMEntity? prescriber;
  final LiteralCode? reason;
  final LiteralInteger? refills;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? route;
  final LiteralCode? setting;
  final LiteralQuantity? supply;

  MedicationOrder({
    required this.authorDatetime,
    this.relevantPeriod,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.daysSupplied,
    this.route,
    this.setting,
    this.reason,
    this.prescriber,
    this.negationRationale,
  });
}
