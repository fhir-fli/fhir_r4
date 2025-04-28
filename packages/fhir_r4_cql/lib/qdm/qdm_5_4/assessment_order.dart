import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet these criteria using this datatype should
/// document an order by a clinician or appropriately licensed care provider to a
/// patient or an appropriate provider or organization to perform an assessment
/// indicated by the QDM category and its corresponding value set.

class AssessmentOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  AssessmentOrder({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
  });
}
