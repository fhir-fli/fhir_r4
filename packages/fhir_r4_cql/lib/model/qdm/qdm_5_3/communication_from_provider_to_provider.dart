import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from one provider to another.

class CommunicationFromProviderToProvider {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? relatedTo;

  CommunicationFromProviderToProvider({
    this.authorDatetime,
    this.negationRationale,
    this.relatedTo,
  });
}
