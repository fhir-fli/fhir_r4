import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal reported
/// or expected reactions of intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionIntolerance {
  final Interval? interval;
  final CodeableConcept? reaction;

  InterventionIntolerance({
    this.interval,
    this.reaction,
  });
}
