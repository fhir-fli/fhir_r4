import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the physical exam indicated by the QDM category and its
/// corresponding value set.

class PhysicalExamRecommended {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  PhysicalExamRecommended({
    this.authorDatetime,
    this.reason,
    this.method,
    this.anatomicalLocationSite,
    this.negationRationale,
  });
}
