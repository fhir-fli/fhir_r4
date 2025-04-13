import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the laboratory test indicated by the QDM category and its corresponding value
/// set was not recommended.

class LaboratoryTestNotRecommended {
  final LiteralCode? negationRationale;

  LaboratoryTestNotRecommended({
    this.negationRationale,
  });
}
