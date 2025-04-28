import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request for the laboratory test indicated
/// by the QDM category and
/// its corresponding value set.
/// NOTE: The start
/// and stop datetime of Device, Order reflects the “author time” of the
/// record in the Quality Reporting Document Architecture (QRDA). This
/// corresponds to when the order was signed.
///

class LaboratoryTestOrder {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  LaboratoryTestOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
  });
}
