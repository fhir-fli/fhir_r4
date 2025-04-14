import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that an encounter indicated by the QDM category and its corresponding value set is
/// in progress. Keep in mind that when this datatype is used with timing relationships,
/// the criterion is looking for an encounter that was in progress for the time frame
/// indicated by the timing relationships. NOTE: "length of stay" has been removed, the
/// use of length(interval) is recommended.

class EncounterActive {
  final LiteralDateTime? admissionDatetime;
  final LiteralDateTime? dischargeDatetime;
  final CodeableConcept? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final CodeableConcept? reason;

  EncounterActive({
    this.admissionDatetime,
    this.dischargeDatetime,
    this.reason,
    this.facilityLocation,
    this.facilityLocationArrivalDatetime,
    this.facilityLocationDepartureDatetime,
  });
}
