import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceRecommended {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? reason;
  final LiteralInteger? refills;
  final CodeableConcept? route;

  SubstanceRecommended({
    this.interval,
    this.reason,
    this.dose,
    this.frequency,
    this.method,
    this.refills,
    this.route,
  });
}
