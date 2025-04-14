import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_2_draft_11_11_16.dart';

///
/// Data elements that meet criteria using this datatype should
/// document completion of the assessment indicated by the QDM category and its corresponding value set.
///

class AssessmentPerformed {
  final LiteralDateTime? authorDatetime;
  final Component? component;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final dynamic result;

  AssessmentPerformed({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.component,
  });
}
