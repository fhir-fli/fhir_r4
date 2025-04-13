import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that an assessment indicated by the QDM category and its corresponding value set was
/// not performed.

class AssessmentNotPerformed {
  final LiteralCode? negationRationale;

  AssessmentNotPerformed({
    this.negationRationale,
  });
}
