import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal
/// pharmacological action of the medication indicated by the QDM category and its
/// corresponding value set.

class MedicationIntolerance {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
