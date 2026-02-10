import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceAllergy {
  final Interval? interval;
  final CodeableConcept? reaction;

  SubstanceAllergy({
    this.interval,
    this.reaction,
  });
}
