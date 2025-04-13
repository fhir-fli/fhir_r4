import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the laboratory test indicated by the QDM category and its
/// corresponding value set.

class LaboratoryTestOrder {
  final LiteralCode? negationRationale;

  LaboratoryTestOrder({
    this.negationRationale,
  });
}
