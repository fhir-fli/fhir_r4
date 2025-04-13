import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that an order for the encounter indicated by
/// the QDM category and
/// its corresponding value set has been
/// recommended.
/// NOTE: The start and stop datetime of Device, Order
/// reflects the “author time” of the record in the Quality Reporting
/// Document Architecture (QRDA). This corresponds to when the order was
/// signed.
///

class EncounterOrder {
  final LiteralConcept? facilityLocation;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  EncounterOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.facilityLocation,
  });
}
