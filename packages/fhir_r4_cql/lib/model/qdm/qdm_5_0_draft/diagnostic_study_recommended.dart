import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for a request by a clinician or appropriately licensed care
/// provider to an appropriate provider or organization to perform the diagnostic study
/// indicated by the QDM category and its corresponding value set.

class DiagnosticStudyRecommended {
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reason;

  DiagnosticStudyRecommended({
    this.interval,
    this.negationRationale,
    this.reason,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
  });
}
