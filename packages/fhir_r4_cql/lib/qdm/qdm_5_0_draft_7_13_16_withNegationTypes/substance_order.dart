import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the substance indicated by the QDM category and its corresponding
/// value set.

class SubstanceOrder {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? refills;

  SubstanceOrder({
    this.authorTime,
    this.method,
    this.refills,
  });
}
