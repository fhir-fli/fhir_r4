import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// that the vaccine indicated by the QDM category and its corresponding value set was
/// actually administered to the patient.

class ImmunizationAdministered {
  final LiteralQuantity? dose;
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? route;

  ImmunizationAdministered({
    this.interval,
    this.negationRationale,
    this.reason,
    this.route,
    this.dose,
  });
}
