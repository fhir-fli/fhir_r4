import 'package:objectbox/objectbox.dart';

import '../r4_entity.dart';

@Entity()
class ResourceEntity {
  @Id(assignable: true)
  int dbId = 0;

  @ToMany()
  List<AccountEntity>? accounts;
  @ToMany()
  List<ActivityDefinitionEntity>? activityDefinitions;
  @ToMany()
  List<AdministrableProductDefinitionEntity>? administrableProductDefinitions;
  @ToMany()
  List<AdverseEventEntity>? adverseEvents;
  @ToMany()
  List<AllergyIntoleranceEntity>? allergyIntolerances;
  @ToMany()
  List<AppointmentEntity>? appointments;
  @ToMany()
  List<AppointmentResponseEntity>? appointmentResponses;
  @ToMany()
  List<AuditEventEntity>? auditEvents;
  @ToMany()
  List<BasicEntity>? basics;
  @ToMany()
  List<BinaryEntity>? binarys;
  @ToMany()
  List<BiologicallyDerivedProductEntity>? biologicallyDerivedProducts;
  @ToMany()
  List<BodyStructureEntity>? bodyStructures;
  @ToMany()
  List<BundleEntity>? bundles;
  @ToMany()
  List<CapabilityStatementEntity>? capabilityStatements;
  @ToMany()
  List<CarePlanEntity>? carePlans;
  @ToMany()
  List<CareTeamEntity>? careTeams;
  @ToMany()
  List<CatalogEntryEntity>? catalogEntrys;
  @ToMany()
  List<ChargeItemEntity>? chargeItems;
  @ToMany()
  List<ChargeItemDefinitionEntity>? chargeItemDefinitions;
  @ToMany()
  List<CitationEntity>? citations;
  @ToMany()
  List<ClaimEntity>? claims;
  @ToMany()
  List<ClaimResponseEntity>? claimResponses;
  @ToMany()
  List<ClinicalImpressionEntity>? clinicalImpressions;
  @ToMany()
  List<ClinicalUseDefinitionEntity>? clinicalUseDefinitions;
  @ToMany()
  List<CodeSystemEntity>? codeSystems;
  @ToMany()
  List<CommunicationEntity>? communications;
  @ToMany()
  List<CommunicationRequestEntity>? communicationRequests;
  @ToMany()
  List<CompartmentDefinitionEntity>? compartmentDefinitions;
  @ToMany()
  List<CompositionEntity>? compositions;
  @ToMany()
  List<ConceptMapEntity>? conceptMaps;
  @ToMany()
  List<ConditionEntity>? conditions;
  @ToMany()
  List<ConsentEntity>? consents;
  @ToMany()
  List<ContractEntity>? contracts;
  @ToMany()
  List<CoverageEntity>? coverages;
  @ToMany()
  List<CoverageEligibilityRequestEntity>? coverageEligibilityRequests;
  @ToMany()
  List<CoverageEligibilityResponseEntity>? coverageEligibilityResponses;
  @ToMany()
  List<DetectedIssueEntity>? detectedIssues;
  @ToMany()
  List<DeviceEntity>? devices;
  @ToMany()
  List<DeviceDefinitionEntity>? deviceDefinitions;
  @ToMany()
  List<DeviceMetricEntity>? deviceMetrics;
  @ToMany()
  List<DeviceRequestEntity>? deviceRequests;
  @ToMany()
  List<DeviceUseStatementEntity>? deviceUseStatements;
  @ToMany()
  List<DiagnosticReportEntity>? diagnosticReports;
  @ToMany()
  List<DocumentManifestEntity>? documentManifests;
  @ToMany()
  List<DocumentReferenceEntity>? documentReferences;
  @ToMany()
  List<EncounterEntity>? encounters;
  @ToMany()
  List<FhirEndpointEntity>? endpoints;
  @ToMany()
  List<EnrollmentRequestEntity>? enrollmentRequests;
  @ToMany()
  List<EnrollmentResponseEntity>? enrollmentResponses;
  @ToMany()
  List<EpisodeOfCareEntity>? episodeOfCares;
  @ToMany()
  List<EventDefinitionEntity>? eventDefinitions;
  @ToMany()
  List<EvidenceEntity>? evidences;
  @ToMany()
  List<EvidenceReportEntity>? evidenceReports;
  @ToMany()
  List<EvidenceVariableEntity>? evidenceVariables;
  @ToMany()
  List<ExampleScenarioEntity>? exampleScenarios;
  @ToMany()
  List<ExplanationOfBenefitEntity>? explanationOfBenefits;
  @ToMany()
  List<FamilyMemberHistoryEntity>? familyMemberHistorys;
  @ToMany()
  List<FlagEntity>? flags;
  @ToMany()
  List<GoalEntity>? goals;
  @ToMany()
  List<GraphDefinitionEntity>? graphDefinitions;
  @ToMany()
  List<FhirGroupEntity>? groups;
  @ToMany()
  List<GuidanceResponseEntity>? guidanceResponses;
  @ToMany()
  List<HealthcareServiceEntity>? healthcareServices;
  @ToMany()
  List<ImagingStudyEntity>? imagingStudys;
  @ToMany()
  List<ImmunizationEntity>? immunizations;
  @ToMany()
  List<ImmunizationEvaluationEntity>? immunizationEvaluations;
  @ToMany()
  List<ImmunizationRecommendationEntity>? immunizationRecommendations;
  @ToMany()
  List<ImplementationGuideEntity>? implementationGuides;
  @ToMany()
  List<IngredientEntity>? ingredients;
  @ToMany()
  List<InsurancePlanEntity>? insurancePlans;
  @ToMany()
  List<InvoiceEntity>? invoices;
  @ToMany()
  List<LibraryEntity>? librarys;
  @ToMany()
  List<LinkageEntity>? linkages;
  @ToMany()
  List<FhirListEntity>? lists;
  @ToMany()
  List<LocationEntity>? locations;
  @ToMany()
  List<ManufacturedItemDefinitionEntity>? manufacturedItemDefinitions;
  @ToMany()
  List<MeasureEntity>? measures;
  @ToMany()
  List<MeasureReportEntity>? measureReports;
  @ToMany()
  List<MediaEntity>? medias;
  @ToMany()
  List<MedicationEntity>? medications;
  @ToMany()
  List<MedicationAdministrationEntity>? medicationAdministrations;
  @ToMany()
  List<MedicationDispenseEntity>? medicationDispenses;
  @ToMany()
  List<MedicationKnowledgeEntity>? medicationKnowledges;
  @ToMany()
  List<MedicationRequestEntity>? medicationRequests;
  @ToMany()
  List<MedicationStatementEntity>? medicationStatements;
  @ToMany()
  List<MedicinalProductDefinitionEntity>? medicinalProductDefinitions;
  @ToMany()
  List<MessageDefinitionEntity>? messageDefinitions;
  @ToMany()
  List<MessageHeaderEntity>? messageHeaders;
  @ToMany()
  List<MolecularSequenceEntity>? molecularSequences;
  @ToMany()
  List<NamingSystemEntity>? namingSystems;
  @ToMany()
  List<NutritionOrderEntity>? nutritionOrders;
  @ToMany()
  List<NutritionProductEntity>? nutritionProducts;
  @ToMany()
  List<ObservationEntity>? observations;
  @ToMany()
  List<ObservationDefinitionEntity>? observationDefinitions;
  @ToMany()
  List<OperationDefinitionEntity>? operationDefinitions;
  @ToMany()
  List<OperationOutcomeEntity>? operationOutcomes;
  @ToMany()
  List<OrganizationEntity>? organizations;
  @ToMany()
  List<OrganizationAffiliationEntity>? organizationAffiliations;
  @ToMany()
  List<PackagedProductDefinitionEntity>? packagedProductDefinitions;
  @ToMany()
  List<ParametersEntity>? parameterss;
  @ToMany()
  List<PatientEntity>? patients;
  @ToMany()
  List<PaymentNoticeEntity>? paymentNotices;
  @ToMany()
  List<PaymentReconciliationEntity>? paymentReconciliations;
  @ToMany()
  List<PersonEntity>? persons;
  @ToMany()
  List<PlanDefinitionEntity>? planDefinitions;
  @ToMany()
  List<PractitionerEntity>? practitioners;
  @ToMany()
  List<PractitionerRoleEntity>? practitionerRoles;
  @ToMany()
  List<ProcedureEntity>? procedures;
  @ToMany()
  List<ProvenanceEntity>? provenances;
  @ToMany()
  List<QuestionnaireEntity>? questionnaires;
  @ToMany()
  List<QuestionnaireResponseEntity>? questionnaireResponses;
  @ToMany()
  List<RegulatedAuthorizationEntity>? regulatedAuthorizations;
  @ToMany()
  List<RelatedPersonEntity>? relatedPersons;
  @ToMany()
  List<RequestGroupEntity>? requestGroups;
  @ToMany()
  List<ResearchDefinitionEntity>? researchDefinitions;
  @ToMany()
  List<ResearchElementDefinitionEntity>? researchElementDefinitions;
  @ToMany()
  List<ResearchStudyEntity>? researchStudys;
  @ToMany()
  List<ResearchSubjectEntity>? researchSubjects;
  @ToMany()
  List<RiskAssessmentEntity>? riskAssessments;
  @ToMany()
  List<ScheduleEntity>? schedules;
  @ToMany()
  List<SearchParameterEntity>? searchParameters;
  @ToMany()
  List<ServiceRequestEntity>? serviceRequests;
  @ToMany()
  List<SlotEntity>? slots;
  @ToMany()
  List<SpecimenEntity>? specimens;
  @ToMany()
  List<SpecimenDefinitionEntity>? specimenDefinitions;
  @ToMany()
  List<StructureDefinitionEntity>? structureDefinitions;
  @ToMany()
  List<StructureMapEntity>? structureMaps;
  @ToMany()
  List<SubscriptionEntity>? subscriptions;
  @ToMany()
  List<SubscriptionStatusEntity>? subscriptionStatuss;
  @ToMany()
  List<SubscriptionTopicEntity>? subscriptionTopics;
  @ToMany()
  List<SubstanceEntity>? substances;
  @ToMany()
  List<SubstanceDefinitionEntity>? substanceDefinitions;
  @ToMany()
  List<SupplyDeliveryEntity>? supplyDeliverys;
  @ToMany()
  List<SupplyRequestEntity>? supplyRequests;
  @ToMany()
  List<TaskEntity>? tasks;
  @ToMany()
  List<TerminologyCapabilitiesEntity>? terminologyCapabilitiess;
  @ToMany()
  List<TestReportEntity>? testReports;
  @ToMany()
  List<TestScriptEntity>? testScripts;
  @ToMany()
  List<ValueSetEntity>? valueSets;
  @ToMany()
  List<VerificationResultEntity>? verificationResults;
  @ToMany()
  List<VisionPrescriptionEntity>? visionPrescriptions;
}
