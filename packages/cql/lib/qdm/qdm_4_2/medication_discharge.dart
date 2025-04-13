import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the medications indicated by the QDM
/// category and its
/// corresponding value set should be taken by or given
/// to the patient
/// after being discharged from an inpatient encounter.
///

class MedicationDischarge {
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? negationRationale;
  final LiteralInteger? refills;
  final LiteralConcept? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationDischarge({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
  });
}
