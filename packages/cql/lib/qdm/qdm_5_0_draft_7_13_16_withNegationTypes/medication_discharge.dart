import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medications indicated by the QDM category and its corresponding value set
/// should be taken by or given to the patient after being discharged from an inpatient
/// encounter.

class MedicationDischarge {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;
  final LiteralInteger? refills;

  MedicationDischarge({
    this.authorTime,
    this.refills,
    this.reason,
  });
}
