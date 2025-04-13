import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that a request to perform the functional status assessment indicated by the QDM
/// category and its corresponding value set has been completed. NOTE: startDatetime and
/// stopDatetime have been replaced by authorDatetime corresponding to "author time" of
/// the record in the Quality Reporting Document Architecture (QRDA). This corresponds
/// to when the order was signed.

class FunctionalStatusOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? method;
  final CodeableConcept? reason;

  FunctionalStatusOrder({
    this.authorDatetime,
    this.reason,
    this.method,
  });
}
