import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedurePerformed {
  final CodeableConcept? anatomicalApproachSite;
  final CodeableConcept? anatomicalLocationSite;
  final LiteralDateTime? incisionDatetime;
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? ordinality;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reason;
  final CodeableConcept? result;
  final CodeableConcept? status;

  ProcedurePerformed({
    this.interval,
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
