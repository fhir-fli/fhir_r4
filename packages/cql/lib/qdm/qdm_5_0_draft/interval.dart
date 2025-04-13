import 'package:cql/engine/types/cql_literal.dart';

/// This attribute type is new to QDM 5.0.

class Interval {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  Interval({
    this.startDatetime,
    this.stopDatetime,
  });
}
