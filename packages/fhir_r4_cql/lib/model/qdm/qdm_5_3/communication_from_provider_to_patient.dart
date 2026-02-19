import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from a provider to a patient.

class CommunicationFromProviderToPatient {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? relatedTo;

  CommunicationFromProviderToPatient({
    this.authorDatetime,
    this.negationRationale,
    this.relatedTo,
  });
}
