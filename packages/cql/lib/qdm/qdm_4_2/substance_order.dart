import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request for the substance indicated by the
/// QDM category and its
/// corresponding value set.
/// NOTE: The start and stop
/// datetime of Device, Order reflects the “author time” of the record
/// in the Quality Reporting Document Architecture (QRDA). This
/// corresponds to when the order was signed.
///

class SubstanceOrder {
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reaction;
  final LiteralConcept? reason;
  final LiteralInteger? refills;
  final LiteralConcept? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  SubstanceOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.reaction,
    this.dose,
    this.frequency,
    this.method,
    this.refills,
    this.route,
  });
}
