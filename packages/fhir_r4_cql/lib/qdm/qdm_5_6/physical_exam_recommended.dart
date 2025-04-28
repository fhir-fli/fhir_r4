import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the physical exam indicated by the QDM category and its
/// corresponding value set.

class PhysicalExamRecommended {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;

  PhysicalExamRecommended({
    this.authorDatetime,
    this.reason,
    this.anatomicalLocationSite,
    this.negationRationale,
    this.requester,
  });
}
