import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that the substance indicated by the QDM category and its corresponding value set was
/// actually given to the patient.

class SubstanceAdministered {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? route;

  SubstanceAdministered({
    this.interval,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
  });
}
