import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the use of tools and calculators (indicated by the QDM category and its
/// corresponding value set) that suggest vulnerabilities for any given patient. This
/// datatype should be used with the QDM Attribute result to specify criteria related to
/// the actual result.

class RiskCategoryAssessment {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? result;

  RiskCategoryAssessment({
    this.interval,
    this.negationRationale,
    this.result,
  });
}
