import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the procedure indicated by the QDM category
/// and its corresponding value set.

class ProcedureAdverseEvent {
  final Interval? interval;
  final CodeableConcept? procedurePerformed;
  final CodeableConcept? reaction;

  ProcedureAdverseEvent({
    this.interval,
    this.reaction,
    this.procedurePerformed,
  });
}
