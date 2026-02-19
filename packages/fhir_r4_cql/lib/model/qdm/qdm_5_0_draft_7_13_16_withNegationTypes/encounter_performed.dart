import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_7_13_16_withNegationTypes.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been completed. Timing: The Relevant Period addresses: startTime – The time the
/// encounter began (admission time) stopTime – The time the encounter ended (discharge
/// time) Timing: The Location Period addresses: startTime – The time the patient
/// arrived at the location (Facility Location Arrival time) stopTime – The time the
/// patient departed the location (Facility Location Departure time)

class EncounterPerformed {
  final LiteralDateTime admissionDatetime;
  final LiteralCode admissionSource;
  final Diagnosis? diagnosis;
  final LiteralDateTime dischargeDatetime;
  final LiteralCode? dischargeStatus;
  final LiteralQuantity? lengthOfStay;
  final LiteralDateTimeInterval? locationPeriod;
  final Diagnosis? principalDiagnosis;

  EncounterPerformed({
    required this.admissionSource,
    required this.admissionDatetime,
    required this.dischargeDatetime,
    this.dischargeStatus,
    this.locationPeriod,
    this.diagnosis,
    this.principalDiagnosis,
    this.lengthOfStay,
  });
}
