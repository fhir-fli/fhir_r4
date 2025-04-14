import 'package:cql/engine/types/cql_literal.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from a patient to a provider.

class CommunicationFromPatientToProvider {
  final LiteralCode? negationRationale;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  CommunicationFromPatientToProvider({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
