import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must not have been
/// performed from a provider to a patient.

class CommunicationFromProviderToPatientNotPerformed {
  final LiteralCode? negationRationale;

  CommunicationFromProviderToPatientNotPerformed({
    this.negationRationale,
  });
}
