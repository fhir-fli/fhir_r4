import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the immunization indicated by the QDM category and its corresponding
/// value set.

class ImmunizationOrder {
  final LiteralDateTime? activeDatetime;
  final LiteralCode? negationRationale;

  ImmunizationOrder({
    this.activeDatetime,
    this.negationRationale,
  });
}
