import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for a request by a clinician or appropriately licensed care
/// provider to an appropriate provider or organization to perform the diagnostic study
/// indicated by the QDM category and its corresponding value set.

class DiagnosticStudyRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;

  DiagnosticStudyRecommended({
    this.authorDatetime,
    this.negationRationale,
    this.requester,
  });
}
