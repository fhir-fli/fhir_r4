import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that a prescription for the medication indicated by the QDM category and its
/// corresponding value set has been dispensed and provided to the patient or patient
/// proxy. In the ambulatory setting, medications are primarily taken directly by
/// patients and not directly observed. Hence, dispensed is the closest health provider
/// documentation of medication compliance. In settings where patients attest to taking
/// medications in electronic format (perhaps a Personal Health Record), patient
/// attestation of “medication taken” may be available. NOTE: "cumulative medication
/// duration" has been removed, the use of CMD(interval) is recommended.

class MedicationDispensed {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? reason;
  final LiteralInteger? refills;
  final CodeableConcept? route;

  MedicationDispensed({
    this.interval,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
  });
}
