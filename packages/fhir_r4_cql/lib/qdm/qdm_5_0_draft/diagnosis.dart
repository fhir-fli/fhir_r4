import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the Condition/Diagnosis/Problem and its corresponding value set. The onset datetime
/// corresponds to the implicit start datetime of the datatype and the abatement
/// datetime corresponds to the implicit stop datetime of the datatype. If the abatement
/// datetime is null, then the diagnosis is considered to still be active. When this
/// datatype is used with timing relationships, the criterion is looking for an active
/// diagnosis for the time frame indicated by the timing relationships.

class Diagnosis {
  final LiteralDateTime? abatementDatetime;
  final CodeableConcept? anatomicalLocationSite;
  final LiteralDateTime? onsetDatetime;
  final CodeableConcept? severity;

  Diagnosis({
    this.onsetDatetime,
    this.abatementDatetime,
    this.anatomicalLocationSite,
    this.severity,
  });
}
