import 'package:cql/engine/types/cql_literal.dart';

class PhysicalExamBase {
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? reason;

  PhysicalExamBase({
    this.anatomicalLocationSite,
    this.method,
    this.reason,
  });
}
