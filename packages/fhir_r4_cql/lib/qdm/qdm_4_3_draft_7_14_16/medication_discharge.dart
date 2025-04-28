import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medications indicated by the QDM category and its corresponding value set
/// should be taken by or given to the patient after being discharged from an inpatient
/// encounter.

class MedicationDischarge {
  final LiteralQuantity? cumulativeMedicationDuration;
  final LiteralQuantity? dose;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationDischarge({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.cumulativeMedicationDuration,
  });
}
