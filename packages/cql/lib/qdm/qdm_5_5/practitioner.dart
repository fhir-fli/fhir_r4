import 'package:cql/engine/types/cql_literal.dart';

/// a person with a formal responsibility in the provisioning of
/// healthcare or related services

class Practitioner {
  final LiteralCode? qualification;
  final LiteralCode? role;
  final LiteralCode? specialty;

  Practitioner({
    this.role,
    this.specialty,
    this.qualification,
  });
}
