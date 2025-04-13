import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedurePerformed {
  final CodeableConcept? anatomicalApproachSite;
  final CodeableConcept? anatomicalLocationSite;
  final LiteralDateTime? incisionDatetime;
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? negationRationale;
  final CodeableConcept? ordinality;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reason;
  final CodeableConcept? result;
  final CodeableConcept? status;

  ProcedurePerformed({
    this.interval,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.status,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
    this.radiationDuration,
    this.radiationDosage,
    this.incisionDatetime,
  });
}
