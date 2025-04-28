import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the intervention indicated by the QDM
/// category and its corresponding value set.

class InterventionAdverseEvent {
  final Interval? interval;
  final CodeableConcept? reaction;

  InterventionAdverseEvent({
    this.interval,
    this.reaction,
  });
}
