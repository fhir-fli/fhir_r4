import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal execution
/// of the procedure indicated by the QDM category and its corresponding value set.

class ProcedureIntolerance {
  final Interval? interval;
  final CodeableConcept? ordinality;
  final CodeableConcept? procedurePerformed;
  final CodeableConcept? reaction;

  ProcedureIntolerance({
    this.interval,
    this.reaction,
    this.ordinality,
    this.procedurePerformed,
  });
}
