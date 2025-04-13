import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionPerformed {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? result;
  final CodeableConcept? status;

  InterventionPerformed({
    this.interval,
    this.negationRationale,
    this.reason,
    this.result,
    this.status,
  });
}
