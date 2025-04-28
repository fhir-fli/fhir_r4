import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet this criteria using this datatype should
/// document a recommendation for a request by a clinician or appropriately licensed
/// care provider to a patient or an appropriate provider or organization to perform an
/// assessment indicated by the QDM category and its corresponding value set.

class AssessmentRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;

  AssessmentRecommended({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.requester,
  });
}
