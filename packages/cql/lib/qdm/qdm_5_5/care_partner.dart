import 'package:cql/engine/types/cql_literal.dart';

/// a person that is related to the care of a patient, but who is not the
/// direct target of care

class CarePartner {
  final LiteralCode? relationship;

  CarePartner({
    this.relationship,
  });
}
