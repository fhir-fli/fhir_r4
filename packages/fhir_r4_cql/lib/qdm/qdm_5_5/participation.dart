import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this data type should document
/// the type of plan or program in which the patient is expected to be enrolled. The
/// program is identified as the Issuer (e.g. Aetna, BCBSA, Cigna, etc.). The code
/// attribute indicates the coverage type indicating the program in which the subject of
/// record participates (e.g. health insurance plan policy, disease specific policy,
/// health maintenance organization policy, etc.) Timing: Participation Period
/// addresses: enrollmentStartdate - The time the patient enrolled in the program
/// enrollmentEnddate - The time the patient's enrollment in the program ends

class Participation {
  final LiteralDateTimeInterval? participationPeriod;
  final QDMEntity? recorder;

  Participation({
    this.participationPeriod,
    this.recorder,
  });
}
