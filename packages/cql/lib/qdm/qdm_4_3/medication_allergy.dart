import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending medication indicated by the QDM category and its
/// corresponding value set.

class MedicationAllergy {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationAllergy({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
