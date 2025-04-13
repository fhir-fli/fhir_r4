import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralInteger? refills;
  final QDMEntity? requester;
  final LiteralCode? route;

  SubstanceRecommended({
    this.authorDatetime,
    this.reason,
    this.dosage,
    this.frequency,
    this.refills,
    this.route,
    this.negationRationale,
    this.requester,
  });
}
