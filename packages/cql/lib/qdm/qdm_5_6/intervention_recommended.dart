import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;

  InterventionRecommended({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
    this.requester,
  });
}
