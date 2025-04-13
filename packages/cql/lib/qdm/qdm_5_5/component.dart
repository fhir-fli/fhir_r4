import 'package:cql/engine/types/cql_literal.dart';

/// This attribute type is new to QDM 5.0. It represents a component of a
/// panel or other compound object.

class Component {
  final LiteralCode code;
  final dynamic result;

  Component({
    required this.code,
    this.result,
  });
}
