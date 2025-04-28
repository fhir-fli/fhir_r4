import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// use of tools and calculators (indicated
/// by the QDM category and its
/// corresponding value set) that suggest
/// vulnerabilities for any given
/// patient. This datatype should be used
/// with the QDM Attribute result
/// to specify criteria related to the
/// actual result.
///

class RiskCategoryAssessment {
  final LiteralConcept? negationRationale;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  RiskCategoryAssessment({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.result,
  });
}
