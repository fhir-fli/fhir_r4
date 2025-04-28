import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation regarding the functional status assessment indicated by the QDM
/// category and that its corresponding value set has been completed.

class FunctionalStatusRecommended {
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  FunctionalStatusRecommended({
    this.interval,
    this.negationRationale,
    this.reason,
    this.method,
  });
}
