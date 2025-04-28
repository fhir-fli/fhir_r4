import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document that the encounter indicated by the QDM
/// category and its corresponding value set has been completed.
/// Timing: The Relevant Period addresses:
/// startTime – The time the encounter began (admission time)
/// stopTime – The time the encounter ended (discharge time)
/// Timing: The Location Period addresses:
/// startTime – The time the patient arrived at the location (Facility Location Arrival time)
/// stopTime – The time the patient departed the location (Facility Location Departure time)
///

class EncounterPerformed {
  final LiteralCode admissionSource;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? diagnosis;
  final LiteralCode? dischargeDisposition;
  final LiteralCode? facilityLocation;
  final LiteralQuantity? lengthOfStay;
  final LiteralDateTimeInterval? locationPeriod;
  final LiteralCode? negationRationale;
  final LiteralCode? principalDiagnosis;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;

  EncounterPerformed({
    this.authorDatetime,
    required this.admissionSource,
    this.relevantPeriod,
    this.dischargeDisposition,
    this.facilityLocation,
    this.locationPeriod,
    this.reason,
    this.diagnosis,
    this.principalDiagnosis,
    this.negationRationale,
    this.lengthOfStay,
  });
}
