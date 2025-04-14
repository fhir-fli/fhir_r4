import 'package:cql/engine/types/cql_literal.dart';

///
/// To meet criteria using this datatype, the
/// communication indicated by the Communication QDM category and its
/// corresponding value set must be communicated from one provider to
/// another.
///

class CommunicationFromProviderToProvider {
  final LiteralConcept? negationRationale;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  CommunicationFromProviderToProvider({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
