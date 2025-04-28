import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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
