import 'package:cql/engine/types/cql_literal.dart';

class LaboratoryTestBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? reason;

  LaboratoryTestBase({
    this.authorTime,
    this.reason,
    this.method,
  });
}
