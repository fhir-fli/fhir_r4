import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medication indicated by the QDM category and its corresponding value set is
/// being taken by the patient. Keep in mind that when this datatype is used with timing
/// relationships, the criterion is looking for a medication being taken for the time
/// frame indicated by the timing relationships. Timing: The Relevant Period addresses:
/// startTime - when the medication is first known to be used (generally the time of
/// entry on the medication list); stopTime - when the medication is discontinued
/// (generally the time discontinuation is recorded on the medication list)

class MedicationActive {
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? route;

  MedicationActive({
    this.relevantPeriod,
    this.dosage,
    this.frequency,
    this.route,
  });
}
