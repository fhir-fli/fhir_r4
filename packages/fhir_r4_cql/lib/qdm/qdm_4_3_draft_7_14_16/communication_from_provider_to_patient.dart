import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from a provider to a patient.

class CommunicationFromProviderToPatient {
  final LiteralCode? negationRationale;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  CommunicationFromProviderToPatient({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
