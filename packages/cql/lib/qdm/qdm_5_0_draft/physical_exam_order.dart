import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the physical exam indicated by the QDM category and its corresponding
/// value set. The datatype is expected to be used to identify orders such as "vital
/// signs, frequency every x hours,” or "pedal pulse check, frequency every 15 minutes
/// for x hours." NOTE: startDatetime and stopDatetime have been replaced by
/// authorDatetime corresponding to "author time" of the record in the Quality Reporting
/// Document Architecture (QRDA). This corresponds to when the order was signed.

class PhysicalExamOrder {
  final CodeableConcept? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  PhysicalExamOrder({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.anatomicalLocationSite,
  });
}
