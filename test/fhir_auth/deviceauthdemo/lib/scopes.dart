import 'package:fhir_r4/fhir_r4.dart';

/// FHIR Scopes
final Scopes scopes = Scopes(
  clinicalScopes: <ClinicalScope>[
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
