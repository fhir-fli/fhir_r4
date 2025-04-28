import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm.dart';

class LaboratoryTestPerformed {
  final CodeableConcept? method;
  final CodeableConcept? reason;
  final dynamic result;
  final CodeableConcept? resultCode;
  final LiteralQuantity? resultValue;
  final CodeableConcept status;

  LaboratoryTestPerformed({
    required this.status,
    this.method,
    required this.result,
    this.resultCode,
    this.resultValue,
    this.reason,
  });
}
