import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_4.dart';

class QDMBaseType {
  final LiteralCode code;
  final Id id;
  final Id patientId;
  final Id? recorder;
  final Id? reporter;

  QDMBaseType({
    required this.id,
    required this.code,
    required this.patientId,
    this.reporter,
    this.recorder,
  });
}
