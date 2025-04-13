import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients who have a low threshold to the normal reported or
/// expected reactions of the diagnostic study indicated by the QDM category and its
/// corresponding value set.

class DiagnosticStudyIntolerance {
  final Interval? interval;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reaction;

  DiagnosticStudyIntolerance({
    this.interval,
    this.reaction,
    this.radiationDosage,
    this.radiationDuration,
  });
}
