import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionRecommended {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  InterventionRecommended({
    this.interval,
    this.negationRationale,
    this.reason,
  });
}
