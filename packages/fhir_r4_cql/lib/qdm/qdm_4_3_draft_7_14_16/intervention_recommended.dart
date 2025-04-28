import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the intervention indicated by the QDM category and its
/// corresponding value set. NOTE: Recommendations address the time that the
/// recommendation occurs, a single point in time. Vendors have expressed concerns that
/// recommendations are not necessarily captured or managed in a standard manner as part
/// of structured data capture in clinical workflow; many are documented as part of
/// assessments in narrative text. Measure developers should address feasibility of
/// clinical workflow to capture recommendations when evaluating measures.

class InterventionRecommended {
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  InterventionRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
  });
}
