import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the physical exam indicated by the QDM category and its
/// corresponding value set.

class PhysicalExamRecommended {
  final CodeableConcept? anatomicalLocationSite;
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  PhysicalExamRecommended({
    this.interval,
    this.negationRationale,
    this.reason,
    this.method,
    this.anatomicalLocationSite,
  });
}
