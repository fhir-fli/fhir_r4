import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet this criterion indicate various
/// characteristics of the patient. NOTE: The "characteristic" attribute should be used
/// when no other more specific attribute would be accurate.

class Patient {
  final LiteralDateTime? birthDatetime;
  final CodeableConcept? characteristic;
  final CodeableConcept? clinicalTrialParticipantReason;
  final CodeableConcept? ethnicity;
  final CodeableConcept? expiredCause;
  final LiteralDate? expiredDate;
  final LiteralTime? expiredTime;
  final CodeableConcept? payer;
  final CodeableConcept? race;
  final CodeableConcept? sex;

  Patient({
    this.birthDatetime,
    this.characteristic,
    this.clinicalTrialParticipantReason,
    this.ethnicity,
    this.expiredCause,
    this.expiredDate,
    this.expiredTime,
    this.payer,
    this.race,
    this.sex,
  });
}
