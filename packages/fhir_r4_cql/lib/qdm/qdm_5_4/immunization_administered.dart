import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the vaccine indicated by the QDM category and its corresponding value set was
/// actually administered to the patient.

class ImmunizationAdministered {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? route;

  ImmunizationAdministered({
    this.authorDatetime,
    this.dosage,
    this.reason,
    this.route,
    this.negationRationale,
  });
}
