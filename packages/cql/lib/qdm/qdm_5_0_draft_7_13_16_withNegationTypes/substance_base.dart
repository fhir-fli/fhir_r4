import 'package:cql/engine/types/cql_literal.dart';

class SubstanceBase {
  final LiteralQuantity? dose;
  final LiteralCode? frequency;
  final LiteralCode? reason;
  final LiteralCode? route;

  SubstanceBase({
    this.dose,
    this.frequency,
    this.route,
    this.reason,
  });
}
