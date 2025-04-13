import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet this criterion indicate the patient’s care
/// experience, usually measured with a validated survey tool. The most common tool is
/// the Consumer Assessment of Healthcare Providers and Systems.

class PatientCareExperience {
  final LiteralDateTime? authorDatetime;
  final QDMEntity? recorder;

  PatientCareExperience({
    this.authorDatetime,
    this.recorder,
  });
}
