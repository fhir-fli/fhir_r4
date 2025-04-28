import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that a clinician or appropriately licensed care provider did not make a request to
/// an appropriate provider or organization to perform the diagnostic study indicated by
/// the QDM category and its corresponding value set.

class DiagnosticStudyNotOrdered {
  final LiteralCode? negationRationale;

  DiagnosticStudyNotOrdered({
    this.negationRationale,
  });
}
