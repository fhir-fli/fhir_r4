import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medication indicated by the QDM category and its corresponding value set
/// was actually administered to the patient. NOTE: "cumulative medication duration" has
/// been removed, the use of CMD(interval) is recommended.

class MedicationAdministered {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? route;

  MedicationAdministered({
    this.interval,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
  });
}
