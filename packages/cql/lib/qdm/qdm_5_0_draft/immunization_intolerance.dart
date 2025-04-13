import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal
/// pharmacological action of the vaccine indicated by the QDM category and its
/// corresponding value set.

class ImmunizationIntolerance {
  final Interval? interval;
  final CodeableConcept? reaction;

  ImmunizationIntolerance({
    this.interval,
    this.reaction,
  });
}
