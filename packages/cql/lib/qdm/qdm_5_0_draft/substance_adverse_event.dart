import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the substance (e.g., food, environmental
/// agent) indicated by the QDM category and its corresponding value set.

class SubstanceAdverseEvent {
  final Interval? interval;
  final CodeableConcept? reaction;

  SubstanceAdverseEvent({
    this.interval,
    this.reaction,
  });
}
