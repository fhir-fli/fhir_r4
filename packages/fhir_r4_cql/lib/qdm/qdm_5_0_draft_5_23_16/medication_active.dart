import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medication indicated by the QDM category and its corresponding value set is
/// being taken by the patient. Keep in mind that when this datatype is used with timing
/// relationships, the criterion is looking for a medication being taken for the time
/// frame indicated by the timing relationships. NOTE: "cumulative medication duration"
/// has been removed, the use of CMD(interval) is recommended.

class MedicationActive {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? route;

  MedicationActive({
    this.interval,
    this.dose,
    this.frequency,
    this.route,
  });
}
