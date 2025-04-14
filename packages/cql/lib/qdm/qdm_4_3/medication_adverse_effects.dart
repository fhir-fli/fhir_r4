import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the medication indicated by the QDM category
/// and its corresponding value set.

class MedicationAdverseEffects {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationAdverseEffects({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
