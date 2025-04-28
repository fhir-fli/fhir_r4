import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal
/// pharmacological action of the medication indicated by the QDM category and its
/// corresponding value set.

class MedicationIntolerance {
  final Interval? interval;
  final CodeableConcept? reaction;

  MedicationIntolerance({
    this.interval,
    this.reaction,
  });
}
