import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request for the laboratory test indicated
/// by the QDM category and
/// its corresponding value set.
///

class LaboratoryTestOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  LaboratoryTestOrder({
    this.authorDatetime,
    this.reason,
    this.method,
    this.negationRationale,
  });
}
