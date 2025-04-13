import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that a prescription for the medication indicated by the QDM category and its
/// corresponding value set has been dispensed and provided to the patient or patient
/// proxy. In the ambulatory setting, medications are primarily taken directly by
/// patients and not directly observed. Hence, dispensed is the closest health provider
/// documentation of medication compliance. In settings where patients attest to taking
/// medications in electronic format (perhaps a Personal Health Record), patient
/// attestation of “medication taken” may be available.

class MedicationDispensed {
  final LiteralQuantity? cumulativeMedicationDuration;
  final LiteralQuantity? dose;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationDispensed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
    this.cumulativeMedicationDuration,
  });
}
