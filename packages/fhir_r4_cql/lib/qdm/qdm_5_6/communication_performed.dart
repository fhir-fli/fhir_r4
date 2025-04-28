import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_6.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category is a conveyance of information from one entity (e.g.,
/// person, organization, or device) to another.

class CommunicationPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? category;
  final LiteralCode? medium;
  final LiteralCode? negationRationale;
  final LiteralDateTime? receivedDatetime;
  final QDMEntity? recipient;
  final LiteralString? relatedTo;
  final QDMEntity? sender;
  final LiteralDateTime? sentDatetime;

  CommunicationPerformed({
    this.authorDatetime,
    this.category,
    this.medium,
    this.sender,
    this.recipient,
    this.sentDatetime,
    this.receivedDatetime,
    this.negationRationale,
    this.relatedTo,
  });
}
