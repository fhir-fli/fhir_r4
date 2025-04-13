import 'package:cql/engine/types/cql_literal.dart';

class Id {
  final LiteralString? namingSystem;
  final LiteralString value;

  Id({
    this.namingSystem,
    required this.value,
  });
}
