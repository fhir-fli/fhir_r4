import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the functional status assessment indicated by the QDM category and
/// its corresponding value set.

class FunctionalStatusPerformed {
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? result;

  FunctionalStatusPerformed({
    this.interval,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
  });
}
