import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the encounter indicated by the QDM
/// category and its
/// corresponding value set has been recommended.
///

class EncounterRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  EncounterRecommended({
    this.authorDatetime,
    this.reason,
    this.facilityLocation,
    this.negationRationale,
  });
}
