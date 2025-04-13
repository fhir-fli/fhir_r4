import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet this criterion typically address non-immune
/// adverse reactions that are not determined or perceived to be allergic or
/// "allergy-like," and are to some degree idiosyncratic and/or individually specific
/// [i.e. are not a reaction that is expected to occur with most or all patients given
/// similar circumstances]. Timing: The Prevalence Period references the time from the
/// onset date to the abatement date.

class AdverseEventIntolerance {
  final LiteralDateTimeInterval? prevalencePeriod;
  final LiteralCode? reaction;
  final LiteralCode? substance;

  AdverseEventIntolerance({
    this.prevalencePeriod,
    this.substance,
    this.reaction,
  });
}
