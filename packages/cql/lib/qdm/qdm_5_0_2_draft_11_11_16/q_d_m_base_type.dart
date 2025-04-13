import 'package:cql/engine/types/cql_literal.dart';

class QDMBaseType {
  final LiteralCode code;
  final LiteralCode id;
  final LiteralCode patientId;
  final LiteralCode? recorder;
  final LiteralCode? reporter;

  QDMBaseType({
    required this.id,
    required this.code,
    required this.patientId,
    this.reporter,
    this.recorder,
  });
}
