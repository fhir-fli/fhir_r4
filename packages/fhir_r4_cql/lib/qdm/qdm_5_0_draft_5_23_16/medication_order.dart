import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set. NOTE: startDatetime, stopDatetime, and signedDatetime
/// have been replaced by authorDatetime corresponding to "author time" of the record in
/// the Quality Reporting Document Architecture (QRDA). This corresponds to when the
/// order was signed. NOTE: "cumulative medication duration" has been removed, the use
/// of CMD(interval) is recommended.

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime authorDatetime;
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final CodeableConcept? method;
  final CodeableConcept? reason;
  final LiteralInteger? refills;
  final CodeableConcept? route;

  MedicationOrder({
    required this.activeDatetime,
    required this.authorDatetime,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.method,
    this.reason,
  });
}
