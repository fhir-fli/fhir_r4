import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet this criterion address immune-mediated reactions to a
/// substance such as type 1 hypersensitivity reactions, other allergy-like reactions,
/// including pseudo-allergy.
/// Timing: The Prevalence Period references the time from the onset date to the abatement date.
///

class AllergyIntolerance {
  final LiteralDateTimeInterval? prevalencePeriod;
  final LiteralCode? severity;
  final LiteralCode? type;

  AllergyIntolerance({
    this.prevalencePeriod,
    this.type,
    this.severity,
  });
}
