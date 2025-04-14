import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// the symptom and its corresponding value set. The onset datetime corresponds to the
/// implicit start datetime of the datatype and the abatement datetime corresponds to
/// the implicit stop datetime of the datatype. If the abatement datetime is null, then
/// the symptom is considered to still be active. When this datatype is used with timing
/// relationships, the criterion is looking for whether the symptom was active for the
/// time frame indicated by the timing relationships. Timing: The Prevalence Period
/// references the time from the onset date to the abatement date

class Symptom {
  final LiteralDateTimeInterval? prevalencePeriod;
  final LiteralCode? severity;

  Symptom({
    this.prevalencePeriod,
    this.severity,
  });
}
