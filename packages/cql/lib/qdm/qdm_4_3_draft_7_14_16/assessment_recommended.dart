import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet this criteria using this datatype should
/// document a recommendation for a request by a clinician or appropriately licensed
/// care provider to a patient or an appropriate provider or organization to perform an
/// assessment indicated by the QDM category and its corresponding value set. NOTE:
/// Recommendations address the time that the recommendation occurs, a single point in
/// time. Vendors have expressed concerns that recommendations are not necessarily
/// captured or managed in a standard manner as part of structured data capture in
/// clinical workflow; many are documented as part of assessments in narrative text.
/// Measure developers should address feasibility of clinical workflow to capture
/// recommendations when evaluating measures.

class AssessmentRecommended {
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  AssessmentRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
  });
}
