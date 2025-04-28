import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet this criteria using this datatype should
/// document that a request by a clinician or appropriately licensed care provider to a
/// patient or an appropriate provider or organization to perform an assessment
/// indicated by the QDM category and its corresponding value set was not recommended.

class AssessmentNotRecommended {
  final LiteralCode? negationRationale;

  AssessmentNotRecommended({
    this.negationRationale,
  });
}
