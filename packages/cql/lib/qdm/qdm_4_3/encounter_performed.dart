import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been completed. NOTE: This datatype uses admissionDatetime and dischargeDatetime
/// rather than startDatetime and stopDatetime, respectively.

class EncounterPerformed {
  final LiteralDateTime? admissionDatetime;
  final LiteralCode? diagnosis;
  final LiteralDateTime? dischargeDatetime;
  final LiteralCode? dischargeStatus;
  final LiteralCode? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final LiteralQuantity? lengthOfStay;
  final LiteralCode? negationRationale;
  final LiteralCode? principalDiagnosis;
  final LiteralCode? reason;

  EncounterPerformed({
    this.admissionDatetime,
    this.dischargeDatetime,
    this.lengthOfStay,
    this.dischargeStatus,
    this.facilityLocation,
    this.facilityLocationArrivalDatetime,
    this.facilityLocationDepartureDatetime,
    this.reason,
    this.diagnosis,
    this.principalDiagnosis,
    this.negationRationale,
  });
}
