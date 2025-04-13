// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CarePlanActivityKind
enum CarePlanActivityKindBuilderEnum {
  /// Resource
  resource,

  /// Binary
  binary,

  /// Bundle
  bundle,

  /// DomainResource
  domainResource,

  /// Account
  account,

  /// ActivityDefinition
  activityDefinition,

  /// AdministrableProductDefinition
  administrableProductDefinition,

  /// AdverseEvent
  adverseEvent,

  /// AllergyIntolerance
  allergyIntolerance,

  /// Appointment
  appointment,

  /// AppointmentResponse
  appointmentResponse,

  /// AuditEvent
  auditEvent,

  /// Basic
  basic,

  /// BiologicallyDerivedProduct
  biologicallyDerivedProduct,

  /// BodyStructure
  bodyStructure,

  /// CapabilityStatement
  capabilityStatement,

  /// CarePlan
  carePlan,

  /// CareTeam
  careTeam,

  /// CatalogEntry
  catalogEntry,

  /// ChargeItem
  chargeItem,

  /// ChargeItemDefinition
  chargeItemDefinition,

  /// Citation
  citation,

  /// Claim
  claim,

  /// ClaimResponse
  claimResponse,

  /// ClinicalImpression
  clinicalImpression,

  /// ClinicalUseDefinition
  clinicalUseDefinition,

  /// CodeSystem
  codeSystem,

  /// Communication
  communication,

  /// CommunicationRequest
  communicationRequest,

  /// CompartmentDefinition
  compartmentDefinition,

  /// Composition
  composition,

  /// ConceptMap
  conceptMap,

  /// Condition
  condition,

  /// Consent
  consent,

  /// Contract
  contract,

  /// Coverage
  coverage,

  /// CoverageEligibilityRequest
  coverageEligibilityRequest,

  /// CoverageEligibilityResponse
  coverageEligibilityResponse,

  /// DetectedIssue
  detectedIssue,

  /// Device
  device,

  /// DeviceDefinition
  deviceDefinition,

  /// DeviceMetric
  deviceMetric,

  /// DeviceRequest
  deviceRequest,

  /// DeviceUseStatement
  deviceUseStatement,

  /// DiagnosticReport
  diagnosticReport,

  /// DocumentManifest
  documentManifest,

  /// DocumentReference
  documentReference,

  /// Encounter
  encounter,

  /// Endpoint
  endpoint,

  /// EnrollmentRequest
  enrollmentRequest,

  /// EnrollmentResponse
  enrollmentResponse,

  /// EpisodeOfCare
  episodeOfCare,

  /// EventDefinition
  eventDefinition,

  /// Evidence
  evidence,

  /// EvidenceReport
  evidenceReport,

  /// EvidenceVariable
  evidenceVariable,

  /// ExampleScenario
  exampleScenario,

  /// ExplanationOfBenefit
  explanationOfBenefit,

  /// FamilyMemberHistory
  familyMemberHistory,

  /// Flag
  flag,

  /// Goal
  goal,

  /// GraphDefinition
  graphDefinition,

  /// Group
  group,

  /// GuidanceResponse
  guidanceResponse,

  /// HealthcareService
  healthcareService,

  /// ImagingStudy
  imagingStudy,

  /// Immunization
  immunization,

  /// ImmunizationEvaluation
  immunizationEvaluation,

  /// ImmunizationRecommendation
  immunizationRecommendation,

  /// ImplementationGuide
  implementationGuide,

  /// Ingredient
  ingredient,

  /// InsurancePlan
  insurancePlan,

  /// Invoice
  invoice,

  /// Library
  library,

  /// Linkage
  linkage,

  /// List
  list_,

  /// Location
  location,

  /// ManufacturedItemDefinition
  manufacturedItemDefinition,

  /// Measure
  measure,

  /// MeasureReport
  measureReport,

  /// Media
  media,

  /// Medication
  medication,

  /// MedicationAdministration
  medicationAdministration,

  /// MedicationDispense
  medicationDispense,

  /// MedicationKnowledge
  medicationKnowledge,

  /// MedicationRequest
  medicationRequest,

  /// MedicationStatement
  medicationStatement,

  /// MedicinalProductDefinition
  medicinalProductDefinition,

  /// MessageDefinition
  messageDefinition,

  /// MessageHeader
  messageHeader,

  /// MolecularSequence
  molecularSequence,

  /// NamingSystem
  namingSystem,

  /// NutritionOrder
  nutritionOrder,

  /// NutritionProduct
  nutritionProduct,

  /// Observation
  observation,

  /// ObservationDefinition
  observationDefinition,

  /// OperationDefinition
  operationDefinition,

  /// OperationOutcome
  operationOutcome,

  /// Organization
  organization,

  /// OrganizationAffiliation
  organizationAffiliation,

  /// PackagedProductDefinition
  packagedProductDefinition,

  /// Patient
  patient,

  /// PaymentNotice
  paymentNotice,

  /// PaymentReconciliation
  paymentReconciliation,

  /// Person
  person,

  /// PlanDefinition
  planDefinition,

  /// Practitioner
  practitioner,

  /// PractitionerRole
  practitionerRole,

  /// Procedure
  procedure,

  /// Provenance
  provenance,

  /// Questionnaire
  questionnaire,

  /// QuestionnaireResponse
  questionnaireResponse,

  /// RegulatedAuthorization
  regulatedAuthorization,

  /// RelatedPerson
  relatedPerson,

  /// RequestGroup
  requestGroup,

  /// ResearchDefinition
  researchDefinition,

  /// ResearchElementDefinition
  researchElementDefinition,

  /// ResearchStudy
  researchStudy,

  /// ResearchSubject
  researchSubject,

  /// RiskAssessment
  riskAssessment,

  /// Schedule
  schedule,

  /// SearchParameter
  searchParameter,

  /// ServiceRequest
  serviceRequest,

  /// Slot
  slot,

  /// Specimen
  specimen,

  /// SpecimenDefinition
  specimenDefinition,

  /// StructureDefinition
  structureDefinition,

  /// StructureMap
  structureMap,

  /// Subscription
  subscription,

  /// SubscriptionStatus
  subscriptionStatus,

  /// SubscriptionTopic
  subscriptionTopic,

  /// Substance
  substance,

  /// SubstanceDefinition
  substanceDefinition,

  /// SupplyDelivery
  supplyDelivery,

  /// SupplyRequest
  supplyRequest,

  /// Task
  task,

  /// TerminologyCapabilities
  terminologyCapabilities,

  /// TestReport
  testReport,

  /// TestScript
  testScript,

  /// ValueSet
  valueSet,

  /// VerificationResult
  verificationResult,

  /// VisionPrescription
  visionPrescription,

