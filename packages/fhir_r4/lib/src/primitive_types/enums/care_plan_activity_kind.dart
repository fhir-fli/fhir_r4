// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CarePlanActivityKind
enum CarePlanActivityKindEnum {
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
      case CarePlanActivityKindEnum.resource:
        return 'Resource';
      case CarePlanActivityKindEnum.binary:
        return 'Binary';
      case CarePlanActivityKindEnum.bundle:
        return 'Bundle';
      case CarePlanActivityKindEnum.domainResource:
        return 'DomainResource';
      case CarePlanActivityKindEnum.account:
        return 'Account';
      case CarePlanActivityKindEnum.activityDefinition:
        return 'ActivityDefinition';
      case CarePlanActivityKindEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case CarePlanActivityKindEnum.adverseEvent:
        return 'AdverseEvent';
      case CarePlanActivityKindEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case CarePlanActivityKindEnum.appointment:
        return 'Appointment';
      case CarePlanActivityKindEnum.appointmentResponse:
        return 'AppointmentResponse';
      case CarePlanActivityKindEnum.auditEvent:
        return 'AuditEvent';
      case CarePlanActivityKindEnum.basic:
        return 'Basic';
      case CarePlanActivityKindEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case CarePlanActivityKindEnum.bodyStructure:
        return 'BodyStructure';
      case CarePlanActivityKindEnum.capabilityStatement:
        return 'CapabilityStatement';
      case CarePlanActivityKindEnum.carePlan:
        return 'CarePlan';
      case CarePlanActivityKindEnum.careTeam:
        return 'CareTeam';
      case CarePlanActivityKindEnum.catalogEntry:
        return 'CatalogEntry';
      case CarePlanActivityKindEnum.chargeItem:
        return 'ChargeItem';
      case CarePlanActivityKindEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case CarePlanActivityKindEnum.citation:
        return 'Citation';
      case CarePlanActivityKindEnum.claim:
        return 'Claim';
      case CarePlanActivityKindEnum.claimResponse:
        return 'ClaimResponse';
      case CarePlanActivityKindEnum.clinicalImpression:
        return 'ClinicalImpression';
      case CarePlanActivityKindEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case CarePlanActivityKindEnum.codeSystem:
        return 'CodeSystem';
      case CarePlanActivityKindEnum.communication:
        return 'Communication';
      case CarePlanActivityKindEnum.communicationRequest:
        return 'CommunicationRequest';
      case CarePlanActivityKindEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case CarePlanActivityKindEnum.composition:
        return 'Composition';
      case CarePlanActivityKindEnum.conceptMap:
        return 'ConceptMap';
      case CarePlanActivityKindEnum.condition:
        return 'Condition';
      case CarePlanActivityKindEnum.consent:
        return 'Consent';
      case CarePlanActivityKindEnum.contract:
        return 'Contract';
      case CarePlanActivityKindEnum.coverage:
        return 'Coverage';
      case CarePlanActivityKindEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case CarePlanActivityKindEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case CarePlanActivityKindEnum.detectedIssue:
        return 'DetectedIssue';
      case CarePlanActivityKindEnum.device:
        return 'Device';
      case CarePlanActivityKindEnum.deviceDefinition:
        return 'DeviceDefinition';
      case CarePlanActivityKindEnum.deviceMetric:
        return 'DeviceMetric';
      case CarePlanActivityKindEnum.deviceRequest:
        return 'DeviceRequest';
      case CarePlanActivityKindEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case CarePlanActivityKindEnum.diagnosticReport:
        return 'DiagnosticReport';
      case CarePlanActivityKindEnum.documentManifest:
        return 'DocumentManifest';
      case CarePlanActivityKindEnum.documentReference:
        return 'DocumentReference';
      case CarePlanActivityKindEnum.encounter:
        return 'Encounter';
      case CarePlanActivityKindEnum.endpoint:
        return 'Endpoint';
      case CarePlanActivityKindEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case CarePlanActivityKindEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case CarePlanActivityKindEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case CarePlanActivityKindEnum.eventDefinition:
        return 'EventDefinition';
      case CarePlanActivityKindEnum.evidence:
        return 'Evidence';
      case CarePlanActivityKindEnum.evidenceReport:
        return 'EvidenceReport';
      case CarePlanActivityKindEnum.evidenceVariable:
        return 'EvidenceVariable';
      case CarePlanActivityKindEnum.exampleScenario:
        return 'ExampleScenario';
      case CarePlanActivityKindEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case CarePlanActivityKindEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case CarePlanActivityKindEnum.flag:
        return 'Flag';
      case CarePlanActivityKindEnum.goal:
        return 'Goal';
      case CarePlanActivityKindEnum.graphDefinition:
        return 'GraphDefinition';
      case CarePlanActivityKindEnum.group:
        return 'Group';
      case CarePlanActivityKindEnum.guidanceResponse:
        return 'GuidanceResponse';
      case CarePlanActivityKindEnum.healthcareService:
        return 'HealthcareService';
      case CarePlanActivityKindEnum.imagingStudy:
        return 'ImagingStudy';
      case CarePlanActivityKindEnum.immunization:
        return 'Immunization';
      case CarePlanActivityKindEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case CarePlanActivityKindEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case CarePlanActivityKindEnum.implementationGuide:
        return 'ImplementationGuide';
      case CarePlanActivityKindEnum.ingredient:
        return 'Ingredient';
      case CarePlanActivityKindEnum.insurancePlan:
        return 'InsurancePlan';
      case CarePlanActivityKindEnum.invoice:
        return 'Invoice';
      case CarePlanActivityKindEnum.library:
        return 'Library';
      case CarePlanActivityKindEnum.linkage:
        return 'Linkage';
      case CarePlanActivityKindEnum.list_:
        return 'List';
      case CarePlanActivityKindEnum.location:
        return 'Location';
      case CarePlanActivityKindEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case CarePlanActivityKindEnum.measure:
        return 'Measure';
      case CarePlanActivityKindEnum.measureReport:
        return 'MeasureReport';
      case CarePlanActivityKindEnum.media:
        return 'Media';
      case CarePlanActivityKindEnum.medication:
        return 'Medication';
      case CarePlanActivityKindEnum.medicationAdministration:
        return 'MedicationAdministration';
      case CarePlanActivityKindEnum.medicationDispense:
        return 'MedicationDispense';
      case CarePlanActivityKindEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case CarePlanActivityKindEnum.medicationRequest:
        return 'MedicationRequest';
      case CarePlanActivityKindEnum.medicationStatement:
        return 'MedicationStatement';
      case CarePlanActivityKindEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case CarePlanActivityKindEnum.messageDefinition:
        return 'MessageDefinition';
      case CarePlanActivityKindEnum.messageHeader:
        return 'MessageHeader';
      case CarePlanActivityKindEnum.molecularSequence:
        return 'MolecularSequence';
      case CarePlanActivityKindEnum.namingSystem:
        return 'NamingSystem';
      case CarePlanActivityKindEnum.nutritionOrder:
        return 'NutritionOrder';
      case CarePlanActivityKindEnum.nutritionProduct:
        return 'NutritionProduct';
      case CarePlanActivityKindEnum.observation:
        return 'Observation';
      case CarePlanActivityKindEnum.observationDefinition:
        return 'ObservationDefinition';
      case CarePlanActivityKindEnum.operationDefinition:
        return 'OperationDefinition';
      case CarePlanActivityKindEnum.operationOutcome:
        return 'OperationOutcome';
      case CarePlanActivityKindEnum.organization:
        return 'Organization';
      case CarePlanActivityKindEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case CarePlanActivityKindEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case CarePlanActivityKindEnum.patient:
        return 'Patient';
      case CarePlanActivityKindEnum.paymentNotice:
        return 'PaymentNotice';
      case CarePlanActivityKindEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case CarePlanActivityKindEnum.person:
        return 'Person';
      case CarePlanActivityKindEnum.planDefinition:
        return 'PlanDefinition';
      case CarePlanActivityKindEnum.practitioner:
        return 'Practitioner';
      case CarePlanActivityKindEnum.practitionerRole:
        return 'PractitionerRole';
      case CarePlanActivityKindEnum.procedure:
        return 'Procedure';
      case CarePlanActivityKindEnum.provenance:
        return 'Provenance';
      case CarePlanActivityKindEnum.questionnaire:
        return 'Questionnaire';
      case CarePlanActivityKindEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case CarePlanActivityKindEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case CarePlanActivityKindEnum.relatedPerson:
        return 'RelatedPerson';
      case CarePlanActivityKindEnum.requestGroup:
        return 'RequestGroup';
      case CarePlanActivityKindEnum.researchDefinition:
        return 'ResearchDefinition';
      case CarePlanActivityKindEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case CarePlanActivityKindEnum.researchStudy:
        return 'ResearchStudy';
      case CarePlanActivityKindEnum.researchSubject:
        return 'ResearchSubject';
      case CarePlanActivityKindEnum.riskAssessment:
        return 'RiskAssessment';
      case CarePlanActivityKindEnum.schedule:
        return 'Schedule';
      case CarePlanActivityKindEnum.searchParameter:
        return 'SearchParameter';
      case CarePlanActivityKindEnum.serviceRequest:
        return 'ServiceRequest';
      case CarePlanActivityKindEnum.slot:
        return 'Slot';
      case CarePlanActivityKindEnum.specimen:
        return 'Specimen';
      case CarePlanActivityKindEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case CarePlanActivityKindEnum.structureDefinition:
        return 'StructureDefinition';
      case CarePlanActivityKindEnum.structureMap:
        return 'StructureMap';
      case CarePlanActivityKindEnum.subscription:
        return 'Subscription';
      case CarePlanActivityKindEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case CarePlanActivityKindEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case CarePlanActivityKindEnum.substance:
        return 'Substance';
      case CarePlanActivityKindEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case CarePlanActivityKindEnum.supplyDelivery:
        return 'SupplyDelivery';
      case CarePlanActivityKindEnum.supplyRequest:
        return 'SupplyRequest';
      case CarePlanActivityKindEnum.task:
        return 'Task';
      case CarePlanActivityKindEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case CarePlanActivityKindEnum.testReport:
        return 'TestReport';
      case CarePlanActivityKindEnum.testScript:
        return 'TestScript';
      case CarePlanActivityKindEnum.valueSet:
        return 'ValueSet';
      case CarePlanActivityKindEnum.verificationResult:
        return 'VerificationResult';
      case CarePlanActivityKindEnum.visionPrescription:
        return 'VisionPrescription';
      case CarePlanActivityKindEnum.parameters:
        return 'Parameters';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CarePlanActivityKindEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CarePlanActivityKindEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CarePlanActivityKindEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Resource':
        return CarePlanActivityKindEnum.resource;
      case 'Binary':
        return CarePlanActivityKindEnum.binary;
      case 'Bundle':
        return CarePlanActivityKindEnum.bundle;
      case 'DomainResource':
        return CarePlanActivityKindEnum.domainResource;
      case 'Account':
        return CarePlanActivityKindEnum.account;
      case 'ActivityDefinition':
        return CarePlanActivityKindEnum.activityDefinition;
      case 'AdministrableProductDefinition':
        return CarePlanActivityKindEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return CarePlanActivityKindEnum.adverseEvent;
      case 'AllergyIntolerance':
        return CarePlanActivityKindEnum.allergyIntolerance;
      case 'Appointment':
        return CarePlanActivityKindEnum.appointment;
      case 'AppointmentResponse':
        return CarePlanActivityKindEnum.appointmentResponse;
      case 'AuditEvent':
        return CarePlanActivityKindEnum.auditEvent;
      case 'Basic':
        return CarePlanActivityKindEnum.basic;
      case 'BiologicallyDerivedProduct':
        return CarePlanActivityKindEnum.biologicallyDerivedProduct;
      case 'BodyStructure':
        return CarePlanActivityKindEnum.bodyStructure;
      case 'CapabilityStatement':
        return CarePlanActivityKindEnum.capabilityStatement;
      case 'CarePlan':
        return CarePlanActivityKindEnum.carePlan;
      case 'CareTeam':
        return CarePlanActivityKindEnum.careTeam;
      case 'CatalogEntry':
        return CarePlanActivityKindEnum.catalogEntry;
      case 'ChargeItem':
        return CarePlanActivityKindEnum.chargeItem;
      case 'ChargeItemDefinition':
        return CarePlanActivityKindEnum.chargeItemDefinition;
      case 'Citation':
        return CarePlanActivityKindEnum.citation;
      case 'Claim':
        return CarePlanActivityKindEnum.claim;
      case 'ClaimResponse':
        return CarePlanActivityKindEnum.claimResponse;
      case 'ClinicalImpression':
        return CarePlanActivityKindEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return CarePlanActivityKindEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return CarePlanActivityKindEnum.codeSystem;
      case 'Communication':
        return CarePlanActivityKindEnum.communication;
      case 'CommunicationRequest':
        return CarePlanActivityKindEnum.communicationRequest;
      case 'CompartmentDefinition':
        return CarePlanActivityKindEnum.compartmentDefinition;
      case 'Composition':
        return CarePlanActivityKindEnum.composition;
      case 'ConceptMap':
        return CarePlanActivityKindEnum.conceptMap;
      case 'Condition':
        return CarePlanActivityKindEnum.condition;
      case 'Consent':
        return CarePlanActivityKindEnum.consent;
      case 'Contract':
        return CarePlanActivityKindEnum.contract;
      case 'Coverage':
        return CarePlanActivityKindEnum.coverage;
      case 'CoverageEligibilityRequest':
        return CarePlanActivityKindEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return CarePlanActivityKindEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return CarePlanActivityKindEnum.detectedIssue;
      case 'Device':
        return CarePlanActivityKindEnum.device;
      case 'DeviceDefinition':
        return CarePlanActivityKindEnum.deviceDefinition;
      case 'DeviceMetric':
        return CarePlanActivityKindEnum.deviceMetric;
      case 'DeviceRequest':
        return CarePlanActivityKindEnum.deviceRequest;
      case 'DeviceUseStatement':
        return CarePlanActivityKindEnum.deviceUseStatement;
      case 'DiagnosticReport':
        return CarePlanActivityKindEnum.diagnosticReport;
      case 'DocumentManifest':
        return CarePlanActivityKindEnum.documentManifest;
      case 'DocumentReference':
        return CarePlanActivityKindEnum.documentReference;
      case 'Encounter':
        return CarePlanActivityKindEnum.encounter;
      case 'Endpoint':
        return CarePlanActivityKindEnum.endpoint;
      case 'EnrollmentRequest':
        return CarePlanActivityKindEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return CarePlanActivityKindEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return CarePlanActivityKindEnum.episodeOfCare;
      case 'EventDefinition':
        return CarePlanActivityKindEnum.eventDefinition;
      case 'Evidence':
        return CarePlanActivityKindEnum.evidence;
      case 'EvidenceReport':
        return CarePlanActivityKindEnum.evidenceReport;
      case 'EvidenceVariable':
        return CarePlanActivityKindEnum.evidenceVariable;
      case 'ExampleScenario':
        return CarePlanActivityKindEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return CarePlanActivityKindEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return CarePlanActivityKindEnum.familyMemberHistory;
      case 'Flag':
        return CarePlanActivityKindEnum.flag;
      case 'Goal':
        return CarePlanActivityKindEnum.goal;
      case 'GraphDefinition':
        return CarePlanActivityKindEnum.graphDefinition;
      case 'Group':
        return CarePlanActivityKindEnum.group;
      case 'GuidanceResponse':
        return CarePlanActivityKindEnum.guidanceResponse;
      case 'HealthcareService':
        return CarePlanActivityKindEnum.healthcareService;
      case 'ImagingStudy':
        return CarePlanActivityKindEnum.imagingStudy;
      case 'Immunization':
        return CarePlanActivityKindEnum.immunization;
      case 'ImmunizationEvaluation':
        return CarePlanActivityKindEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return CarePlanActivityKindEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return CarePlanActivityKindEnum.implementationGuide;
      case 'Ingredient':
        return CarePlanActivityKindEnum.ingredient;
      case 'InsurancePlan':
        return CarePlanActivityKindEnum.insurancePlan;
      case 'Invoice':
        return CarePlanActivityKindEnum.invoice;
      case 'Library':
        return CarePlanActivityKindEnum.library;
      case 'Linkage':
        return CarePlanActivityKindEnum.linkage;
      case 'List':
        return CarePlanActivityKindEnum.list_;
      case 'Location':
        return CarePlanActivityKindEnum.location;
      case 'ManufacturedItemDefinition':
        return CarePlanActivityKindEnum.manufacturedItemDefinition;
      case 'Measure':
        return CarePlanActivityKindEnum.measure;
      case 'MeasureReport':
        return CarePlanActivityKindEnum.measureReport;
      case 'Media':
        return CarePlanActivityKindEnum.media;
      case 'Medication':
        return CarePlanActivityKindEnum.medication;
      case 'MedicationAdministration':
        return CarePlanActivityKindEnum.medicationAdministration;
      case 'MedicationDispense':
        return CarePlanActivityKindEnum.medicationDispense;
      case 'MedicationKnowledge':
        return CarePlanActivityKindEnum.medicationKnowledge;
      case 'MedicationRequest':
        return CarePlanActivityKindEnum.medicationRequest;
      case 'MedicationStatement':
        return CarePlanActivityKindEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return CarePlanActivityKindEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return CarePlanActivityKindEnum.messageDefinition;
      case 'MessageHeader':
        return CarePlanActivityKindEnum.messageHeader;
      case 'MolecularSequence':
        return CarePlanActivityKindEnum.molecularSequence;
      case 'NamingSystem':
        return CarePlanActivityKindEnum.namingSystem;
      case 'NutritionOrder':
        return CarePlanActivityKindEnum.nutritionOrder;
      case 'NutritionProduct':
        return CarePlanActivityKindEnum.nutritionProduct;
      case 'Observation':
        return CarePlanActivityKindEnum.observation;
      case 'ObservationDefinition':
        return CarePlanActivityKindEnum.observationDefinition;
      case 'OperationDefinition':
        return CarePlanActivityKindEnum.operationDefinition;
      case 'OperationOutcome':
        return CarePlanActivityKindEnum.operationOutcome;
      case 'Organization':
        return CarePlanActivityKindEnum.organization;
      case 'OrganizationAffiliation':
        return CarePlanActivityKindEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return CarePlanActivityKindEnum.packagedProductDefinition;
      case 'Patient':
        return CarePlanActivityKindEnum.patient;
      case 'PaymentNotice':
        return CarePlanActivityKindEnum.paymentNotice;
      case 'PaymentReconciliation':
        return CarePlanActivityKindEnum.paymentReconciliation;
      case 'Person':
        return CarePlanActivityKindEnum.person;
      case 'PlanDefinition':
        return CarePlanActivityKindEnum.planDefinition;
      case 'Practitioner':
        return CarePlanActivityKindEnum.practitioner;
      case 'PractitionerRole':
        return CarePlanActivityKindEnum.practitionerRole;
      case 'Procedure':
        return CarePlanActivityKindEnum.procedure;
      case 'Provenance':
        return CarePlanActivityKindEnum.provenance;
      case 'Questionnaire':
        return CarePlanActivityKindEnum.questionnaire;
      case 'QuestionnaireResponse':
        return CarePlanActivityKindEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return CarePlanActivityKindEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return CarePlanActivityKindEnum.relatedPerson;
      case 'RequestGroup':
        return CarePlanActivityKindEnum.requestGroup;
      case 'ResearchDefinition':
        return CarePlanActivityKindEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return CarePlanActivityKindEnum.researchElementDefinition;
      case 'ResearchStudy':
        return CarePlanActivityKindEnum.researchStudy;
      case 'ResearchSubject':
        return CarePlanActivityKindEnum.researchSubject;
      case 'RiskAssessment':
        return CarePlanActivityKindEnum.riskAssessment;
      case 'Schedule':
        return CarePlanActivityKindEnum.schedule;
      case 'SearchParameter':
        return CarePlanActivityKindEnum.searchParameter;
      case 'ServiceRequest':
        return CarePlanActivityKindEnum.serviceRequest;
      case 'Slot':
        return CarePlanActivityKindEnum.slot;
      case 'Specimen':
        return CarePlanActivityKindEnum.specimen;
      case 'SpecimenDefinition':
        return CarePlanActivityKindEnum.specimenDefinition;
      case 'StructureDefinition':
        return CarePlanActivityKindEnum.structureDefinition;
      case 'StructureMap':
        return CarePlanActivityKindEnum.structureMap;
      case 'Subscription':
        return CarePlanActivityKindEnum.subscription;
      case 'SubscriptionStatus':
        return CarePlanActivityKindEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return CarePlanActivityKindEnum.subscriptionTopic;
      case 'Substance':
        return CarePlanActivityKindEnum.substance;
      case 'SubstanceDefinition':
        return CarePlanActivityKindEnum.substanceDefinition;
      case 'SupplyDelivery':
        return CarePlanActivityKindEnum.supplyDelivery;
      case 'SupplyRequest':
        return CarePlanActivityKindEnum.supplyRequest;
      case 'Task':
        return CarePlanActivityKindEnum.task;
      case 'TerminologyCapabilities':
        return CarePlanActivityKindEnum.terminologyCapabilities;
      case 'TestReport':
        return CarePlanActivityKindEnum.testReport;
      case 'TestScript':
        return CarePlanActivityKindEnum.testScript;
      case 'ValueSet':
        return CarePlanActivityKindEnum.valueSet;
      case 'VerificationResult':
        return CarePlanActivityKindEnum.verificationResult;
      case 'VisionPrescription':
        return CarePlanActivityKindEnum.visionPrescription;
      case 'Parameters':
        return CarePlanActivityKindEnum.parameters;
    }
    return null;
  }
}

