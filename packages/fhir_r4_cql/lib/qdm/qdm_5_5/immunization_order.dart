import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the immunization indicated by the QDM category and its corresponding
/// value set.

class ImmunizationOrder {
  final LiteralDateTime? activeDatetime;
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;
  final LiteralCode? route;

  ImmunizationOrder({
    this.activeDatetime,
    this.authorDatetime,
    this.dosage,
    this.reason,
    this.route,
    this.negationRationale,
    this.requester,
  });
}
