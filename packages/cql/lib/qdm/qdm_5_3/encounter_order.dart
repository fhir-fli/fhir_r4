import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that an order for the encounter indicated by the QDM category and its corresponding
/// value set has been recommended.

class EncounterOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  EncounterOrder({
    this.authorDatetime,
    this.reason,
    this.facilityLocation,
    this.negationRationale,
  });
}
