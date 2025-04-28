import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medications indicated by the QDM category and its corresponding value set
/// should be taken by or given to the patient after being discharged from an inpatient
/// encounter. NOTE: "cumulative medication duration" has been removed, the use of
/// CMD(interval) is recommended.

class MedicationDischarge {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? reason;
  final LiteralInteger? refills;
  final CodeableConcept? route;

  MedicationDischarge({
    this.interval,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
  });
}