/// Resource types defined as part of FHIR that can be represented as
/// in-line definitions of a care plan activity.
class CarePlanActivityKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CarePlanActivityKind._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CarePlanActivityKind(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = CarePlanActivityKindEnum.fromString(valueString);
    return CarePlanActivityKind._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [CarePlanActivityKind]
  /// from JSON.
  factory CarePlanActivityKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CarePlanActivityKindEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityKind._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityKind cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityKind._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CarePlanActivityKind
  final CarePlanActivityKindEnum? valueEnum;

  /// Resource
  static const CarePlanActivityKind resource = CarePlanActivityKind._(
    valueString: 'Resource',
    valueEnum: CarePlanActivityKindEnum.resource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static const CarePlanActivityKind binary = CarePlanActivityKind._(
    valueString: 'Binary',
    valueEnum: CarePlanActivityKindEnum.binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static const CarePlanActivityKind bundle = CarePlanActivityKind._(
    valueString: 'Bundle',
    valueEnum: CarePlanActivityKindEnum.bundle,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static const CarePlanActivityKind domainResource = CarePlanActivityKind._(
    valueString: 'DomainResource',
    valueEnum: CarePlanActivityKindEnum.domainResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static const CarePlanActivityKind account = CarePlanActivityKind._(
    valueString: 'Account',
    valueEnum: CarePlanActivityKindEnum.account,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static const CarePlanActivityKind activityDefinition = CarePlanActivityKind._(
    valueString: 'ActivityDefinition',
    valueEnum: CarePlanActivityKindEnum.activityDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static const CarePlanActivityKind administrableProductDefinition =
      CarePlanActivityKind._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: CarePlanActivityKindEnum.administrableProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static const CarePlanActivityKind adverseEvent = CarePlanActivityKind._(
    valueString: 'AdverseEvent',
    valueEnum: CarePlanActivityKindEnum.adverseEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static const CarePlanActivityKind allergyIntolerance = CarePlanActivityKind._(
    valueString: 'AllergyIntolerance',
    valueEnum: CarePlanActivityKindEnum.allergyIntolerance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static const CarePlanActivityKind appointment = CarePlanActivityKind._(
    valueString: 'Appointment',
    valueEnum: CarePlanActivityKindEnum.appointment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static const CarePlanActivityKind appointmentResponse =
      CarePlanActivityKind._(
    valueString: 'AppointmentResponse',
    valueEnum: CarePlanActivityKindEnum.appointmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// AuditEvent
  static const CarePlanActivityKind auditEvent = CarePlanActivityKind._(
    valueString: 'AuditEvent',
    valueEnum: CarePlanActivityKindEnum.auditEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static const CarePlanActivityKind basic = CarePlanActivityKind._(
    valueString: 'Basic',
    valueEnum: CarePlanActivityKindEnum.basic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static const CarePlanActivityKind biologicallyDerivedProduct =
      CarePlanActivityKind._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: CarePlanActivityKindEnum.biologicallyDerivedProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BodyStructure
  static const CarePlanActivityKind bodyStructure = CarePlanActivityKind._(
    valueString: 'BodyStructure',
    valueEnum: CarePlanActivityKindEnum.bodyStructure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'BodyStructure',
    ),
  );

  /// CapabilityStatement
  static const CarePlanActivityKind capabilityStatement =
      CarePlanActivityKind._(
    valueString: 'CapabilityStatement',
    valueEnum: CarePlanActivityKindEnum.capabilityStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static const CarePlanActivityKind carePlan = CarePlanActivityKind._(
    valueString: 'CarePlan',
    valueEnum: CarePlanActivityKindEnum.carePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static const CarePlanActivityKind careTeam = CarePlanActivityKind._(
    valueString: 'CareTeam',
    valueEnum: CarePlanActivityKindEnum.careTeam,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CareTeam',
    ),
  );

  /// CatalogEntry
  static const CarePlanActivityKind catalogEntry = CarePlanActivityKind._(
    valueString: 'CatalogEntry',
    valueEnum: CarePlanActivityKindEnum.catalogEntry,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CatalogEntry',
    ),
  );

  /// ChargeItem
  static const CarePlanActivityKind chargeItem = CarePlanActivityKind._(
    valueString: 'ChargeItem',
    valueEnum: CarePlanActivityKindEnum.chargeItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static const CarePlanActivityKind chargeItemDefinition =
      CarePlanActivityKind._(
    valueString: 'ChargeItemDefinition',
    valueEnum: CarePlanActivityKindEnum.chargeItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static const CarePlanActivityKind citation = CarePlanActivityKind._(
    valueString: 'Citation',
    valueEnum: CarePlanActivityKindEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static const CarePlanActivityKind claim = CarePlanActivityKind._(
    valueString: 'Claim',
    valueEnum: CarePlanActivityKindEnum.claim,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static const CarePlanActivityKind claimResponse = CarePlanActivityKind._(
    valueString: 'ClaimResponse',
    valueEnum: CarePlanActivityKindEnum.claimResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static const CarePlanActivityKind clinicalImpression = CarePlanActivityKind._(
    valueString: 'ClinicalImpression',
    valueEnum: CarePlanActivityKindEnum.clinicalImpression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static const CarePlanActivityKind clinicalUseDefinition =
      CarePlanActivityKind._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: CarePlanActivityKindEnum.clinicalUseDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static const CarePlanActivityKind codeSystem = CarePlanActivityKind._(
    valueString: 'CodeSystem',
    valueEnum: CarePlanActivityKindEnum.codeSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static const CarePlanActivityKind communication = CarePlanActivityKind._(
    valueString: 'Communication',
    valueEnum: CarePlanActivityKindEnum.communication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static const CarePlanActivityKind communicationRequest =
      CarePlanActivityKind._(
    valueString: 'CommunicationRequest',
    valueEnum: CarePlanActivityKindEnum.communicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static const CarePlanActivityKind compartmentDefinition =
      CarePlanActivityKind._(
    valueString: 'CompartmentDefinition',
    valueEnum: CarePlanActivityKindEnum.compartmentDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static const CarePlanActivityKind composition = CarePlanActivityKind._(
    valueString: 'Composition',
    valueEnum: CarePlanActivityKindEnum.composition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static const CarePlanActivityKind conceptMap = CarePlanActivityKind._(
    valueString: 'ConceptMap',
    valueEnum: CarePlanActivityKindEnum.conceptMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static const CarePlanActivityKind condition = CarePlanActivityKind._(
    valueString: 'Condition',
    valueEnum: CarePlanActivityKindEnum.condition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Condition',
    ),
  );

  /// Consent
  static const CarePlanActivityKind consent = CarePlanActivityKind._(
    valueString: 'Consent',
    valueEnum: CarePlanActivityKindEnum.consent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static const CarePlanActivityKind contract = CarePlanActivityKind._(
    valueString: 'Contract',
    valueEnum: CarePlanActivityKindEnum.contract,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static const CarePlanActivityKind coverage = CarePlanActivityKind._(
    valueString: 'Coverage',
    valueEnum: CarePlanActivityKindEnum.coverage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static const CarePlanActivityKind coverageEligibilityRequest =
      CarePlanActivityKind._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: CarePlanActivityKindEnum.coverageEligibilityRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static const CarePlanActivityKind coverageEligibilityResponse =
      CarePlanActivityKind._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: CarePlanActivityKindEnum.coverageEligibilityResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static const CarePlanActivityKind detectedIssue = CarePlanActivityKind._(
    valueString: 'DetectedIssue',
    valueEnum: CarePlanActivityKindEnum.detectedIssue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static const CarePlanActivityKind device = CarePlanActivityKind._(
    valueString: 'Device',
    valueEnum: CarePlanActivityKindEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// DeviceDefinition
  static const CarePlanActivityKind deviceDefinition = CarePlanActivityKind._(
    valueString: 'DeviceDefinition',
    valueEnum: CarePlanActivityKindEnum.deviceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceMetric
  static const CarePlanActivityKind deviceMetric = CarePlanActivityKind._(
    valueString: 'DeviceMetric',
    valueEnum: CarePlanActivityKindEnum.deviceMetric,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static const CarePlanActivityKind deviceRequest = CarePlanActivityKind._(
    valueString: 'DeviceRequest',
    valueEnum: CarePlanActivityKindEnum.deviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUseStatement
  static const CarePlanActivityKind deviceUseStatement = CarePlanActivityKind._(
    valueString: 'DeviceUseStatement',
    valueEnum: CarePlanActivityKindEnum.deviceUseStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticReport
  static const CarePlanActivityKind diagnosticReport = CarePlanActivityKind._(
    valueString: 'DiagnosticReport',
    valueEnum: CarePlanActivityKindEnum.diagnosticReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentManifest
  static const CarePlanActivityKind documentManifest = CarePlanActivityKind._(
    valueString: 'DocumentManifest',
    valueEnum: CarePlanActivityKindEnum.documentManifest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DocumentManifest',
    ),
  );

  /// DocumentReference
  static const CarePlanActivityKind documentReference = CarePlanActivityKind._(
    valueString: 'DocumentReference',
    valueEnum: CarePlanActivityKindEnum.documentReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static const CarePlanActivityKind encounter = CarePlanActivityKind._(
    valueString: 'Encounter',
    valueEnum: CarePlanActivityKindEnum.encounter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Encounter',
    ),
  );

  /// Endpoint
  static const CarePlanActivityKind endpoint = CarePlanActivityKind._(
    valueString: 'Endpoint',
    valueEnum: CarePlanActivityKindEnum.endpoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static const CarePlanActivityKind enrollmentRequest = CarePlanActivityKind._(
    valueString: 'EnrollmentRequest',
    valueEnum: CarePlanActivityKindEnum.enrollmentRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static const CarePlanActivityKind enrollmentResponse = CarePlanActivityKind._(
    valueString: 'EnrollmentResponse',
    valueEnum: CarePlanActivityKindEnum.enrollmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static const CarePlanActivityKind episodeOfCare = CarePlanActivityKind._(
    valueString: 'EpisodeOfCare',
    valueEnum: CarePlanActivityKindEnum.episodeOfCare,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static const CarePlanActivityKind eventDefinition = CarePlanActivityKind._(
    valueString: 'EventDefinition',
    valueEnum: CarePlanActivityKindEnum.eventDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static const CarePlanActivityKind evidence = CarePlanActivityKind._(
    valueString: 'Evidence',
    valueEnum: CarePlanActivityKindEnum.evidence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static const CarePlanActivityKind evidenceReport = CarePlanActivityKind._(
    valueString: 'EvidenceReport',
    valueEnum: CarePlanActivityKindEnum.evidenceReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static const CarePlanActivityKind evidenceVariable = CarePlanActivityKind._(
    valueString: 'EvidenceVariable',
    valueEnum: CarePlanActivityKindEnum.evidenceVariable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static const CarePlanActivityKind exampleScenario = CarePlanActivityKind._(
    valueString: 'ExampleScenario',
    valueEnum: CarePlanActivityKindEnum.exampleScenario,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static const CarePlanActivityKind explanationOfBenefit =
      CarePlanActivityKind._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: CarePlanActivityKindEnum.explanationOfBenefit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static const CarePlanActivityKind familyMemberHistory =
      CarePlanActivityKind._(
    valueString: 'FamilyMemberHistory',
    valueEnum: CarePlanActivityKindEnum.familyMemberHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static const CarePlanActivityKind flag = CarePlanActivityKind._(
    valueString: 'Flag',
    valueEnum: CarePlanActivityKindEnum.flag,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Flag',
    ),
  );

  /// Goal
  static const CarePlanActivityKind goal = CarePlanActivityKind._(
    valueString: 'Goal',
    valueEnum: CarePlanActivityKindEnum.goal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static const CarePlanActivityKind graphDefinition = CarePlanActivityKind._(
    valueString: 'GraphDefinition',
    valueEnum: CarePlanActivityKindEnum.graphDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static const CarePlanActivityKind group = CarePlanActivityKind._(
    valueString: 'Group',
    valueEnum: CarePlanActivityKindEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static const CarePlanActivityKind guidanceResponse = CarePlanActivityKind._(
    valueString: 'GuidanceResponse',
    valueEnum: CarePlanActivityKindEnum.guidanceResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static const CarePlanActivityKind healthcareService = CarePlanActivityKind._(
    valueString: 'HealthcareService',
    valueEnum: CarePlanActivityKindEnum.healthcareService,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingStudy
  static const CarePlanActivityKind imagingStudy = CarePlanActivityKind._(
    valueString: 'ImagingStudy',
    valueEnum: CarePlanActivityKindEnum.imagingStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static const CarePlanActivityKind immunization = CarePlanActivityKind._(
    valueString: 'Immunization',
    valueEnum: CarePlanActivityKindEnum.immunization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static const CarePlanActivityKind immunizationEvaluation =
      CarePlanActivityKind._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: CarePlanActivityKindEnum.immunizationEvaluation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static const CarePlanActivityKind immunizationRecommendation =
      CarePlanActivityKind._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: CarePlanActivityKindEnum.immunizationRecommendation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static const CarePlanActivityKind implementationGuide =
      CarePlanActivityKind._(
    valueString: 'ImplementationGuide',
    valueEnum: CarePlanActivityKindEnum.implementationGuide,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static const CarePlanActivityKind ingredient = CarePlanActivityKind._(
    valueString: 'Ingredient',
    valueEnum: CarePlanActivityKindEnum.ingredient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static const CarePlanActivityKind insurancePlan = CarePlanActivityKind._(
    valueString: 'InsurancePlan',
    valueEnum: CarePlanActivityKindEnum.insurancePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'InsurancePlan',
    ),
  );

  /// Invoice
  static const CarePlanActivityKind invoice = CarePlanActivityKind._(
    valueString: 'Invoice',
    valueEnum: CarePlanActivityKindEnum.invoice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static const CarePlanActivityKind library = CarePlanActivityKind._(
    valueString: 'Library',
    valueEnum: CarePlanActivityKindEnum.library,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static const CarePlanActivityKind linkage = CarePlanActivityKind._(
    valueString: 'Linkage',
    valueEnum: CarePlanActivityKindEnum.linkage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static const CarePlanActivityKind list_ = CarePlanActivityKind._(
    valueString: 'List',
    valueEnum: CarePlanActivityKindEnum.list_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'List',
    ),
  );

  /// Location
  static const CarePlanActivityKind location = CarePlanActivityKind._(
    valueString: 'Location',
    valueEnum: CarePlanActivityKindEnum.location,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static const CarePlanActivityKind manufacturedItemDefinition =
      CarePlanActivityKind._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: CarePlanActivityKindEnum.manufacturedItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static const CarePlanActivityKind measure = CarePlanActivityKind._(
    valueString: 'Measure',
    valueEnum: CarePlanActivityKindEnum.measure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static const CarePlanActivityKind measureReport = CarePlanActivityKind._(
    valueString: 'MeasureReport',
    valueEnum: CarePlanActivityKindEnum.measureReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MeasureReport',
    ),
  );

  /// Media
  static const CarePlanActivityKind media = CarePlanActivityKind._(
    valueString: 'Media',
    valueEnum: CarePlanActivityKindEnum.media,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Media',
    ),
  );

  /// Medication
  static const CarePlanActivityKind medication = CarePlanActivityKind._(
    valueString: 'Medication',
    valueEnum: CarePlanActivityKindEnum.medication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static const CarePlanActivityKind medicationAdministration =
      CarePlanActivityKind._(
    valueString: 'MedicationAdministration',
    valueEnum: CarePlanActivityKindEnum.medicationAdministration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static const CarePlanActivityKind medicationDispense = CarePlanActivityKind._(
    valueString: 'MedicationDispense',
    valueEnum: CarePlanActivityKindEnum.medicationDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static const CarePlanActivityKind medicationKnowledge =
      CarePlanActivityKind._(
    valueString: 'MedicationKnowledge',
    valueEnum: CarePlanActivityKindEnum.medicationKnowledge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static const CarePlanActivityKind medicationRequest = CarePlanActivityKind._(
    valueString: 'MedicationRequest',
    valueEnum: CarePlanActivityKindEnum.medicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static const CarePlanActivityKind medicationStatement =
      CarePlanActivityKind._(
    valueString: 'MedicationStatement',
    valueEnum: CarePlanActivityKindEnum.medicationStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static const CarePlanActivityKind medicinalProductDefinition =
      CarePlanActivityKind._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: CarePlanActivityKindEnum.medicinalProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static const CarePlanActivityKind messageDefinition = CarePlanActivityKind._(
    valueString: 'MessageDefinition',
    valueEnum: CarePlanActivityKindEnum.messageDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static const CarePlanActivityKind messageHeader = CarePlanActivityKind._(
    valueString: 'MessageHeader',
    valueEnum: CarePlanActivityKindEnum.messageHeader,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MessageHeader',
    ),
  );

  /// MolecularSequence
  static const CarePlanActivityKind molecularSequence = CarePlanActivityKind._(
    valueString: 'MolecularSequence',
    valueEnum: CarePlanActivityKindEnum.molecularSequence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static const CarePlanActivityKind namingSystem = CarePlanActivityKind._(
    valueString: 'NamingSystem',
    valueEnum: CarePlanActivityKindEnum.namingSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionOrder
  static const CarePlanActivityKind nutritionOrder = CarePlanActivityKind._(
    valueString: 'NutritionOrder',
    valueEnum: CarePlanActivityKindEnum.nutritionOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static const CarePlanActivityKind nutritionProduct = CarePlanActivityKind._(
    valueString: 'NutritionProduct',
    valueEnum: CarePlanActivityKindEnum.nutritionProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static const CarePlanActivityKind observation = CarePlanActivityKind._(
    valueString: 'Observation',
    valueEnum: CarePlanActivityKindEnum.observation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static const CarePlanActivityKind observationDefinition =
      CarePlanActivityKind._(
    valueString: 'ObservationDefinition',
    valueEnum: CarePlanActivityKindEnum.observationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static const CarePlanActivityKind operationDefinition =
      CarePlanActivityKind._(
    valueString: 'OperationDefinition',
    valueEnum: CarePlanActivityKindEnum.operationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static const CarePlanActivityKind operationOutcome = CarePlanActivityKind._(
    valueString: 'OperationOutcome',
    valueEnum: CarePlanActivityKindEnum.operationOutcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static const CarePlanActivityKind organization = CarePlanActivityKind._(
    valueString: 'Organization',
    valueEnum: CarePlanActivityKindEnum.organization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static const CarePlanActivityKind organizationAffiliation =
      CarePlanActivityKind._(
    valueString: 'OrganizationAffiliation',
    valueEnum: CarePlanActivityKindEnum.organizationAffiliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static const CarePlanActivityKind packagedProductDefinition =
      CarePlanActivityKind._(
    valueString: 'PackagedProductDefinition',
    valueEnum: CarePlanActivityKindEnum.packagedProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static const CarePlanActivityKind patient = CarePlanActivityKind._(
    valueString: 'Patient',
    valueEnum: CarePlanActivityKindEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static const CarePlanActivityKind paymentNotice = CarePlanActivityKind._(
    valueString: 'PaymentNotice',
    valueEnum: CarePlanActivityKindEnum.paymentNotice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static const CarePlanActivityKind paymentReconciliation =
      CarePlanActivityKind._(
    valueString: 'PaymentReconciliation',
    valueEnum: CarePlanActivityKindEnum.paymentReconciliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Person
  static const CarePlanActivityKind person = CarePlanActivityKind._(
    valueString: 'Person',
    valueEnum: CarePlanActivityKindEnum.person,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static const CarePlanActivityKind planDefinition = CarePlanActivityKind._(
    valueString: 'PlanDefinition',
    valueEnum: CarePlanActivityKindEnum.planDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static const CarePlanActivityKind practitioner = CarePlanActivityKind._(
    valueString: 'Practitioner',
    valueEnum: CarePlanActivityKindEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static const CarePlanActivityKind practitionerRole = CarePlanActivityKind._(
    valueString: 'PractitionerRole',
    valueEnum: CarePlanActivityKindEnum.practitionerRole,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static const CarePlanActivityKind procedure = CarePlanActivityKind._(
    valueString: 'Procedure',
    valueEnum: CarePlanActivityKindEnum.procedure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static const CarePlanActivityKind provenance = CarePlanActivityKind._(
    valueString: 'Provenance',
    valueEnum: CarePlanActivityKindEnum.provenance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static const CarePlanActivityKind questionnaire = CarePlanActivityKind._(
    valueString: 'Questionnaire',
    valueEnum: CarePlanActivityKindEnum.questionnaire,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static const CarePlanActivityKind questionnaireResponse =
      CarePlanActivityKind._(
    valueString: 'QuestionnaireResponse',
    valueEnum: CarePlanActivityKindEnum.questionnaireResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static const CarePlanActivityKind regulatedAuthorization =
      CarePlanActivityKind._(
    valueString: 'RegulatedAuthorization',
    valueEnum: CarePlanActivityKindEnum.regulatedAuthorization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static const CarePlanActivityKind relatedPerson = CarePlanActivityKind._(
    valueString: 'RelatedPerson',
    valueEnum: CarePlanActivityKindEnum.relatedPerson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestGroup
  static const CarePlanActivityKind requestGroup = CarePlanActivityKind._(
    valueString: 'RequestGroup',
    valueEnum: CarePlanActivityKindEnum.requestGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static const CarePlanActivityKind researchDefinition = CarePlanActivityKind._(
    valueString: 'ResearchDefinition',
    valueEnum: CarePlanActivityKindEnum.researchDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static const CarePlanActivityKind researchElementDefinition =
      CarePlanActivityKind._(
    valueString: 'ResearchElementDefinition',
    valueEnum: CarePlanActivityKindEnum.researchElementDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// ResearchStudy
  static const CarePlanActivityKind researchStudy = CarePlanActivityKind._(
    valueString: 'ResearchStudy',
    valueEnum: CarePlanActivityKindEnum.researchStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static const CarePlanActivityKind researchSubject = CarePlanActivityKind._(
    valueString: 'ResearchSubject',
    valueEnum: CarePlanActivityKindEnum.researchSubject,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static const CarePlanActivityKind riskAssessment = CarePlanActivityKind._(
    valueString: 'RiskAssessment',
    valueEnum: CarePlanActivityKindEnum.riskAssessment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static const CarePlanActivityKind schedule = CarePlanActivityKind._(
    valueString: 'Schedule',
    valueEnum: CarePlanActivityKindEnum.schedule,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static const CarePlanActivityKind searchParameter = CarePlanActivityKind._(
    valueString: 'SearchParameter',
    valueEnum: CarePlanActivityKindEnum.searchParameter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static const CarePlanActivityKind serviceRequest = CarePlanActivityKind._(
    valueString: 'ServiceRequest',
    valueEnum: CarePlanActivityKindEnum.serviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static const CarePlanActivityKind slot = CarePlanActivityKind._(
    valueString: 'Slot',
    valueEnum: CarePlanActivityKindEnum.slot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static const CarePlanActivityKind specimen = CarePlanActivityKind._(
    valueString: 'Specimen',
    valueEnum: CarePlanActivityKindEnum.specimen,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static const CarePlanActivityKind specimenDefinition = CarePlanActivityKind._(
    valueString: 'SpecimenDefinition',
    valueEnum: CarePlanActivityKindEnum.specimenDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static const CarePlanActivityKind structureDefinition =
      CarePlanActivityKind._(
    valueString: 'StructureDefinition',
    valueEnum: CarePlanActivityKindEnum.structureDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static const CarePlanActivityKind structureMap = CarePlanActivityKind._(
    valueString: 'StructureMap',
    valueEnum: CarePlanActivityKindEnum.structureMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static const CarePlanActivityKind subscription = CarePlanActivityKind._(
    valueString: 'Subscription',
    valueEnum: CarePlanActivityKindEnum.subscription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static const CarePlanActivityKind subscriptionStatus = CarePlanActivityKind._(
    valueString: 'SubscriptionStatus',
    valueEnum: CarePlanActivityKindEnum.subscriptionStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static const CarePlanActivityKind subscriptionTopic = CarePlanActivityKind._(
    valueString: 'SubscriptionTopic',
    valueEnum: CarePlanActivityKindEnum.subscriptionTopic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static const CarePlanActivityKind substance = CarePlanActivityKind._(
    valueString: 'Substance',
    valueEnum: CarePlanActivityKindEnum.substance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static const CarePlanActivityKind substanceDefinition =
      CarePlanActivityKind._(
    valueString: 'SubstanceDefinition',
    valueEnum: CarePlanActivityKindEnum.substanceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SupplyDelivery
  static const CarePlanActivityKind supplyDelivery = CarePlanActivityKind._(
    valueString: 'SupplyDelivery',
    valueEnum: CarePlanActivityKindEnum.supplyDelivery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static const CarePlanActivityKind supplyRequest = CarePlanActivityKind._(
    valueString: 'SupplyRequest',
    valueEnum: CarePlanActivityKindEnum.supplyRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static const CarePlanActivityKind task = CarePlanActivityKind._(
    valueString: 'Task',
    valueEnum: CarePlanActivityKindEnum.task,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static const CarePlanActivityKind terminologyCapabilities =
      CarePlanActivityKind._(
    valueString: 'TerminologyCapabilities',
    valueEnum: CarePlanActivityKindEnum.terminologyCapabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestReport
  static const CarePlanActivityKind testReport = CarePlanActivityKind._(
    valueString: 'TestReport',
    valueEnum: CarePlanActivityKindEnum.testReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static const CarePlanActivityKind testScript = CarePlanActivityKind._(
    valueString: 'TestScript',
    valueEnum: CarePlanActivityKindEnum.testScript,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TestScript',
    ),
  );

  /// ValueSet
  static const CarePlanActivityKind valueSet = CarePlanActivityKind._(
    valueString: 'ValueSet',
    valueEnum: CarePlanActivityKindEnum.valueSet,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static const CarePlanActivityKind verificationResult = CarePlanActivityKind._(
    valueString: 'VerificationResult',
    valueEnum: CarePlanActivityKindEnum.verificationResult,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static const CarePlanActivityKind visionPrescription = CarePlanActivityKind._(
    valueString: 'VisionPrescription',
    valueEnum: CarePlanActivityKindEnum.visionPrescription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static const CarePlanActivityKind parameters = CarePlanActivityKind._(
    valueString: 'Parameters',
    valueEnum: CarePlanActivityKindEnum.parameters,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Parameters',
    ),
  );

  /// List of all enum-like values
  static final List<CarePlanActivityKind> values = [
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
  CarePlanActivityKind withElement(Element? newElement) {
    return CarePlanActivityKind._(
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

  @override
  CarePlanActivityKind clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CarePlanActivityKindCopyWithImpl<CarePlanActivityKind> get copyWith =>
      CarePlanActivityKindCopyWithImpl<CarePlanActivityKind>(
        this,
        (v) => v as CarePlanActivityKind,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CarePlanActivityKindCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CarePlanActivityKindCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      CarePlanActivityKind(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
