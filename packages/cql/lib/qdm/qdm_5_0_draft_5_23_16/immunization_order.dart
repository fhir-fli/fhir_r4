import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the immunization indicated by the QDM category and its corresponding
/// value set. NOTE: startDatetime, stopDatetime, and signedDatetime have been replaced
/// by authorDatetime corresponding to "author time" of the record in the Quality
/// Reporting Document Architecture (QRDA). This corresponds to when the order was
/// signed.

class ImmunizationOrder {
  final LiteralDateTime? activeDatetime;
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dose;
  final CodeableConcept? reason;
  final CodeableConcept? route;

  ImmunizationOrder({
    this.activeDatetime,
    this.authorDatetime,
    this.reason,
    this.route,
    this.dose,
  });
}
