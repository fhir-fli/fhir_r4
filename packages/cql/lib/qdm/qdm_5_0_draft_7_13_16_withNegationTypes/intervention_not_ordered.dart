import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that a request to perform the intervention indicated by the QDM category and its
/// corresponding value set was not ordered.

class InterventionNotOrdered {
  final LiteralCode? negationRationale;

  InterventionNotOrdered({
    this.negationRationale,
  });
}
