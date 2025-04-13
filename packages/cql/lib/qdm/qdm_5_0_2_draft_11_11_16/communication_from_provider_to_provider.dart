import 'package:cql/engine/types/cql_literal.dart';

///
/// To meet criteria using this datatype, the
/// communication indicated by the Communication QDM category and its
/// corresponding value set must be communicated from one provider to
/// another.
///

class CommunicationFromProviderToProvider {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;

  CommunicationFromProviderToProvider({
    this.authorDatetime,
    this.negationRationale,
  });
}
