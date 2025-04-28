import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the physical exam indicated by the QDM category and its
/// corresponding value set.

class PhysicalExamPerformed {
  final CodeableConcept? anatomicalLocationSite;
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? result;

  PhysicalExamPerformed({
    this.interval,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.anatomicalLocationSite,
  });
}
