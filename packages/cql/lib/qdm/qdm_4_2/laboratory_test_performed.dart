import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// laboratory test indicated by the QDM
/// category and its corresponding
/// value set was performed.
///

class LaboratoryTestPerformed {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralQuantity? referenceRangeHigh;
  final LiteralQuantity? referenceRangeLow;
  final dynamic result;
  final LiteralDateTime? startDatetime;
  final LiteralConcept? status;
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
