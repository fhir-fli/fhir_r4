import 'package:cql/engine/types/cql_literal.dart';

class Identifier {
  final LiteralString? namingSystem;
  final LiteralString value;

  Identifier({
    this.namingSystem,
    required this.value,
  });
}
