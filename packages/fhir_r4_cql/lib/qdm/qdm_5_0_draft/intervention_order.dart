import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to perform the intervention indicated by the QDM category and its
/// corresponding value set. NOTE: startDatetime and stopDatetime have been replaced by
/// authorDatetime corresponding to "author time" of the record in the Quality Reporting
/// Document Architecture (QRDA). This corresponds to when the order was signed.

class InterventionOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;

  InterventionOrder({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
  });
}
