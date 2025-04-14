import 'package:cql/engine/types/cql_literal.dart';

class EncounterBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? facilityLocation;
  final LiteralCode? reason;

  EncounterBase({
    this.authorTime,
    this.reason,
    this.facilityLocation,
  });
}
