import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class InterventionBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  InterventionBase({
    this.authorTime,
    this.reason,
  });
}
