const String fhirSchemaPath = './definitions.json/fhir.schema.json';
const String valueSetPath = './definitions.json/valuesets.json';
const String searchParametersPath = './definitions.json/search-parameters.json';
const String searchesPath = '$codeDirectory/fhir_at_rest/searches';
const String definitionsPathZip = './definitions.json.zip';
const String definitionsPath = './definitions.json';
const String examplesPathZip = './examples-json.zip';
const String examplesPath = './examples-json';
const String ndJsonExamplesPathZip = './examples-ndjson.zip';
const String ndJsonExamplesPath = './examples-ndjson';
const String schemaPathZip = './definitions.json/fhir.schema.json.zip';
const String testPath = '../test/fhir/examples';
const String resourceProfilesPath =
    './definitions.json/profiles-resources.json';
const String typeProfilesPath = './definitions.json/profiles-types.json';
const String fhirVersion = 'fhir_r4';
const String fhirResourceType = 'R4ResourceType';
const String fhirDirectory = '$codeDirectory/fhir';
const String codeDirectory = '../lib/src';
const List<String> classNamesAdjusted = <String>['List', 'Endpoint', 'Group'];
const List<String> ignoredClasses = <String>['ExampleScenario_Instance'];
const List<String> enumNameOverlaps = <String>['propertytype'];
const List<String> directories = <String>[
  'data_types',
  'resource_types',
  'enums'
];
final List<String> noParameters = <String>[
  'LinkageSearch',
  'VerificationResultSearch',
  'SearchLinkage',
  'SearchVerificationResult'
];
final List<String> badValueSets = <String>[
  'AccountTypes',
  'JurisdictionValueSet',
  'ProcedureCodesSNOMEDCT',
  'SNOMEDCTMedicationCodes',
  'SNOMEDCTBodyStructures',
  'SNOMEDCTRouteCodes',
  'SNOMEDCTClinicalFindings',
  'AllergyIntoleranceSubstanceProduct,ConditionAndNegationCodes',
  'SubstanceCode',
  'SNOMEDCTClinicalFindings',
  'EncounterReasonCodes',
  'AllSecurityLabels',
  'MimeTypes',
  'SNOMEDCTMorphologicAbnormalities',
  'CarePlanCategory',
  'CarePlanActivityOutcome',
  'CareTeamCategory',
  'ParticipantRoles',
  'ProcedurePerformerRoleCodes',
  'ICD10Codes',
  'FHIRDeviceTypes',
  'ClinicalImpressionPrognosis',
  'DiseaseSymptomProcedure',
  'DiseaseStatus',
  'Therapy',
  'Interactant',
  'InteractionEffect',
  'InteractionManagement',
  'UndesirableEffectSymptom',
  'UndesirableEffectClassification',
  'FHIRDocumentTypeCodes',
  'ConditionStageEnum',
  'ManifestationAndSymptomCodes',
  'ConsentContentCodes',
  'ContractContentDerivationCodes',
  'ContractTypeCodes',
  'ContractSubtypeCodes',
  'ContractTermTypeCodes',
  'ContractTermSubtypeCodes',
  'ContractActionCodes',
  'ContractActorRoleCodes',
  'ContractSignerTypeCodes',
  'CoverageTypeAndSelfPayCodes',
  'DetectedIssueCategory',
  'DetectedIssueMitigationAction',
  'DeviceType',
  'DeviceMetricAndComponentTypes',
  'DiagnosticServiceSectionCodes',
  'LOINCDiagnosticReportCodes',
  'DocumentReferenceFormatCodeSet',
  'ConditionOutcomeCodes',
  'FlagCode',
  'LOINCCodes',
  'ProcedureReasonCodes',
  'VaccineAdministeredValueSet',
  'CountryValueSet',
  'InsurancePlanType',
  'BenefitCostApplicability',
  'MediaCollectionViewProjection',
  'SNOMEDCTFormCodes',
  'SNOMEDCTReasonMedicationNotGivenCodes',
  'SNOMEDCTAnatomicalStructureForAdministrationSiteCodes',
  'SNOMEDCTAdministrationMethodCodes',
  'SNOMEDCTDrugTherapyStatusCodes',
  'MessageEvent',
  'ENSEMBL',
  'FDAStandardSequence',
  'FDAMethod',
  'FoodTypeCodes',
  'DietCodes',
  'CategoriesOfNutritionProducts',
  'CodesForNutritionProductNutrients',
  'CodesForAllergenClasses',
  'CodesForProductCharacteristics',
  'ObservationInterpretationCodes',
  'ObservationMethods',
  'UCUMCodes',
  'PatientContactRelationship',
  'ProcedureNotPerformedReasonSNOMEDCT',
  'ProcedureDeviceActionCodes',
  'QuestionnaireQuestionCodes',
  'QuestionnaireAnswerCodes',
  'PatientRelationshipType',
  'SNOMEDCTMedicationAsNeededReasonCodes',
  'SpecimenProcessingProcedure',
  'SpecimenContainerEnum',
  'PreparePatient',
  'SubscriptionErrorCodes',
  'SubstanceCategoryCodes',
  'SNOMEDCTSupplyItem',
  'Need',
  'ValidationType',
  'ValidationProcess',
  'FailureAction',
  'PrimarySourceType',
  'VerificationresultCommunicationMethod',
  'ValidationStatus',
  'CanPushUpdates',
  'PushTypeAvailable',
  'SNOMEDCTAdditionalDosageInstructions',
  'Currencies',
  'ContextOfUseValueSet',
  'ResourceType',
  'ElementTypes',
];
