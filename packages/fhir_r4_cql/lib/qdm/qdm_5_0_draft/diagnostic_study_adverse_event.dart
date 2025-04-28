import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the diagnostic study indicated by the QDM
/// category and its corresponding value set.

class DiagnosticStudyAdverseEvent {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reaction;

  DiagnosticStudyAdverseEvent({
    this.interval,
    this.negationRationale,
    this.reaction,
    this.radiationDosage,
    this.radiationDuration,
  });
}
