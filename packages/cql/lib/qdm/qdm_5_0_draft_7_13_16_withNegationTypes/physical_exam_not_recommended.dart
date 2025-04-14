import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the physical exam indicated by the QDM category and its corresponding value set
/// was not recommended.

class PhysicalExamNotRecommended {
  final LiteralDateTime? authorTime;
  final LiteralCode? negationRationale;

  PhysicalExamNotRecommended({
    this.authorTime,
    this.negationRationale,
  });
}
