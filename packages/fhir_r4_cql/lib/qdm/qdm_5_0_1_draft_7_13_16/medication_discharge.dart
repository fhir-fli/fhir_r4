import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the medications indicated by the QDM
/// category and its
/// corresponding value set should be taken by or given
/// to the patient
/// after being discharged from an inpatient encounter.
///

class MedicationDischarge {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  MedicationDischarge({
    this.authorDatetime,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
    this.negationRationale,
  });
}
