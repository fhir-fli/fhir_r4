import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// completion of the assessment indicated by the QDM category and its corresponding
/// value set.

class AssessmentPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final dynamic result;

  AssessmentPerformed({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
  });
}
