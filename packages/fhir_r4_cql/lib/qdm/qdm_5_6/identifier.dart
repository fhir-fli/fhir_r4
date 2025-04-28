import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class Identifier {
  final LiteralString? namingSystem;
  final LiteralString value;

  Identifier({
    this.namingSystem,
    required this.value,
  });
}
