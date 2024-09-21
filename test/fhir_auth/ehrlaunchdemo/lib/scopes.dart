import 'package:fhir_r4/fhir_r4.dart';

/// FHIR Scopes
final Scopes scopes = Scopes(
  clinicalScopes: <ClinicalScope>[
    ClinicalScope(
      role: Role.user,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.any,
    ),
  ],
  openid: true,
  offlineAccess: true,
  patientLaunch: true,
  ehrLaunch: true,
);

final Scopes cernerPatientScopes = Scopes(
  clinicalScopes: <ClinicalScope>[
    ClinicalScope(
      role: Role.patient,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.read,
    ),
  ],
  openid: true,
  offlineAccess: true,
  patientLaunch: true,
  fhirUser: true,
);

final Scopes cernerUserScopes = Scopes(
  clinicalScopes: <ClinicalScope>[
    ClinicalScope(
      role: Role.user,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.any,
    ),
    ClinicalScope(
      role: Role.patient,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.read,
    ),
  ],
  openid: true,
  offlineAccess: true,
  patientLaunch: true,
  ehrLaunch: true,
);

final Scopes epicUserScopes = Scopes(
  clinicalScopes: <ClinicalScope>[
    ClinicalScope(
      role: Role.user,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.any,
    ),
  ],
  openid: true,
  offlineAccess: true,
  fhirUser: true,
  patientLaunch: true,
  ehrLaunch: true,
);

final Scopes epicPatientScopes = Scopes(
  clinicalScopes: <ClinicalScope>[
    ClinicalScope(
      role: Role.patient,
      resourceType: R4ResourceType.Patient,
      interaction: Interaction.read,
    ),
  ],
  openid: true,
  offlineAccess: true,
  patientLaunch: true,
  fhirUser: true,
);
