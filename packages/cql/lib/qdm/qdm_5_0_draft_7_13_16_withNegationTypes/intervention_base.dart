import 'package:cql/engine/types/cql_literal.dart';

class InterventionBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  InterventionBase({
    this.authorTime,
    this.reason,
  });
}
