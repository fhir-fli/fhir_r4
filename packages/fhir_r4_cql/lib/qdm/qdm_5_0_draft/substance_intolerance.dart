import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal effects
/// of the substance indicated by the QDM category and its corresponding value set.

class SubstanceIntolerance {
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? reaction;

  SubstanceIntolerance({
    this.interval,
    this.reaction,
    this.frequency,
  });
}
