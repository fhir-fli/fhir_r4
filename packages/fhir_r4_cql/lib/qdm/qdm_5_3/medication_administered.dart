import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medication indicated by the QDM category and its corresponding value set
/// was actually administered to the patient. Timing: The Relevant Period addresses:
/// startTime - when a single medication administration event starts (e.g., the
/// initiation of an intravenous infusion, or administering a pill or IM injection to a
/// patient); stopTime - when a single medication administration event ends (e.g., the
/// end time of the intravenous infusion, or the administration of a pill or IM
/// injection is completed - for pills and IM injections, the start and stop times are
/// the same)

class MedicationAdministered {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? route;
  final LiteralQuantity? supply;

  MedicationAdministered({
    this.authorDatetime,
    this.relevantPeriod,
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
    this.reason,
    this.negationRationale,
  });
}
