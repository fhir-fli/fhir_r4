import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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
