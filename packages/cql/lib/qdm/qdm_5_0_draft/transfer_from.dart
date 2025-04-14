import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the setting, indicated by the QDM category and its corresponding value set, from
/// which a patient is received (e.g., home, acute care hospital, skilled nursing) to
/// the current location.

class TransferFrom {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  TransferFrom({
    this.interval,
    this.negationRationale,
    this.reason,
  });
}
