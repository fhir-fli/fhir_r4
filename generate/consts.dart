// Paths and Directory Names
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

// Version and Types
const String fhirVersion = 'fhir_r4';
const String fhirResourceType = 'R4ResourceType';
const String fhirDirectory = '$codeDirectory/fhir';
const String codeDirectory = '../lib/src';

// Lists
const List<String> classNamesAdjusted = <String>['List', 'Endpoint', 'Group'];
const List<String> ignoredClasses = <String>['ExampleScenario_Instance'];
const List<String> enumNameOverlaps = <String>['propertytype'];
const List<String> directories = <String>[
  'data_types',
  'resource_types',
  'enums',
];
const List<String> noParameters = <String>[
  'LinkageSearch',
  'VerificationResultSearch',
  'SearchLinkage',
  'SearchVerificationResult',
];
const List<String> badValueSets = <String>[
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

const List<String> moveTests = <String>[
  'fivews.json',
  'request.json',
];

const Map<String, String> primitiveTypeToDartType = <String, String>{
  'FhirBase64Binary': 'String',
  'FhirBoolean': 'bool',
  'FhirCanonical': 'Uri',
  'FhirCode': 'String',
  'FhirDateTime': 'DateTime',
  'FhirDate': 'DateTime',
  'FhirDecimal': 'double',
  'FhirId': 'String',
  'FhirInstant': 'DateTime',
  'FhirInteger': 'int',
  'FhirInteger64': 'BigInt',
  'FhirMarkdown': 'String',
  'FhirOid': 'String',
  'FhirPositiveInt': 'int',
  'FhirString': 'String',
  'FhirTime': 'String',
  'FhirUnsignedInt': 'int',
  'FhirUri': 'Uri',
  'FhirUrl': 'Uri',
  'FhirUuid': 'Uuid',
  'FhirXhtml': 'String',
};

const List<String> primitiveTypeToString = <String>[
  'FhirCanonical',
  'FhirDateTime',
  'FhirDate',
  'FhirInteger64',
  'FhirUri',
  'FhirUrl',
  'FhirUuid',
];

const List<String> filesToQuarantine = <String>[
  'ValueSet672.json',
  'diagnosticreport-example-gingival-mass.json',
  'activitydefinition-example.json',
  'json-edge-cases.json',
  'codesystem-extensions-CodeSystem-author.json',
  'diagnosticreport-example.json',
];
