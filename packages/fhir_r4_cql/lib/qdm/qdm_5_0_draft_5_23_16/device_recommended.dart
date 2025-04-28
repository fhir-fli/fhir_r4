import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation to use the device indicated by the QDM category and its
/// corresponding value set.

class DeviceRecommended {
  final Interval? interval;
  final CodeableConcept? reason;

  DeviceRecommended({
    this.interval,
    this.reason,
  });
}
