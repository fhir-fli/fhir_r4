import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// an action that was not taken for a reason and the reason has been recorded in the
/// EHR.

class NotDone {
  final LiteralString dataType;
  final CodeableConcept reason;

  NotDone({
    required this.dataType,
    required this.reason,
  });
}
