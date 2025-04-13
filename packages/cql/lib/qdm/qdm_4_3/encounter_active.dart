import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that an encounter indicated by the QDM category and its corresponding value set is
/// in progress. Keep in mind that when this datatype is used with timing relationships,
/// the criterion is looking for an encounter that was in progress for the time frame
/// indicated by the timing relationships. NOTE: This datatype uses admissionDatetime
/// and dischargeDatetime rather than startDatetime and stopDatetime, respectively.

class EncounterActive {
  final LiteralDateTime? admissionDatetime;
  final LiteralDateTime? dischargeDatetime;
  final LiteralCode? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final LiteralQuantity? lengthOfStay;
  final LiteralCode? reason;

  EncounterActive({
    this.admissionDatetime,
    this.dischargeDatetime,
    this.lengthOfStay,
    this.reason,
    this.facilityLocation,
    this.facilityLocationArrivalDatetime,
    this.facilityLocationDepartureDatetime,
  });
}
