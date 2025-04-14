import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been recommended.

class EncounterRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;

  EncounterRecommended({
    this.authorDatetime,
    this.reason,
    this.facilityLocation,
    this.negationRationale,
    this.requester,
  });
}
