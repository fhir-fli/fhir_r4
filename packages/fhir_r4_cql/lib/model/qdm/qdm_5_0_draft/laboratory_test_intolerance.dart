import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal reported
/// or expected reactions of the laboratory test indicated by the QDM category and its
/// corresponding value set.

class LaboratoryTestIntolerance {
  final Interval? interval;
  final LaboratoryTestPerformed laboratoryTestPerformed;
  final CodeableConcept? reaction;

  LaboratoryTestIntolerance({
    this.interval,
    this.reaction,
    required this.laboratoryTestPerformed,
  });
}
