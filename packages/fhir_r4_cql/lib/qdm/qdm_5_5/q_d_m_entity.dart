import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

class QDMEntity {
  final LiteralString? id;
  final Identifier? identifier;

  QDMEntity({
    this.id,
    this.identifier,
  });
}
