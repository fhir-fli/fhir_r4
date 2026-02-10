import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medication indicated by the QDM category and its corresponding value set
/// was not administered to the patient.

class MedicationNotAdministered {
  final LiteralCode? negationRationale;

  MedicationNotAdministered({
    this.negationRationale,
  });
}
