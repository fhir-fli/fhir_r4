import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the symptom and its corresponding value set. The onset datetime corresponds to the
/// implicit start datetime of the datatype and the abatement datetime corresponds to
/// the implicit stop datetime of the datatype. If the abatement datetime is null, then
/// the symptom is considered to still be active. When this datatype is used with timing
/// relationships, the criterion is looking for whether the symptom was active for the
/// time frame indicated by the timing relationships.

class Symptom {
  final LiteralDateTime? abatementDatetime;
  final LiteralDateTime? onsetDatetime;
  final CodeableConcept? severity;

  Symptom({
    this.onsetDatetime,
    this.abatementDatetime,
    this.severity,
  });
}
