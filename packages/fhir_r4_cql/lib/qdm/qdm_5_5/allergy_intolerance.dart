import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet this criterion address immune-mediated
/// reactions to a substance such as type 1 hypersensitivity reactions, other
/// allergy-like reactions, including pseudo-allergy. Timing: The Prevalence Period
/// references the time from the onset date to the abatement date.

class AllergyIntolerance {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? prevalencePeriod;
  final QDMEntity? recorder;
  final LiteralCode? severity;
  final LiteralCode? type;

  AllergyIntolerance({
    this.authorDatetime,
    this.prevalencePeriod,
    this.type,
    this.severity,
    this.recorder,
  });
}
