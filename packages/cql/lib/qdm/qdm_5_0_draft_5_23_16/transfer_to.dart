import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the setting, indicated by the QDM category and its corresponding value set, to which
/// a patient is released (e.g., home, acute care hospital, skilled nursing) from the
/// current location.

class TransferTo {
  final Interval? interval;
  final CodeableConcept? reason;

  TransferTo({
    this.interval,
    this.reason,
  });
}
