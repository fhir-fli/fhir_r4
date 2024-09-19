import 'package:fhir_r4/fhir_r4.dart';

/// FHIR Scopes
final scopes = Scopes(
  clinicalScopes: [
    ClinicalScope(
      role: Role.patient,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.any,
    ),
  ],
  openid: true,
  offlineAccess: true,
  profile: true,
  ehrLaunch: true,
);

final cernerScopes = Scopes(
  clinicalScopes: [
    ClinicalScope(
      role: Role.patient,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.read,
    ),
    ClinicalScope(
      role: Role.patient,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.write,
    ),
  ],
  openid: true,
  offlineAccess: true,
  fhirUser: true,
  patientLaunch: true,
);
