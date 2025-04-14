import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the substance indicated by the QDM category and its corresponding value set was
/// ot recommended.

class SubstanceNotRecommended {
  final LiteralDateTime? authorTime;
  final LiteralCode? negationRationale;

  SubstanceNotRecommended({
    this.authorTime,
    this.negationRationale,
  });
}
