import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the intervention indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – The time
/// the intervention begins stopTime – The time the intervention ends

class InterventionPerformed {
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  InterventionPerformed({
    this.relevantPeriod,
    this.result,
    this.status,
  });
}
