import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class Id {
  final LiteralString? namingSystem;
  final LiteralString value;

  Id({
    this.namingSystem,
    required this.value,
  });
}
