import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedureOrder {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? ordinality;
  final LiteralCode? reason;

  ProcedureOrder({
    this.authorDatetime,
    this.reason,
    this.anatomicalLocationSite,
    this.ordinality,
    this.negationRationale,
  });
}
