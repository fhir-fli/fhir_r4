import 'package:cql/engine/types/cql_literal.dart';

class AssessmentBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? reason;

  AssessmentBase({
    this.authorTime,
    this.reason,
    this.method,
  });
}
