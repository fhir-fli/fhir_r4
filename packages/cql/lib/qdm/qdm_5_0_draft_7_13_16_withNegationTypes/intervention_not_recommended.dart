import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the intervention indicated by the QDM category and its corresponding value set
/// was not recommended.

class InterventionNotRecommended {
  final LiteralCode? negationRationale;

  InterventionNotRecommended({
    this.negationRationale,
  });
}
