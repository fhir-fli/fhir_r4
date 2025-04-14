import 'package:cql/engine/types/cql_literal.dart';

class ProcedureBase {
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? ordinality;
  final LiteralCode? reason;

  ProcedureBase({
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.method,
    this.ordinality,
    this.reason,
  });
}
