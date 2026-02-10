import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet this criterion indicate the patient’s care
/// experience, usually measured with a validated survey tool. The most common tool is
/// the Consumer Assessment of Healthcare Providers and Systems.

class PatientCareExperience {
  final LiteralDateTime? authorTime;

  PatientCareExperience({
    this.authorTime,
  });
}
