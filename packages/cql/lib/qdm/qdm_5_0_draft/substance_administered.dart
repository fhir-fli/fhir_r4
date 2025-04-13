import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// that the substance indicated by the QDM category and its corresponding value set was
/// actually given to the patient.

class SubstanceAdministered {
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? route;

  SubstanceAdministered({
    this.interval,
    this.negationRationale,
    this.dose,
    this.frequency,
    this.route,
    this.reason,
  });
}
