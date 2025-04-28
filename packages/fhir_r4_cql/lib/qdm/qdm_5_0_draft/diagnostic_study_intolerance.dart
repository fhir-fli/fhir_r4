import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients who have a low threshold to the normal reported or
/// expected reactions of the diagnostic study indicated by the QDM category and its
/// corresponding value set.

class DiagnosticStudyIntolerance {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reaction;

  DiagnosticStudyIntolerance({
    this.interval,
    this.negationRationale,
    this.reaction,
    this.radiationDosage,
    this.radiationDuration,
  });
}
