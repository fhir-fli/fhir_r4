import 'package:cql/engine/types/cql_literal.dart';

/// Unlike other QDM datatypes, the Care Goal datatype does not indicate
/// a specific context of use. Instead, to meet this criterion, there must be
/// documentation of a care goal as defined by the Care Goal QDM category and its
/// corresponding value set.

class CareGoal {
  final LiteralCode? relatedTo;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? targetOutcome;

  CareGoal({
    this.startDatetime,
    this.stopDatetime,
    this.relatedTo,
    this.targetOutcome,
  });
}
