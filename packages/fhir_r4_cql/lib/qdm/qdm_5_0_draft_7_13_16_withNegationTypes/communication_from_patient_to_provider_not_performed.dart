import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must not have been
/// performed from a patient to a provider.

class CommunicationFromPatientToProviderNotPerformed {
  final LiteralCode? negationRationale;

  CommunicationFromPatientToProviderNotPerformed({
    this.negationRationale,
  });
}
