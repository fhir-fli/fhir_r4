import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class QDMBaseType {
  final LiteralCode code;
  final LiteralString id;
  final LiteralString patientId;

  QDMBaseType({
    required this.id,
    required this.code,
    required this.patientId,
  });
}
