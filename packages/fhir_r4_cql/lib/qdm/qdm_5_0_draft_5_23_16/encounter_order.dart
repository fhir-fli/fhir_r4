import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that an order for the encounter indicated by the QDM category and its corresponding
/// value set has been recommended. NOTE: startDatetime and stopDatetime have been
/// replaced by authorDatetime corresponding to "author time" of the record in the
/// Quality Reporting Document Architecture (QRDA). This corresponds to when the order
/// was signed.

class EncounterOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? facilityLocation;
  final CodeableConcept? reason;

  EncounterOrder({
    this.authorDatetime,
    this.reason,
    this.facilityLocation,
  });
}
