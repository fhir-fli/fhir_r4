import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_4.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category is a conveyance of information from one entity (e.g.,
/// person, organization, or device) to another.

class CommunicationPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? category;
  final LiteralCode? medium;
  final LiteralCode? negationRationale;
  final LiteralCode? recipient;
  final Id? relatedTo;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? sender;

  CommunicationPerformed({
    this.authorDatetime,
    this.category,
    this.medium,
    this.sender,
    this.recipient,
    this.relevantPeriod,
    this.negationRationale,
    this.relatedTo,
  });
}
