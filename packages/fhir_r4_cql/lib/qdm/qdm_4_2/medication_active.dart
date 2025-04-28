import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the medication indicated by the QDM
/// category and its
/// corresponding value set is being taken by the
/// patient. Keep in mind
/// that when this datatype is used with timing
/// relationships, the
/// criterion is looking for a medication being taken
/// for the time frame
/// indicated by the timing relationships.
///

class MedicationActive {
  final LiteralQuantity? cumulativeMedicationDuration;
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationActive({
    this.startDatetime,
    this.stopDatetime,
    this.dose,
    this.frequency,
    this.route,
    this.cumulativeMedicationDuration,
  });
}
