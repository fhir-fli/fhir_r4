import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// that the vaccine indicated by the QDM category and its corresponding value set was
/// actually administered to the patient.

class ImmunizationAdministered {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralCode? reason;
  final LiteralDateTime? relevantDatetime;
  final LiteralCode? route;

  ImmunizationAdministered({
    this.authorDatetime,
    this.dosage,
    this.reason,
    this.route,
    this.negationRationale,
    this.relevantDatetime,
    this.performer,
  });
}
