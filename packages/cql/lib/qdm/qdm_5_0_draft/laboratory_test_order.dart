import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the laboratory test indicated by the QDM category and its
/// corresponding value set. NOTE: startDatetime and stopDatetime have been replaced by
/// authorDatetime corresponding to "author time" of the record in the Quality Reporting
/// Document Architecture (QRDA). This corresponds to when the order was signed.

class LaboratoryTestOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  LaboratoryTestOrder({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
  });
}
