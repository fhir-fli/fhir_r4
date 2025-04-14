import 'qdm_5_0_draft.dart';

/// Unlike other QDM datatypes, the Care Goal datatype does not indicate
/// a specific context of use. Instead, to meet this criterion, there must be
/// documentation of a care goal as defined by the Care Goal QDM category and its
/// corresponding value set.

class CareGoal {
  final Interval? interval;
  final CodeableConcept? relatedTo;
  final CodeableConcept? targetOutcome;

  CareGoal({
    this.interval,
    this.relatedTo,
    this.targetOutcome,
  });
}
