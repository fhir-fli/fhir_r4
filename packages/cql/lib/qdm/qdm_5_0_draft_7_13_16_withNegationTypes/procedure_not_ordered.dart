import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a that the procedure indicated by the QDM category and its corresponding value set
/// was not ordered.

class ProcedureNotOrdered {
  final LiteralDateTime? authorTime;
  final LiteralCode? negationRationale;

  ProcedureNotOrdered({
    this.authorTime,
    this.negationRationale,
  });
}
