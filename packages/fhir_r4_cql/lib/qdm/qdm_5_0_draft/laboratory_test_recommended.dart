import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the laboratory test indicated by the QDM category and its
/// corresponding value set.

class LaboratoryTestRecommended {
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  LaboratoryTestRecommended({
    this.interval,
    this.negationRationale,
    this.method,
    this.reason,
  });
}
