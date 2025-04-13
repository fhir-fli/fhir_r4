import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that an encounter indicated by the QDM category and its corresponding value set is
/// in progress. Keep in mind that when this datatype is used with timing relationships,
/// the criterion is looking for an encounter that was in progress for the time frame
/// indicated by the timing relationships. Timing: The Relevant Period addresses:
/// startTime – The time the encounter began (admission time) stopTime – The time the
/// encounter ended (discharge time) Timing: The Location Period addresses: startTime –
/// The time the patient arrived at the location (Facility Location Arrival time)
/// stopTime – The time the patient departed the location (Facility Location Departure
/// time)

class EncounterActive {
  final LiteralQuantity? lengthOfStay;
  final LiteralDateTimeInterval? locationPeriod;
  final LiteralDateTimeInterval? relevantPeriod;

  EncounterActive({
    this.relevantPeriod,
    this.locationPeriod,
    this.lengthOfStay,
  });
}
