import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been completed. NOTE: "length of stay" has been removed, the use of length(interval)
/// is recommended.

class EncounterPerformed {
  final LiteralDateTime admissionDatetime;
  final Diagnosis? diagnosis;
  final LiteralDateTime dischargeDatetime;
  final CodeableConcept? dischargeStatus;
  final CodeableConcept? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final Diagnosis? principalDiagnosis;
  final CodeableConcept? reason;

  EncounterPerformed({
    required this.admissionDatetime,
    required this.dischargeDatetime,
    this.dischargeStatus,
    this.facilityLocation,
    this.facilityLocationArrivalDatetime,
    this.facilityLocationDepartureDatetime,
    this.reason,
    this.diagnosis,
    this.principalDiagnosis,
  });
}
