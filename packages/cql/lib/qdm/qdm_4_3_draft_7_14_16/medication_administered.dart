import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medication indicated by the QDM category and its corresponding value set
/// was actually administered to the patient.

class MedicationAdministered {
  final LiteralQuantity? cumulativeMedicationDuration;
  final LiteralQuantity? dose;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationAdministered({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
    this.cumulativeMedicationDuration,
  });
}
