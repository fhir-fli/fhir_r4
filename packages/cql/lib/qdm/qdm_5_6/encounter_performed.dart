import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been completed. Timing: The Relevant Period addresses: startTime – The time the
/// encounter began (admission time) stopTime – The time the encounter ended (discharge
/// time) Timing: The Location Period addresses: startTime – The time the patient
/// arrived at the location (Facility Location Arrival time) stopTime – The time the
/// patient departed the location (Facility Location Departure time)

class EncounterPerformed {
  final LiteralCode admissionSource;
  final LiteralDateTime? authorDatetime;
  final LiteralCode class_;
  final DiagnosisComponent? diagnoses;
  final LiteralCode? dischargeDisposition;
  final FacilityLocation? facilityLocation;
  final LiteralQuantity? lengthOfStay;
  final QDMEntity? participant;
  final LiteralCode? priority;
  final LiteralString? relatedTo;
  final LiteralDateTimeInterval? relevantPeriod;

  EncounterPerformed({
    this.authorDatetime,
    required this.admissionSource,
    required this.class_,
    this.relevantPeriod,
    this.dischargeDisposition,
    this.diagnoses,
    this.facilityLocation,
    this.lengthOfStay,
    this.participant,
    this.priority,
    this.relatedTo,
  });
}
