import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the laboratory test indicated by the QDM
/// category and its corresponding value set.

class LaboratoryTestAdverseEvent {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  LaboratoryTestAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
