import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the laboratory test indicated by the QDM category and its
/// corresponding value set.

class LaboratoryTestOrder {
  final LiteralCode? negationRationale;

  LaboratoryTestOrder({
    this.negationRationale,
  });
}
