import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to perform the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;

  InterventionOrder({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
    this.requester,
  });
}
