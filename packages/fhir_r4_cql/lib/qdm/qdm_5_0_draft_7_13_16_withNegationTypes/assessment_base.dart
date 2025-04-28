import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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
