import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request to a pharmacy to provide the
/// medication indicated by the QDM
/// category and its corresponding value
/// set.
/// NOTE: The start and stop datetime of Device, Order reflects the
/// “author time” of the record in the Quality Reporting Document
/// Architecture (QRDA). This corresponds to when the order was signed.
///

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralQuantity? cumulativeMedicationDuration;
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralInteger? refills;
  final LiteralConcept? route;
  final LiteralDateTime signedDatetime;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationOrder({
    required this.activeDatetime,
    required this.signedDatetime,
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.method,
    this.reason,
    this.cumulativeMedicationDuration,
  });
}
