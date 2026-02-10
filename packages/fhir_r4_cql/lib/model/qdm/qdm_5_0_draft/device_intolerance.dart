import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients who have a low threshold to the normal reported or
/// expected reactions of the device indicated by the QDM category and its corresponding
/// value set.

class DeviceIntolerance {
  final Interval? interval;
  final CodeableConcept? reaction;

  DeviceIntolerance({
    this.interval,
    this.reaction,
  });
}
