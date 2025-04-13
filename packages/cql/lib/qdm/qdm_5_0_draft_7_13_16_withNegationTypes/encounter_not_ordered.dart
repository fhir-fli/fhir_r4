import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that an encounter indicated by the QDM category and its corresponding value set was
/// not ordered.

class EncounterNotOrdered {
  final LiteralCode? negationRationale;

  EncounterNotOrdered({
    this.negationRationale,
  });
}
