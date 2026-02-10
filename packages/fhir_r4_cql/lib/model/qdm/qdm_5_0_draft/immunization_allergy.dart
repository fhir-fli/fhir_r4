import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending vaccine indicated by the QDM category and its
/// corresponding value set.

class ImmunizationAllergy {
  final Interval? interval;
  final CodeableConcept? reaction;

  ImmunizationAllergy({
    this.interval,
    this.reaction,
  });
}
