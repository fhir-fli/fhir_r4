import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedureOrder {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? priority;
  final LiteralInteger? rank;
  final LiteralCode? reason;
  final QDMEntity? requester;

  ProcedureOrder({
    this.authorDatetime,
    this.reason,
    this.anatomicalLocationSite,
    this.rank,
    this.negationRationale,
    this.requester,
    this.priority,
  });
}
