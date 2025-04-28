import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation to use the device indicated by the QDM category and its
/// corresponding value set.

class DeviceRecommended {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  DeviceRecommended({
    this.interval,
    this.negationRationale,
    this.reason,
  });
}
