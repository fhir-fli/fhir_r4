import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set was
/// not performed. Timing: The Relevant Period addresses: startTime – The time the
/// encounter began (admission time) stopTime – The time the encounter ended (discharge
/// time) Timing: The Location Period addresses: startTime – The time the patient
/// arrived at the location (Facility Location Arrival time) stopTime – The time the
/// patient departed the location (Facility Location Departure time)

class EncounterNotPerformed {
  final LiteralCode? negationRationale;

  EncounterNotPerformed({
    this.negationRationale,
  });
}
