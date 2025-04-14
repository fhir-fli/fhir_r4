import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the physical exam indicated by the QDM category and its corresponding value set
/// was not performed.

class PhysicalExamNotPerformed {
  final LiteralCode? negationRationale;

  PhysicalExamNotPerformed({
    this.negationRationale,
  });
}
