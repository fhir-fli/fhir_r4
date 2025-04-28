import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending device indicated by the QDM category and its
/// corresponding value set.

class DeviceAllergy {
  final Interval? interval;
  final CodeableConcept? reaction;

  DeviceAllergy({
    this.interval,
    this.reaction,
  });
}
