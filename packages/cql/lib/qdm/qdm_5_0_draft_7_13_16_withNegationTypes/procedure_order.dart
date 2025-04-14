import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedureOrder {
  final LiteralDateTime? authorTime;
  final LiteralCode? radiationDuration;

  ProcedureOrder({
    this.authorTime,
    this.radiationDuration,
  });
}
