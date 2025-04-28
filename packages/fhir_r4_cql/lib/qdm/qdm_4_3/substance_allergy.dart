import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceAllergy {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  SubstanceAllergy({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
