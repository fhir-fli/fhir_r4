import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending vaccine indicated by the QDM category and its
/// corresponding value set.

class ImmunizationAllergy {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ImmunizationAllergy({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
