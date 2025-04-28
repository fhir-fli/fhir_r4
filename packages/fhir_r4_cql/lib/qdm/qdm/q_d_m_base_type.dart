import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm.dart';

class QDMBaseType {
  final CodeableConcept code;
  final CodeableConcept? negationRationale;
  final CodeableConcept? patientPreference;
  final CodeableConcept? providerPreference;
  final LiteralDateTime startDatetime;
  final LiteralDateTime? stopDatetime;

  QDMBaseType({
    required this.code,
    required this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.patientPreference,
    this.providerPreference,
  });
}
