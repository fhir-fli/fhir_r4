import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet this criterion address immune-mediated
/// reactions to a substance such as type 1 hypersensitivity reactions, other
/// allergy-like reactions, including pseudo-allergy. Timing: The Prevalence Period
/// references the time from the onset date to the abatement date.

class Allergy {
  final LiteralDateTimeInterval? prevalencePeriod;
  final LiteralCode? reaction;
  final LiteralCode? substance;

  Allergy({
    this.prevalencePeriod,
    this.substance,
    this.reaction,
  });
}
