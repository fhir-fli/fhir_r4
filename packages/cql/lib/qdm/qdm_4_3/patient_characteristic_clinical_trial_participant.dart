import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the patient is a clinical trial participant for the clinical trial indicated by
/// the QDM category and its corresponding value set.

class PatientCharacteristicClinicalTrialParticipant {
  final LiteralCode? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PatientCharacteristicClinicalTrialParticipant({
    this.startDatetime,
    this.stopDatetime,
    this.reason,
  });
}
