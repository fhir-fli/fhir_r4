import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the functional status assessment indicated by the QDM category and
/// its corresponding value set.

class FunctionalStatusPerformed {
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? reason;
  final CodeableConcept? result;

  FunctionalStatusPerformed({
    this.interval,
    this.reason,
    this.method,
    this.result,
  });
}
