import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the intervention indicated by the QDM category and its corresponding value set
/// was not performed. Timing: The Relevant Period addresses: startTime – The time the
/// intervention begins stopTime – The time the intervention ends

class InterventionNotPerformed {
  final LiteralCode? negationRationale;

  InterventionNotPerformed({
    this.negationRationale,
  });
}
