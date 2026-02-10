import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for a request by a clinician or appropriately licensed care
/// provider to an appropriate provider or organization to perform the diagnostic study
/// indicated by the QDM category and its corresponding value set. NOTE: Recommendations
/// address the time that the recommendation occurs, a single point in time. Vendors
/// have expressed concerns that recommendations are not necessarily captured or managed
/// in a standard manner as part of structured data capture in clinical workflow; many
/// are documented as part of assessments in narrative text. Measure developers should
/// address feasibility of clinical workflow to capture recommendations when evaluating
/// measures.

class DiagnosticStudyRecommended {
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DiagnosticStudyRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
  });
}