  /// Parameters
  parameters,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CarePlanActivityKindBuilderEnum.resource:
        return 'Resource';
      case CarePlanActivityKindBuilderEnum.binary:
        return 'Binary';
      case CarePlanActivityKindBuilderEnum.bundle:
        return 'Bundle';
      case CarePlanActivityKindBuilderEnum.domainResource:
        return 'DomainResource';
      case CarePlanActivityKindBuilderEnum.account:
        return 'Account';
      case CarePlanActivityKindBuilderEnum.activityDefinition:
        return 'ActivityDefinition';
      case CarePlanActivityKindBuilderEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case CarePlanActivityKindBuilderEnum.adverseEvent:
        return 'AdverseEvent';
      case CarePlanActivityKindBuilderEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case CarePlanActivityKindBuilderEnum.appointment:
        return 'Appointment';
      case CarePlanActivityKindBuilderEnum.appointmentResponse:
        return 'AppointmentResponse';
      case CarePlanActivityKindBuilderEnum.auditEvent:
        return 'AuditEvent';
      case CarePlanActivityKindBuilderEnum.basic:
        return 'Basic';
      case CarePlanActivityKindBuilderEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case CarePlanActivityKindBuilderEnum.bodyStructure:
        return 'BodyStructure';
      case CarePlanActivityKindBuilderEnum.capabilityStatement:
        return 'CapabilityStatement';
      case CarePlanActivityKindBuilderEnum.carePlan:
        return 'CarePlan';
      case CarePlanActivityKindBuilderEnum.careTeam:
        return 'CareTeam';
      case CarePlanActivityKindBuilderEnum.catalogEntry:
        return 'CatalogEntry';
      case CarePlanActivityKindBuilderEnum.chargeItem:
        return 'ChargeItem';
      case CarePlanActivityKindBuilderEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case CarePlanActivityKindBuilderEnum.citation:
        return 'Citation';
      case CarePlanActivityKindBuilderEnum.claim:
        return 'Claim';
      case CarePlanActivityKindBuilderEnum.claimResponse:
        return 'ClaimResponse';
      case CarePlanActivityKindBuilderEnum.clinicalImpression:
        return 'ClinicalImpression';
      case CarePlanActivityKindBuilderEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case CarePlanActivityKindBuilderEnum.codeSystem:
        return 'CodeSystem';
      case CarePlanActivityKindBuilderEnum.communication:
        return 'Communication';
      case CarePlanActivityKindBuilderEnum.communicationRequest:
        return 'CommunicationRequest';
      case CarePlanActivityKindBuilderEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case CarePlanActivityKindBuilderEnum.composition:
        return 'Composition';
      case CarePlanActivityKindBuilderEnum.conceptMap:
        return 'ConceptMap';
      case CarePlanActivityKindBuilderEnum.condition:
        return 'Condition';
      case CarePlanActivityKindBuilderEnum.consent:
        return 'Consent';
      case CarePlanActivityKindBuilderEnum.contract:
        return 'Contract';
      case CarePlanActivityKindBuilderEnum.coverage:
        return 'Coverage';
      case CarePlanActivityKindBuilderEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case CarePlanActivityKindBuilderEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case CarePlanActivityKindBuilderEnum.detectedIssue:
        return 'DetectedIssue';
      case CarePlanActivityKindBuilderEnum.device:
        return 'Device';
      case CarePlanActivityKindBuilderEnum.deviceDefinition:
        return 'DeviceDefinition';
      case CarePlanActivityKindBuilderEnum.deviceMetric:
        return 'DeviceMetric';
      case CarePlanActivityKindBuilderEnum.deviceRequest:
        return 'DeviceRequest';
      case CarePlanActivityKindBuilderEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case CarePlanActivityKindBuilderEnum.diagnosticReport:
        return 'DiagnosticReport';
      case CarePlanActivityKindBuilderEnum.documentManifest:
        return 'DocumentManifest';
      case CarePlanActivityKindBuilderEnum.documentReference:
        return 'DocumentReference';
      case CarePlanActivityKindBuilderEnum.encounter:
        return 'Encounter';
      case CarePlanActivityKindBuilderEnum.endpoint:
        return 'Endpoint';
      case CarePlanActivityKindBuilderEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case CarePlanActivityKindBuilderEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case CarePlanActivityKindBuilderEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case CarePlanActivityKindBuilderEnum.eventDefinition:
        return 'EventDefinition';
      case CarePlanActivityKindBuilderEnum.evidence:
        return 'Evidence';
      case CarePlanActivityKindBuilderEnum.evidenceReport:
        return 'EvidenceReport';
      case CarePlanActivityKindBuilderEnum.evidenceVariable:
        return 'EvidenceVariable';
      case CarePlanActivityKindBuilderEnum.exampleScenario:
        return 'ExampleScenario';
      case CarePlanActivityKindBuilderEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case CarePlanActivityKindBuilderEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case CarePlanActivityKindBuilderEnum.flag:
        return 'Flag';
      case CarePlanActivityKindBuilderEnum.goal:
        return 'Goal';
      case CarePlanActivityKindBuilderEnum.graphDefinition:
        return 'GraphDefinition';
      case CarePlanActivityKindBuilderEnum.group:
        return 'Group';
      case CarePlanActivityKindBuilderEnum.guidanceResponse:
        return 'GuidanceResponse';
      case CarePlanActivityKindBuilderEnum.healthcareService:
        return 'HealthcareService';
      case CarePlanActivityKindBuilderEnum.imagingStudy:
        return 'ImagingStudy';
      case CarePlanActivityKindBuilderEnum.immunization:
        return 'Immunization';
      case CarePlanActivityKindBuilderEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case CarePlanActivityKindBuilderEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case CarePlanActivityKindBuilderEnum.implementationGuide:
        return 'ImplementationGuide';
      case CarePlanActivityKindBuilderEnum.ingredient:
        return 'Ingredient';
      case CarePlanActivityKindBuilderEnum.insurancePlan:
        return 'InsurancePlan';
      case CarePlanActivityKindBuilderEnum.invoice:
        return 'Invoice';
      case CarePlanActivityKindBuilderEnum.library:
        return 'Library';
      case CarePlanActivityKindBuilderEnum.linkage:
        return 'Linkage';
      case CarePlanActivityKindBuilderEnum.list_:
        return 'List';
      case CarePlanActivityKindBuilderEnum.location:
        return 'Location';
      case CarePlanActivityKindBuilderEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case CarePlanActivityKindBuilderEnum.measure:
        return 'Measure';
      case CarePlanActivityKindBuilderEnum.measureReport:
        return 'MeasureReport';
      case CarePlanActivityKindBuilderEnum.media:
        return 'Media';
      case CarePlanActivityKindBuilderEnum.medication:
        return 'Medication';
      case CarePlanActivityKindBuilderEnum.medicationAdministration:
        return 'MedicationAdministration';
      case CarePlanActivityKindBuilderEnum.medicationDispense:
        return 'MedicationDispense';
      case CarePlanActivityKindBuilderEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case CarePlanActivityKindBuilderEnum.medicationRequest:
        return 'MedicationRequest';
      case CarePlanActivityKindBuilderEnum.medicationStatement:
        return 'MedicationStatement';
      case CarePlanActivityKindBuilderEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case CarePlanActivityKindBuilderEnum.messageDefinition:
        return 'MessageDefinition';
      case CarePlanActivityKindBuilderEnum.messageHeader:
        return 'MessageHeader';
      case CarePlanActivityKindBuilderEnum.molecularSequence:
        return 'MolecularSequence';
      case CarePlanActivityKindBuilderEnum.namingSystem:
        return 'NamingSystem';
      case CarePlanActivityKindBuilderEnum.nutritionOrder:
        return 'NutritionOrder';
      case CarePlanActivityKindBuilderEnum.nutritionProduct:
        return 'NutritionProduct';
      case CarePlanActivityKindBuilderEnum.observation:
        return 'Observation';
      case CarePlanActivityKindBuilderEnum.observationDefinition:
        return 'ObservationDefinition';
      case CarePlanActivityKindBuilderEnum.operationDefinition:
        return 'OperationDefinition';
      case CarePlanActivityKindBuilderEnum.operationOutcome:
        return 'OperationOutcome';
      case CarePlanActivityKindBuilderEnum.organization:
        return 'Organization';
      case CarePlanActivityKindBuilderEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case CarePlanActivityKindBuilderEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case CarePlanActivityKindBuilderEnum.patient:
        return 'Patient';
      case CarePlanActivityKindBuilderEnum.paymentNotice:
        return 'PaymentNotice';
      case CarePlanActivityKindBuilderEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case CarePlanActivityKindBuilderEnum.person:
        return 'Person';
      case CarePlanActivityKindBuilderEnum.planDefinition:
        return 'PlanDefinition';
      case CarePlanActivityKindBuilderEnum.practitioner:
        return 'Practitioner';
      case CarePlanActivityKindBuilderEnum.practitionerRole:
        return 'PractitionerRole';
      case CarePlanActivityKindBuilderEnum.procedure:
        return 'Procedure';
      case CarePlanActivityKindBuilderEnum.provenance:
        return 'Provenance';
      case CarePlanActivityKindBuilderEnum.questionnaire:
        return 'Questionnaire';
      case CarePlanActivityKindBuilderEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case CarePlanActivityKindBuilderEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case CarePlanActivityKindBuilderEnum.relatedPerson:
        return 'RelatedPerson';
      case CarePlanActivityKindBuilderEnum.requestGroup:
        return 'RequestGroup';
      case CarePlanActivityKindBuilderEnum.researchDefinition:
        return 'ResearchDefinition';
      case CarePlanActivityKindBuilderEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case CarePlanActivityKindBuilderEnum.researchStudy:
        return 'ResearchStudy';
      case CarePlanActivityKindBuilderEnum.researchSubject:
        return 'ResearchSubject';
      case CarePlanActivityKindBuilderEnum.riskAssessment:
        return 'RiskAssessment';
      case CarePlanActivityKindBuilderEnum.schedule:
        return 'Schedule';
      case CarePlanActivityKindBuilderEnum.searchParameter:
        return 'SearchParameter';
      case CarePlanActivityKindBuilderEnum.serviceRequest:
        return 'ServiceRequest';
      case CarePlanActivityKindBuilderEnum.slot:
        return 'Slot';
      case CarePlanActivityKindBuilderEnum.specimen:
        return 'Specimen';
      case CarePlanActivityKindBuilderEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case CarePlanActivityKindBuilderEnum.structureDefinition:
        return 'StructureDefinition';
      case CarePlanActivityKindBuilderEnum.structureMap:
        return 'StructureMap';
      case CarePlanActivityKindBuilderEnum.subscription:
        return 'Subscription';
      case CarePlanActivityKindBuilderEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case CarePlanActivityKindBuilderEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case CarePlanActivityKindBuilderEnum.substance:
        return 'Substance';
      case CarePlanActivityKindBuilderEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case CarePlanActivityKindBuilderEnum.supplyDelivery:
        return 'SupplyDelivery';
      case CarePlanActivityKindBuilderEnum.supplyRequest:
        return 'SupplyRequest';
      case CarePlanActivityKindBuilderEnum.task:
        return 'Task';
      case CarePlanActivityKindBuilderEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case CarePlanActivityKindBuilderEnum.testReport:
        return 'TestReport';
      case CarePlanActivityKindBuilderEnum.testScript:
        return 'TestScript';
      case CarePlanActivityKindBuilderEnum.valueSet:
        return 'ValueSet';
      case CarePlanActivityKindBuilderEnum.verificationResult:
        return 'VerificationResult';
      case CarePlanActivityKindBuilderEnum.visionPrescription:
        return 'VisionPrescription';
      case CarePlanActivityKindBuilderEnum.parameters:
        return 'Parameters';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CarePlanActivityKindBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CarePlanActivityKindBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CarePlanActivityKindBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Resource':
        return CarePlanActivityKindBuilderEnum.resource;
      case 'Binary':
        return CarePlanActivityKindBuilderEnum.binary;
      case 'Bundle':
        return CarePlanActivityKindBuilderEnum.bundle;
      case 'DomainResource':
        return CarePlanActivityKindBuilderEnum.domainResource;
      case 'Account':
        return CarePlanActivityKindBuilderEnum.account;
      case 'ActivityDefinition':
        return CarePlanActivityKindBuilderEnum.activityDefinition;
      case 'AdministrableProductDefinition':
        return CarePlanActivityKindBuilderEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return CarePlanActivityKindBuilderEnum.adverseEvent;
      case 'AllergyIntolerance':
        return CarePlanActivityKindBuilderEnum.allergyIntolerance;
      case 'Appointment':
        return CarePlanActivityKindBuilderEnum.appointment;
      case 'AppointmentResponse':
        return CarePlanActivityKindBuilderEnum.appointmentResponse;
      case 'AuditEvent':
        return CarePlanActivityKindBuilderEnum.auditEvent;
      case 'Basic':
        return CarePlanActivityKindBuilderEnum.basic;
      case 'BiologicallyDerivedProduct':
        return CarePlanActivityKindBuilderEnum.biologicallyDerivedProduct;
      case 'BodyStructure':
        return CarePlanActivityKindBuilderEnum.bodyStructure;
      case 'CapabilityStatement':
        return CarePlanActivityKindBuilderEnum.capabilityStatement;
      case 'CarePlan':
        return CarePlanActivityKindBuilderEnum.carePlan;
      case 'CareTeam':
        return CarePlanActivityKindBuilderEnum.careTeam;
      case 'CatalogEntry':
        return CarePlanActivityKindBuilderEnum.catalogEntry;
      case 'ChargeItem':
        return CarePlanActivityKindBuilderEnum.chargeItem;
      case 'ChargeItemDefinition':
        return CarePlanActivityKindBuilderEnum.chargeItemDefinition;
      case 'Citation':
        return CarePlanActivityKindBuilderEnum.citation;
      case 'Claim':
        return CarePlanActivityKindBuilderEnum.claim;
      case 'ClaimResponse':
        return CarePlanActivityKindBuilderEnum.claimResponse;
      case 'ClinicalImpression':
        return CarePlanActivityKindBuilderEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return CarePlanActivityKindBuilderEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return CarePlanActivityKindBuilderEnum.codeSystem;
      case 'Communication':
        return CarePlanActivityKindBuilderEnum.communication;
      case 'CommunicationRequest':
        return CarePlanActivityKindBuilderEnum.communicationRequest;
      case 'CompartmentDefinition':
        return CarePlanActivityKindBuilderEnum.compartmentDefinition;
      case 'Composition':
        return CarePlanActivityKindBuilderEnum.composition;
      case 'ConceptMap':
        return CarePlanActivityKindBuilderEnum.conceptMap;
      case 'Condition':
        return CarePlanActivityKindBuilderEnum.condition;
      case 'Consent':
        return CarePlanActivityKindBuilderEnum.consent;
      case 'Contract':
        return CarePlanActivityKindBuilderEnum.contract;
      case 'Coverage':
        return CarePlanActivityKindBuilderEnum.coverage;
      case 'CoverageEligibilityRequest':
        return CarePlanActivityKindBuilderEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return CarePlanActivityKindBuilderEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return CarePlanActivityKindBuilderEnum.detectedIssue;
      case 'Device':
        return CarePlanActivityKindBuilderEnum.device;
      case 'DeviceDefinition':
        return CarePlanActivityKindBuilderEnum.deviceDefinition;
      case 'DeviceMetric':
        return CarePlanActivityKindBuilderEnum.deviceMetric;
      case 'DeviceRequest':
        return CarePlanActivityKindBuilderEnum.deviceRequest;
      case 'DeviceUseStatement':
        return CarePlanActivityKindBuilderEnum.deviceUseStatement;
      case 'DiagnosticReport':
        return CarePlanActivityKindBuilderEnum.diagnosticReport;
      case 'DocumentManifest':
        return CarePlanActivityKindBuilderEnum.documentManifest;
      case 'DocumentReference':
        return CarePlanActivityKindBuilderEnum.documentReference;
      case 'Encounter':
        return CarePlanActivityKindBuilderEnum.encounter;
      case 'Endpoint':
        return CarePlanActivityKindBuilderEnum.endpoint;
      case 'EnrollmentRequest':
        return CarePlanActivityKindBuilderEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return CarePlanActivityKindBuilderEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return CarePlanActivityKindBuilderEnum.episodeOfCare;
      case 'EventDefinition':
        return CarePlanActivityKindBuilderEnum.eventDefinition;
      case 'Evidence':
        return CarePlanActivityKindBuilderEnum.evidence;
      case 'EvidenceReport':
        return CarePlanActivityKindBuilderEnum.evidenceReport;
      case 'EvidenceVariable':
        return CarePlanActivityKindBuilderEnum.evidenceVariable;
      case 'ExampleScenario':
        return CarePlanActivityKindBuilderEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return CarePlanActivityKindBuilderEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return CarePlanActivityKindBuilderEnum.familyMemberHistory;
      case 'Flag':
        return CarePlanActivityKindBuilderEnum.flag;
      case 'Goal':
        return CarePlanActivityKindBuilderEnum.goal;
      case 'GraphDefinition':
        return CarePlanActivityKindBuilderEnum.graphDefinition;
      case 'Group':
        return CarePlanActivityKindBuilderEnum.group;
      case 'GuidanceResponse':
        return CarePlanActivityKindBuilderEnum.guidanceResponse;
      case 'HealthcareService':
        return CarePlanActivityKindBuilderEnum.healthcareService;
      case 'ImagingStudy':
        return CarePlanActivityKindBuilderEnum.imagingStudy;
      case 'Immunization':
        return CarePlanActivityKindBuilderEnum.immunization;
      case 'ImmunizationEvaluation':
        return CarePlanActivityKindBuilderEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return CarePlanActivityKindBuilderEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return CarePlanActivityKindBuilderEnum.implementationGuide;
      case 'Ingredient':
        return CarePlanActivityKindBuilderEnum.ingredient;
      case 'InsurancePlan':
        return CarePlanActivityKindBuilderEnum.insurancePlan;
      case 'Invoice':
        return CarePlanActivityKindBuilderEnum.invoice;
      case 'Library':
        return CarePlanActivityKindBuilderEnum.library;
      case 'Linkage':
        return CarePlanActivityKindBuilderEnum.linkage;
      case 'List':
        return CarePlanActivityKindBuilderEnum.list_;
      case 'Location':
        return CarePlanActivityKindBuilderEnum.location;
      case 'ManufacturedItemDefinition':
        return CarePlanActivityKindBuilderEnum.manufacturedItemDefinition;
      case 'Measure':
        return CarePlanActivityKindBuilderEnum.measure;
      case 'MeasureReport':
        return CarePlanActivityKindBuilderEnum.measureReport;
      case 'Media':
        return CarePlanActivityKindBuilderEnum.media;
      case 'Medication':
        return CarePlanActivityKindBuilderEnum.medication;
      case 'MedicationAdministration':
        return CarePlanActivityKindBuilderEnum.medicationAdministration;
      case 'MedicationDispense':
        return CarePlanActivityKindBuilderEnum.medicationDispense;
      case 'MedicationKnowledge':
        return CarePlanActivityKindBuilderEnum.medicationKnowledge;
      case 'MedicationRequest':
        return CarePlanActivityKindBuilderEnum.medicationRequest;
      case 'MedicationStatement':
        return CarePlanActivityKindBuilderEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return CarePlanActivityKindBuilderEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return CarePlanActivityKindBuilderEnum.messageDefinition;
      case 'MessageHeader':
        return CarePlanActivityKindBuilderEnum.messageHeader;
      case 'MolecularSequence':
        return CarePlanActivityKindBuilderEnum.molecularSequence;
      case 'NamingSystem':
        return CarePlanActivityKindBuilderEnum.namingSystem;
      case 'NutritionOrder':
        return CarePlanActivityKindBuilderEnum.nutritionOrder;
      case 'NutritionProduct':
        return CarePlanActivityKindBuilderEnum.nutritionProduct;
      case 'Observation':
        return CarePlanActivityKindBuilderEnum.observation;
      case 'ObservationDefinition':
        return CarePlanActivityKindBuilderEnum.observationDefinition;
      case 'OperationDefinition':
        return CarePlanActivityKindBuilderEnum.operationDefinition;
      case 'OperationOutcome':
        return CarePlanActivityKindBuilderEnum.operationOutcome;
      case 'Organization':
        return CarePlanActivityKindBuilderEnum.organization;
      case 'OrganizationAffiliation':
        return CarePlanActivityKindBuilderEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return CarePlanActivityKindBuilderEnum.packagedProductDefinition;
      case 'Patient':
        return CarePlanActivityKindBuilderEnum.patient;
      case 'PaymentNotice':
        return CarePlanActivityKindBuilderEnum.paymentNotice;
      case 'PaymentReconciliation':
        return CarePlanActivityKindBuilderEnum.paymentReconciliation;
      case 'Person':
        return CarePlanActivityKindBuilderEnum.person;
      case 'PlanDefinition':
        return CarePlanActivityKindBuilderEnum.planDefinition;
      case 'Practitioner':
        return CarePlanActivityKindBuilderEnum.practitioner;
      case 'PractitionerRole':
        return CarePlanActivityKindBuilderEnum.practitionerRole;
      case 'Procedure':
        return CarePlanActivityKindBuilderEnum.procedure;
      case 'Provenance':
        return CarePlanActivityKindBuilderEnum.provenance;
      case 'Questionnaire':
        return CarePlanActivityKindBuilderEnum.questionnaire;
      case 'QuestionnaireResponse':
        return CarePlanActivityKindBuilderEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return CarePlanActivityKindBuilderEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return CarePlanActivityKindBuilderEnum.relatedPerson;
      case 'RequestGroup':
        return CarePlanActivityKindBuilderEnum.requestGroup;
      case 'ResearchDefinition':
        return CarePlanActivityKindBuilderEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return CarePlanActivityKindBuilderEnum.researchElementDefinition;
      case 'ResearchStudy':
        return CarePlanActivityKindBuilderEnum.researchStudy;
      case 'ResearchSubject':
        return CarePlanActivityKindBuilderEnum.researchSubject;
      case 'RiskAssessment':
        return CarePlanActivityKindBuilderEnum.riskAssessment;
      case 'Schedule':
        return CarePlanActivityKindBuilderEnum.schedule;
      case 'SearchParameter':
        return CarePlanActivityKindBuilderEnum.searchParameter;
      case 'ServiceRequest':
        return CarePlanActivityKindBuilderEnum.serviceRequest;
      case 'Slot':
        return CarePlanActivityKindBuilderEnum.slot;
      case 'Specimen':
        return CarePlanActivityKindBuilderEnum.specimen;
      case 'SpecimenDefinition':
        return CarePlanActivityKindBuilderEnum.specimenDefinition;
      case 'StructureDefinition':
        return CarePlanActivityKindBuilderEnum.structureDefinition;
      case 'StructureMap':
        return CarePlanActivityKindBuilderEnum.structureMap;
      case 'Subscription':
        return CarePlanActivityKindBuilderEnum.subscription;
      case 'SubscriptionStatus':
        return CarePlanActivityKindBuilderEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return CarePlanActivityKindBuilderEnum.subscriptionTopic;
      case 'Substance':
        return CarePlanActivityKindBuilderEnum.substance;
      case 'SubstanceDefinition':
        return CarePlanActivityKindBuilderEnum.substanceDefinition;
      case 'SupplyDelivery':
        return CarePlanActivityKindBuilderEnum.supplyDelivery;
      case 'SupplyRequest':
        return CarePlanActivityKindBuilderEnum.supplyRequest;
      case 'Task':
        return CarePlanActivityKindBuilderEnum.task;
      case 'TerminologyCapabilities':
        return CarePlanActivityKindBuilderEnum.terminologyCapabilities;
      case 'TestReport':
        return CarePlanActivityKindBuilderEnum.testReport;
      case 'TestScript':
        return CarePlanActivityKindBuilderEnum.testScript;
      case 'ValueSet':
        return CarePlanActivityKindBuilderEnum.valueSet;
      case 'VerificationResult':
        return CarePlanActivityKindBuilderEnum.verificationResult;
      case 'VisionPrescription':
        return CarePlanActivityKindBuilderEnum.visionPrescription;
      case 'Parameters':
        return CarePlanActivityKindBuilderEnum.parameters;
    }
    return null;
  }
}

