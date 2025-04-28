import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// the laboratory test indicated by the QDM category and its corresponding value set
/// was performed.

class LaboratoryTestPerformed {
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralQuantity? referenceRangeHigh;
  final LiteralQuantity? referenceRangeLow;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralCode? status;
  final LiteralDateTime? stopDatetime;

  LaboratoryTestPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.status,
    this.method,
    this.result,
    this.reason,
    this.referenceRangeHigh,
    this.referenceRangeLow,
  });
}
