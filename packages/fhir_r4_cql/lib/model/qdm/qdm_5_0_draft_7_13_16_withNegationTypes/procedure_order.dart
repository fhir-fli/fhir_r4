import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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