/// Resource types defined as part of FHIR that can be represented as
/// in-line definitions of a care plan activity.
class CarePlanActivityKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CarePlanActivityKindBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CarePlanActivityKindBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = CarePlanActivityKindBuilderEnum.fromString(
      valueString,
    );
    return CarePlanActivityKindBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [CarePlanActivityKindBuilder]
  /// with element only
  factory CarePlanActivityKindBuilder.empty() =>
      CarePlanActivityKindBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CarePlanActivityKindBuilder] from JSON.
  factory CarePlanActivityKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityKindBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityKindBuilder cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityKindBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CarePlanActivityKindBuilder
  final CarePlanActivityKindBuilderEnum? valueEnum;

  /// Resource
  static CarePlanActivityKindBuilder resource = CarePlanActivityKindBuilder._(
    valueString: 'Resource',
    valueEnum: CarePlanActivityKindBuilderEnum.resource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static CarePlanActivityKindBuilder binary = CarePlanActivityKindBuilder._(
    valueString: 'Binary',
    valueEnum: CarePlanActivityKindBuilderEnum.binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static CarePlanActivityKindBuilder bundle = CarePlanActivityKindBuilder._(
    valueString: 'Bundle',
    valueEnum: CarePlanActivityKindBuilderEnum.bundle,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static CarePlanActivityKindBuilder domainResource =
      CarePlanActivityKindBuilder._(
    valueString: 'DomainResource',
    valueEnum: CarePlanActivityKindBuilderEnum.domainResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static CarePlanActivityKindBuilder account = CarePlanActivityKindBuilder._(
    valueString: 'Account',
    valueEnum: CarePlanActivityKindBuilderEnum.account,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static CarePlanActivityKindBuilder activityDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ActivityDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.activityDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static CarePlanActivityKindBuilder administrableProductDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.administrableProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static CarePlanActivityKindBuilder adverseEvent =
      CarePlanActivityKindBuilder._(
    valueString: 'AdverseEvent',
    valueEnum: CarePlanActivityKindBuilderEnum.adverseEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static CarePlanActivityKindBuilder allergyIntolerance =
      CarePlanActivityKindBuilder._(
    valueString: 'AllergyIntolerance',
    valueEnum: CarePlanActivityKindBuilderEnum.allergyIntolerance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static CarePlanActivityKindBuilder appointment =
      CarePlanActivityKindBuilder._(
    valueString: 'Appointment',
    valueEnum: CarePlanActivityKindBuilderEnum.appointment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static CarePlanActivityKindBuilder appointmentResponse =
      CarePlanActivityKindBuilder._(
    valueString: 'AppointmentResponse',
    valueEnum: CarePlanActivityKindBuilderEnum.appointmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// AuditEvent
  static CarePlanActivityKindBuilder auditEvent = CarePlanActivityKindBuilder._(
    valueString: 'AuditEvent',
    valueEnum: CarePlanActivityKindBuilderEnum.auditEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static CarePlanActivityKindBuilder basic = CarePlanActivityKindBuilder._(
    valueString: 'Basic',
    valueEnum: CarePlanActivityKindBuilderEnum.basic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static CarePlanActivityKindBuilder biologicallyDerivedProduct =
      CarePlanActivityKindBuilder._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: CarePlanActivityKindBuilderEnum.biologicallyDerivedProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BodyStructure
  static CarePlanActivityKindBuilder bodyStructure =
      CarePlanActivityKindBuilder._(
    valueString: 'BodyStructure',
    valueEnum: CarePlanActivityKindBuilderEnum.bodyStructure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'BodyStructure',
    ),
  );

  /// CapabilityStatement
  static CarePlanActivityKindBuilder capabilityStatement =
      CarePlanActivityKindBuilder._(
    valueString: 'CapabilityStatement',
    valueEnum: CarePlanActivityKindBuilderEnum.capabilityStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static CarePlanActivityKindBuilder carePlan = CarePlanActivityKindBuilder._(
    valueString: 'CarePlan',
    valueEnum: CarePlanActivityKindBuilderEnum.carePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static CarePlanActivityKindBuilder careTeam = CarePlanActivityKindBuilder._(
    valueString: 'CareTeam',
    valueEnum: CarePlanActivityKindBuilderEnum.careTeam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CareTeam',
    ),
  );

  /// CatalogEntry
  static CarePlanActivityKindBuilder catalogEntry =
      CarePlanActivityKindBuilder._(
    valueString: 'CatalogEntry',
    valueEnum: CarePlanActivityKindBuilderEnum.catalogEntry,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CatalogEntry',
    ),
  );

  /// ChargeItem
  static CarePlanActivityKindBuilder chargeItem = CarePlanActivityKindBuilder._(
    valueString: 'ChargeItem',
    valueEnum: CarePlanActivityKindBuilderEnum.chargeItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static CarePlanActivityKindBuilder chargeItemDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ChargeItemDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.chargeItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static CarePlanActivityKindBuilder citation = CarePlanActivityKindBuilder._(
    valueString: 'Citation',
    valueEnum: CarePlanActivityKindBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static CarePlanActivityKindBuilder claim = CarePlanActivityKindBuilder._(
    valueString: 'Claim',
    valueEnum: CarePlanActivityKindBuilderEnum.claim,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static CarePlanActivityKindBuilder claimResponse =
      CarePlanActivityKindBuilder._(
    valueString: 'ClaimResponse',
    valueEnum: CarePlanActivityKindBuilderEnum.claimResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static CarePlanActivityKindBuilder clinicalImpression =
      CarePlanActivityKindBuilder._(
    valueString: 'ClinicalImpression',
    valueEnum: CarePlanActivityKindBuilderEnum.clinicalImpression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static CarePlanActivityKindBuilder clinicalUseDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.clinicalUseDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static CarePlanActivityKindBuilder codeSystem = CarePlanActivityKindBuilder._(
    valueString: 'CodeSystem',
    valueEnum: CarePlanActivityKindBuilderEnum.codeSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static CarePlanActivityKindBuilder communication =
      CarePlanActivityKindBuilder._(
    valueString: 'Communication',
    valueEnum: CarePlanActivityKindBuilderEnum.communication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static CarePlanActivityKindBuilder communicationRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'CommunicationRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.communicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static CarePlanActivityKindBuilder compartmentDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'CompartmentDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.compartmentDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static CarePlanActivityKindBuilder composition =
      CarePlanActivityKindBuilder._(
    valueString: 'Composition',
    valueEnum: CarePlanActivityKindBuilderEnum.composition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static CarePlanActivityKindBuilder conceptMap = CarePlanActivityKindBuilder._(
    valueString: 'ConceptMap',
    valueEnum: CarePlanActivityKindBuilderEnum.conceptMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static CarePlanActivityKindBuilder condition = CarePlanActivityKindBuilder._(
    valueString: 'Condition',
    valueEnum: CarePlanActivityKindBuilderEnum.condition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Condition',
    ),
  );

  /// Consent
  static CarePlanActivityKindBuilder consent = CarePlanActivityKindBuilder._(
    valueString: 'Consent',
    valueEnum: CarePlanActivityKindBuilderEnum.consent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static CarePlanActivityKindBuilder contract = CarePlanActivityKindBuilder._(
    valueString: 'Contract',
    valueEnum: CarePlanActivityKindBuilderEnum.contract,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static CarePlanActivityKindBuilder coverage = CarePlanActivityKindBuilder._(
    valueString: 'Coverage',
    valueEnum: CarePlanActivityKindBuilderEnum.coverage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static CarePlanActivityKindBuilder coverageEligibilityRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.coverageEligibilityRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static CarePlanActivityKindBuilder coverageEligibilityResponse =
      CarePlanActivityKindBuilder._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: CarePlanActivityKindBuilderEnum.coverageEligibilityResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static CarePlanActivityKindBuilder detectedIssue =
      CarePlanActivityKindBuilder._(
    valueString: 'DetectedIssue',
    valueEnum: CarePlanActivityKindBuilderEnum.detectedIssue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static CarePlanActivityKindBuilder device = CarePlanActivityKindBuilder._(
    valueString: 'Device',
    valueEnum: CarePlanActivityKindBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// DeviceDefinition
  static CarePlanActivityKindBuilder deviceDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'DeviceDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.deviceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceMetric
  static CarePlanActivityKindBuilder deviceMetric =
      CarePlanActivityKindBuilder._(
    valueString: 'DeviceMetric',
    valueEnum: CarePlanActivityKindBuilderEnum.deviceMetric,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static CarePlanActivityKindBuilder deviceRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'DeviceRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.deviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUseStatement
  static CarePlanActivityKindBuilder deviceUseStatement =
      CarePlanActivityKindBuilder._(
    valueString: 'DeviceUseStatement',
    valueEnum: CarePlanActivityKindBuilderEnum.deviceUseStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticReport
  static CarePlanActivityKindBuilder diagnosticReport =
      CarePlanActivityKindBuilder._(
    valueString: 'DiagnosticReport',
    valueEnum: CarePlanActivityKindBuilderEnum.diagnosticReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentManifest
  static CarePlanActivityKindBuilder documentManifest =
      CarePlanActivityKindBuilder._(
    valueString: 'DocumentManifest',
    valueEnum: CarePlanActivityKindBuilderEnum.documentManifest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DocumentManifest',
    ),
  );

  /// DocumentReference
  static CarePlanActivityKindBuilder documentReference =
      CarePlanActivityKindBuilder._(
    valueString: 'DocumentReference',
    valueEnum: CarePlanActivityKindBuilderEnum.documentReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static CarePlanActivityKindBuilder encounter = CarePlanActivityKindBuilder._(
    valueString: 'Encounter',
    valueEnum: CarePlanActivityKindBuilderEnum.encounter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Encounter',
    ),
  );

  /// Endpoint
  static CarePlanActivityKindBuilder endpoint = CarePlanActivityKindBuilder._(
    valueString: 'Endpoint',
    valueEnum: CarePlanActivityKindBuilderEnum.endpoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static CarePlanActivityKindBuilder enrollmentRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'EnrollmentRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.enrollmentRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static CarePlanActivityKindBuilder enrollmentResponse =
      CarePlanActivityKindBuilder._(
    valueString: 'EnrollmentResponse',
    valueEnum: CarePlanActivityKindBuilderEnum.enrollmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static CarePlanActivityKindBuilder episodeOfCare =
      CarePlanActivityKindBuilder._(
    valueString: 'EpisodeOfCare',
    valueEnum: CarePlanActivityKindBuilderEnum.episodeOfCare,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static CarePlanActivityKindBuilder eventDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'EventDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.eventDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static CarePlanActivityKindBuilder evidence = CarePlanActivityKindBuilder._(
    valueString: 'Evidence',
    valueEnum: CarePlanActivityKindBuilderEnum.evidence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static CarePlanActivityKindBuilder evidenceReport =
      CarePlanActivityKindBuilder._(
    valueString: 'EvidenceReport',
    valueEnum: CarePlanActivityKindBuilderEnum.evidenceReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static CarePlanActivityKindBuilder evidenceVariable =
      CarePlanActivityKindBuilder._(
    valueString: 'EvidenceVariable',
    valueEnum: CarePlanActivityKindBuilderEnum.evidenceVariable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static CarePlanActivityKindBuilder exampleScenario =
      CarePlanActivityKindBuilder._(
    valueString: 'ExampleScenario',
    valueEnum: CarePlanActivityKindBuilderEnum.exampleScenario,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static CarePlanActivityKindBuilder explanationOfBenefit =
      CarePlanActivityKindBuilder._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: CarePlanActivityKindBuilderEnum.explanationOfBenefit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static CarePlanActivityKindBuilder familyMemberHistory =
      CarePlanActivityKindBuilder._(
    valueString: 'FamilyMemberHistory',
    valueEnum: CarePlanActivityKindBuilderEnum.familyMemberHistory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static CarePlanActivityKindBuilder flag = CarePlanActivityKindBuilder._(
    valueString: 'Flag',
    valueEnum: CarePlanActivityKindBuilderEnum.flag,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Flag',
    ),
  );

  /// Goal
  static CarePlanActivityKindBuilder goal = CarePlanActivityKindBuilder._(
    valueString: 'Goal',
    valueEnum: CarePlanActivityKindBuilderEnum.goal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static CarePlanActivityKindBuilder graphDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'GraphDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.graphDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static CarePlanActivityKindBuilder group = CarePlanActivityKindBuilder._(
    valueString: 'Group',
    valueEnum: CarePlanActivityKindBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static CarePlanActivityKindBuilder guidanceResponse =
      CarePlanActivityKindBuilder._(
    valueString: 'GuidanceResponse',
    valueEnum: CarePlanActivityKindBuilderEnum.guidanceResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static CarePlanActivityKindBuilder healthcareService =
      CarePlanActivityKindBuilder._(
    valueString: 'HealthcareService',
    valueEnum: CarePlanActivityKindBuilderEnum.healthcareService,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingStudy
  static CarePlanActivityKindBuilder imagingStudy =
      CarePlanActivityKindBuilder._(
    valueString: 'ImagingStudy',
    valueEnum: CarePlanActivityKindBuilderEnum.imagingStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static CarePlanActivityKindBuilder immunization =
      CarePlanActivityKindBuilder._(
    valueString: 'Immunization',
    valueEnum: CarePlanActivityKindBuilderEnum.immunization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static CarePlanActivityKindBuilder immunizationEvaluation =
      CarePlanActivityKindBuilder._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: CarePlanActivityKindBuilderEnum.immunizationEvaluation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static CarePlanActivityKindBuilder immunizationRecommendation =
      CarePlanActivityKindBuilder._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: CarePlanActivityKindBuilderEnum.immunizationRecommendation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static CarePlanActivityKindBuilder implementationGuide =
      CarePlanActivityKindBuilder._(
    valueString: 'ImplementationGuide',
    valueEnum: CarePlanActivityKindBuilderEnum.implementationGuide,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static CarePlanActivityKindBuilder ingredient = CarePlanActivityKindBuilder._(
    valueString: 'Ingredient',
    valueEnum: CarePlanActivityKindBuilderEnum.ingredient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static CarePlanActivityKindBuilder insurancePlan =
      CarePlanActivityKindBuilder._(
    valueString: 'InsurancePlan',
    valueEnum: CarePlanActivityKindBuilderEnum.insurancePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'InsurancePlan',
    ),
  );

  /// Invoice
  static CarePlanActivityKindBuilder invoice = CarePlanActivityKindBuilder._(
    valueString: 'Invoice',
    valueEnum: CarePlanActivityKindBuilderEnum.invoice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static CarePlanActivityKindBuilder library = CarePlanActivityKindBuilder._(
    valueString: 'Library',
    valueEnum: CarePlanActivityKindBuilderEnum.library,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static CarePlanActivityKindBuilder linkage = CarePlanActivityKindBuilder._(
    valueString: 'Linkage',
    valueEnum: CarePlanActivityKindBuilderEnum.linkage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static CarePlanActivityKindBuilder list_ = CarePlanActivityKindBuilder._(
    valueString: 'List',
    valueEnum: CarePlanActivityKindBuilderEnum.list_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'List',
    ),
  );

  /// Location
  static CarePlanActivityKindBuilder location = CarePlanActivityKindBuilder._(
    valueString: 'Location',
    valueEnum: CarePlanActivityKindBuilderEnum.location,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static CarePlanActivityKindBuilder manufacturedItemDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.manufacturedItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static CarePlanActivityKindBuilder measure = CarePlanActivityKindBuilder._(
    valueString: 'Measure',
    valueEnum: CarePlanActivityKindBuilderEnum.measure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static CarePlanActivityKindBuilder measureReport =
      CarePlanActivityKindBuilder._(
    valueString: 'MeasureReport',
    valueEnum: CarePlanActivityKindBuilderEnum.measureReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MeasureReport',
    ),
  );

  /// Media
  static CarePlanActivityKindBuilder media = CarePlanActivityKindBuilder._(
    valueString: 'Media',
    valueEnum: CarePlanActivityKindBuilderEnum.media,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Media',
    ),
  );

  /// Medication
  static CarePlanActivityKindBuilder medication = CarePlanActivityKindBuilder._(
    valueString: 'Medication',
    valueEnum: CarePlanActivityKindBuilderEnum.medication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static CarePlanActivityKindBuilder medicationAdministration =
      CarePlanActivityKindBuilder._(
    valueString: 'MedicationAdministration',
    valueEnum: CarePlanActivityKindBuilderEnum.medicationAdministration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static CarePlanActivityKindBuilder medicationDispense =
      CarePlanActivityKindBuilder._(
    valueString: 'MedicationDispense',
    valueEnum: CarePlanActivityKindBuilderEnum.medicationDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static CarePlanActivityKindBuilder medicationKnowledge =
      CarePlanActivityKindBuilder._(
    valueString: 'MedicationKnowledge',
    valueEnum: CarePlanActivityKindBuilderEnum.medicationKnowledge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static CarePlanActivityKindBuilder medicationRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'MedicationRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.medicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static CarePlanActivityKindBuilder medicationStatement =
      CarePlanActivityKindBuilder._(
    valueString: 'MedicationStatement',
    valueEnum: CarePlanActivityKindBuilderEnum.medicationStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static CarePlanActivityKindBuilder medicinalProductDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.medicinalProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static CarePlanActivityKindBuilder messageDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'MessageDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.messageDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static CarePlanActivityKindBuilder messageHeader =
      CarePlanActivityKindBuilder._(
    valueString: 'MessageHeader',
    valueEnum: CarePlanActivityKindBuilderEnum.messageHeader,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageHeader',
    ),
  );

  /// MolecularSequence
  static CarePlanActivityKindBuilder molecularSequence =
      CarePlanActivityKindBuilder._(
    valueString: 'MolecularSequence',
    valueEnum: CarePlanActivityKindBuilderEnum.molecularSequence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static CarePlanActivityKindBuilder namingSystem =
      CarePlanActivityKindBuilder._(
    valueString: 'NamingSystem',
    valueEnum: CarePlanActivityKindBuilderEnum.namingSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionOrder
  static CarePlanActivityKindBuilder nutritionOrder =
      CarePlanActivityKindBuilder._(
    valueString: 'NutritionOrder',
    valueEnum: CarePlanActivityKindBuilderEnum.nutritionOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static CarePlanActivityKindBuilder nutritionProduct =
      CarePlanActivityKindBuilder._(
    valueString: 'NutritionProduct',
    valueEnum: CarePlanActivityKindBuilderEnum.nutritionProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static CarePlanActivityKindBuilder observation =
      CarePlanActivityKindBuilder._(
    valueString: 'Observation',
    valueEnum: CarePlanActivityKindBuilderEnum.observation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static CarePlanActivityKindBuilder observationDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ObservationDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.observationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static CarePlanActivityKindBuilder operationDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'OperationDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.operationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static CarePlanActivityKindBuilder operationOutcome =
      CarePlanActivityKindBuilder._(
    valueString: 'OperationOutcome',
    valueEnum: CarePlanActivityKindBuilderEnum.operationOutcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static CarePlanActivityKindBuilder organization =
      CarePlanActivityKindBuilder._(
    valueString: 'Organization',
    valueEnum: CarePlanActivityKindBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static CarePlanActivityKindBuilder organizationAffiliation =
      CarePlanActivityKindBuilder._(
    valueString: 'OrganizationAffiliation',
    valueEnum: CarePlanActivityKindBuilderEnum.organizationAffiliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static CarePlanActivityKindBuilder packagedProductDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'PackagedProductDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.packagedProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static CarePlanActivityKindBuilder patient = CarePlanActivityKindBuilder._(
    valueString: 'Patient',
    valueEnum: CarePlanActivityKindBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static CarePlanActivityKindBuilder paymentNotice =
      CarePlanActivityKindBuilder._(
    valueString: 'PaymentNotice',
    valueEnum: CarePlanActivityKindBuilderEnum.paymentNotice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static CarePlanActivityKindBuilder paymentReconciliation =
      CarePlanActivityKindBuilder._(
    valueString: 'PaymentReconciliation',
    valueEnum: CarePlanActivityKindBuilderEnum.paymentReconciliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Person
  static CarePlanActivityKindBuilder person = CarePlanActivityKindBuilder._(
    valueString: 'Person',
    valueEnum: CarePlanActivityKindBuilderEnum.person,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static CarePlanActivityKindBuilder planDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'PlanDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.planDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static CarePlanActivityKindBuilder practitioner =
      CarePlanActivityKindBuilder._(
    valueString: 'Practitioner',
    valueEnum: CarePlanActivityKindBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static CarePlanActivityKindBuilder practitionerRole =
      CarePlanActivityKindBuilder._(
    valueString: 'PractitionerRole',
    valueEnum: CarePlanActivityKindBuilderEnum.practitionerRole,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static CarePlanActivityKindBuilder procedure = CarePlanActivityKindBuilder._(
    valueString: 'Procedure',
    valueEnum: CarePlanActivityKindBuilderEnum.procedure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static CarePlanActivityKindBuilder provenance = CarePlanActivityKindBuilder._(
    valueString: 'Provenance',
    valueEnum: CarePlanActivityKindBuilderEnum.provenance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static CarePlanActivityKindBuilder questionnaire =
      CarePlanActivityKindBuilder._(
    valueString: 'Questionnaire',
    valueEnum: CarePlanActivityKindBuilderEnum.questionnaire,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static CarePlanActivityKindBuilder questionnaireResponse =
      CarePlanActivityKindBuilder._(
    valueString: 'QuestionnaireResponse',
    valueEnum: CarePlanActivityKindBuilderEnum.questionnaireResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static CarePlanActivityKindBuilder regulatedAuthorization =
      CarePlanActivityKindBuilder._(
    valueString: 'RegulatedAuthorization',
    valueEnum: CarePlanActivityKindBuilderEnum.regulatedAuthorization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static CarePlanActivityKindBuilder relatedPerson =
      CarePlanActivityKindBuilder._(
    valueString: 'RelatedPerson',
    valueEnum: CarePlanActivityKindBuilderEnum.relatedPerson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestGroup
  static CarePlanActivityKindBuilder requestGroup =
      CarePlanActivityKindBuilder._(
    valueString: 'RequestGroup',
    valueEnum: CarePlanActivityKindBuilderEnum.requestGroup,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static CarePlanActivityKindBuilder researchDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ResearchDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.researchDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static CarePlanActivityKindBuilder researchElementDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'ResearchElementDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.researchElementDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// ResearchStudy
  static CarePlanActivityKindBuilder researchStudy =
      CarePlanActivityKindBuilder._(
    valueString: 'ResearchStudy',
    valueEnum: CarePlanActivityKindBuilderEnum.researchStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static CarePlanActivityKindBuilder researchSubject =
      CarePlanActivityKindBuilder._(
    valueString: 'ResearchSubject',
    valueEnum: CarePlanActivityKindBuilderEnum.researchSubject,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static CarePlanActivityKindBuilder riskAssessment =
      CarePlanActivityKindBuilder._(
    valueString: 'RiskAssessment',
    valueEnum: CarePlanActivityKindBuilderEnum.riskAssessment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static CarePlanActivityKindBuilder schedule = CarePlanActivityKindBuilder._(
    valueString: 'Schedule',
    valueEnum: CarePlanActivityKindBuilderEnum.schedule,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static CarePlanActivityKindBuilder searchParameter =
      CarePlanActivityKindBuilder._(
    valueString: 'SearchParameter',
    valueEnum: CarePlanActivityKindBuilderEnum.searchParameter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static CarePlanActivityKindBuilder serviceRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'ServiceRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.serviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static CarePlanActivityKindBuilder slot = CarePlanActivityKindBuilder._(
    valueString: 'Slot',
    valueEnum: CarePlanActivityKindBuilderEnum.slot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static CarePlanActivityKindBuilder specimen = CarePlanActivityKindBuilder._(
    valueString: 'Specimen',
    valueEnum: CarePlanActivityKindBuilderEnum.specimen,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static CarePlanActivityKindBuilder specimenDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'SpecimenDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.specimenDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static CarePlanActivityKindBuilder structureDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'StructureDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.structureDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static CarePlanActivityKindBuilder structureMap =
      CarePlanActivityKindBuilder._(
    valueString: 'StructureMap',
    valueEnum: CarePlanActivityKindBuilderEnum.structureMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static CarePlanActivityKindBuilder subscription =
      CarePlanActivityKindBuilder._(
    valueString: 'Subscription',
    valueEnum: CarePlanActivityKindBuilderEnum.subscription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static CarePlanActivityKindBuilder subscriptionStatus =
      CarePlanActivityKindBuilder._(
    valueString: 'SubscriptionStatus',
    valueEnum: CarePlanActivityKindBuilderEnum.subscriptionStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static CarePlanActivityKindBuilder subscriptionTopic =
      CarePlanActivityKindBuilder._(
    valueString: 'SubscriptionTopic',
    valueEnum: CarePlanActivityKindBuilderEnum.subscriptionTopic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static CarePlanActivityKindBuilder substance = CarePlanActivityKindBuilder._(
    valueString: 'Substance',
    valueEnum: CarePlanActivityKindBuilderEnum.substance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static CarePlanActivityKindBuilder substanceDefinition =
      CarePlanActivityKindBuilder._(
    valueString: 'SubstanceDefinition',
    valueEnum: CarePlanActivityKindBuilderEnum.substanceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SupplyDelivery
  static CarePlanActivityKindBuilder supplyDelivery =
      CarePlanActivityKindBuilder._(
    valueString: 'SupplyDelivery',
    valueEnum: CarePlanActivityKindBuilderEnum.supplyDelivery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static CarePlanActivityKindBuilder supplyRequest =
      CarePlanActivityKindBuilder._(
    valueString: 'SupplyRequest',
    valueEnum: CarePlanActivityKindBuilderEnum.supplyRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static CarePlanActivityKindBuilder task = CarePlanActivityKindBuilder._(
    valueString: 'Task',
    valueEnum: CarePlanActivityKindBuilderEnum.task,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static CarePlanActivityKindBuilder terminologyCapabilities =
      CarePlanActivityKindBuilder._(
    valueString: 'TerminologyCapabilities',
    valueEnum: CarePlanActivityKindBuilderEnum.terminologyCapabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestReport
  static CarePlanActivityKindBuilder testReport = CarePlanActivityKindBuilder._(
    valueString: 'TestReport',
    valueEnum: CarePlanActivityKindBuilderEnum.testReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static CarePlanActivityKindBuilder testScript = CarePlanActivityKindBuilder._(
    valueString: 'TestScript',
    valueEnum: CarePlanActivityKindBuilderEnum.testScript,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TestScript',
    ),
  );

  /// ValueSet
  static CarePlanActivityKindBuilder valueSet = CarePlanActivityKindBuilder._(
    valueString: 'ValueSet',
    valueEnum: CarePlanActivityKindBuilderEnum.valueSet,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static CarePlanActivityKindBuilder verificationResult =
      CarePlanActivityKindBuilder._(
    valueString: 'VerificationResult',
    valueEnum: CarePlanActivityKindBuilderEnum.verificationResult,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static CarePlanActivityKindBuilder visionPrescription =
      CarePlanActivityKindBuilder._(
    valueString: 'VisionPrescription',
    valueEnum: CarePlanActivityKindBuilderEnum.visionPrescription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static CarePlanActivityKindBuilder parameters = CarePlanActivityKindBuilder._(
    valueString: 'Parameters',
    valueEnum: CarePlanActivityKindBuilderEnum.parameters,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Parameters',
    ),
  );

  /// For instances where an Element is present but not value
  static CarePlanActivityKindBuilder elementOnly =
      CarePlanActivityKindBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CarePlanActivityKindBuilder> values = [
    resource,
    binary,
    bundle,
    domainResource,
    account,
    activityDefinition,
    administrableProductDefinition,
    adverseEvent,
    allergyIntolerance,
    appointment,
    appointmentResponse,
    auditEvent,
    basic,
    biologicallyDerivedProduct,
    bodyStructure,
    capabilityStatement,
    carePlan,
    careTeam,
    catalogEntry,
    chargeItem,
    chargeItemDefinition,
    citation,
    claim,
    claimResponse,
    clinicalImpression,
    clinicalUseDefinition,
    codeSystem,
    communication,
    communicationRequest,
    compartmentDefinition,
    composition,
    conceptMap,
    condition,
    consent,
    contract,
    coverage,
    coverageEligibilityRequest,
    coverageEligibilityResponse,
    detectedIssue,
    device,
    deviceDefinition,
    deviceMetric,
    deviceRequest,
    deviceUseStatement,
    diagnosticReport,
    documentManifest,
    documentReference,
    encounter,
    endpoint,
    enrollmentRequest,
    enrollmentResponse,
    episodeOfCare,
    eventDefinition,
    evidence,
    evidenceReport,
    evidenceVariable,
    exampleScenario,
    explanationOfBenefit,
    familyMemberHistory,
    flag,
    goal,
    graphDefinition,
    group,
    guidanceResponse,
    healthcareService,
    imagingStudy,
    immunization,
    immunizationEvaluation,
    immunizationRecommendation,
    implementationGuide,
    ingredient,
    insurancePlan,
    invoice,
    library,
    linkage,
    list_,
    location,
    manufacturedItemDefinition,
    measure,
    measureReport,
    media,
    medication,
    medicationAdministration,
    medicationDispense,
    medicationKnowledge,
    medicationRequest,
    medicationStatement,
    medicinalProductDefinition,
    messageDefinition,
    messageHeader,
    molecularSequence,
    namingSystem,
    nutritionOrder,
    nutritionProduct,
    observation,
    observationDefinition,
    operationDefinition,
    operationOutcome,
    organization,
    organizationAffiliation,
    packagedProductDefinition,
    patient,
    paymentNotice,
    paymentReconciliation,
    person,
    planDefinition,
    practitioner,
    practitionerRole,
    procedure,
    provenance,
    questionnaire,
    questionnaireResponse,
    regulatedAuthorization,
    relatedPerson,
    requestGroup,
    researchDefinition,
    researchElementDefinition,
    researchStudy,
    researchSubject,
    riskAssessment,
    schedule,
    searchParameter,
    serviceRequest,
    slot,
    specimen,
    specimenDefinition,
    structureDefinition,
    structureMap,
    subscription,
    subscriptionStatus,
    subscriptionTopic,
    substance,
    substanceDefinition,
    supplyDelivery,
    supplyRequest,
    task,
    terminologyCapabilities,
    testReport,
    testScript,
    valueSet,
    verificationResult,
    visionPrescription,
    parameters,
  ];

  /// Returns the enum value with an element attached
  CarePlanActivityKindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CarePlanActivityKindBuilder._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';
}
