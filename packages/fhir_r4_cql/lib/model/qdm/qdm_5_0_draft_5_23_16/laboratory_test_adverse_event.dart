import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the laboratory test indicated by the QDM
/// category and its corresponding value set.

class LaboratoryTestAdverseEvent {
  final Interval? interval;
  final LaboratoryTestPerformed laboratoryTestPerformed;
  final CodeableConcept? reaction;

  LaboratoryTestAdverseEvent({
    this.interval,
    this.reaction,
    required this.laboratoryTestPerformed,
  });
}
