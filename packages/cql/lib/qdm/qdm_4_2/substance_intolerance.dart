import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// reaction in specific patients representing
/// a low threshold to the
/// normal effects of the substance indicated by
/// the QDM category and
/// its corresponding value set.
///

class SubstanceIntolerance {
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  SubstanceIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
