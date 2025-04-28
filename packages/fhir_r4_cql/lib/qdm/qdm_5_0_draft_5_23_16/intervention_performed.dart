import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionPerformed {
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? result;
  final CodeableConcept? status;

  InterventionPerformed({
    this.interval,
    this.reason,
    this.result,
    this.status,
  });
}
