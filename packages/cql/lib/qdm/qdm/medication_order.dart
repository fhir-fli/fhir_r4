import 'package:cql/engine/types/cql_literal.dart';

import 'qdm.dart';

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralQuantity? cumulativeMedicationDuration;
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final CodeableConcept? method;
  final CodeableConcept? reason;
  final LiteralInteger? refills;
  final CodeableConcept? route;
  final LiteralDateTime signedDatetime;

  MedicationOrder({
    required this.activeDatetime,
    required this.signedDatetime,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.method,
    this.reason,
    this.cumulativeMedicationDuration,
  });
}
