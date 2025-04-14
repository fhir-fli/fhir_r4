import 'package:cql/engine/types/cql_literal.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must not have been
/// performed from one provider to another.

class CommunicationFromProviderToProviderNotPerformed {
  final LiteralCode? negationRationale;

  CommunicationFromProviderToProviderNotPerformed({
    this.negationRationale,
  });
}
