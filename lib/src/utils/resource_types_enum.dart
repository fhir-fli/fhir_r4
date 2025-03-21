// ignore_for_file: constant_identifier_names

/// An enum representing the different FHIR resource types.
enum R4ResourceType {
  /// Account
  Account,

  /// ActivityDefinition
  ActivityDefinition,

  /// AdministrableProductDefinition
  AdministrableProductDefinition,

  /// AdverseEvent
  AdverseEvent,

  /// AllergyIntolerance
  AllergyIntolerance,

  /// Appointment
  Appointment,

  /// AppointmentResponse
  AppointmentResponse,

  /// AuditEvent
  AuditEvent,

  /// Basic
  Basic,

  /// Binary
  Binary,

  /// BiologicallyDerivedProduct
  BiologicallyDerivedProduct,

  /// BodyStructure
  BodyStructure,

  /// Bundle
  Bundle,

  /// CapabilityStatement
  CapabilityStatement,

  /// CarePlan
  CarePlan,

  /// CareTeam
  CareTeam,

  /// CatalogEntry
  CatalogEntry,

  /// ChargeItem
  ChargeItem,

  /// ChargeItemDefinition
  ChargeItemDefinition,

  /// Citation
  Citation,

  /// Claim
  Claim,

  /// ClaimResponse
  ClaimResponse,

  /// ClinicalImpression
  ClinicalImpression,

  /// ClinicalUseDefinition
  ClinicalUseDefinition,

  /// CodeSystem
  CodeSystem,

  /// Communication
  Communication,

  /// CommunicationRequest
  CommunicationRequest,

  /// CompartmentDefinition
  CompartmentDefinition,

  /// Composition
  Composition,

  /// ConceptMap
  ConceptMap,

  /// Condition
  Condition,

  /// Consent
  Consent,

  /// Contract
  Contract,

  /// Coverage
  Coverage,

  /// CoverageEligibilityRequest
  CoverageEligibilityRequest,

  /// CoverageEligibilityResponse
  CoverageEligibilityResponse,

  /// DetectedIssue
  DetectedIssue,

  /// Device
  Device,

  /// DeviceDefinition
  DeviceDefinition,

  /// DeviceMetric
  DeviceMetric,

  /// DeviceRequest
  DeviceRequest,

  /// DeviceUseStatement
  DeviceUseStatement,

  /// DiagnosticReport
  DiagnosticReport,

  /// DocumentManifest
  DocumentManifest,

  /// DocumentReference
  DocumentReference,

  /// Encounter
  Encounter,

  /// EnrollmentRequest
  EnrollmentRequest,

  /// EnrollmentResponse
  EnrollmentResponse,

  /// EpisodeOfCare
  EpisodeOfCare,

  /// EventDefinition
  EventDefinition,

  /// Evidence
  Evidence,

  /// EvidenceReport
  EvidenceReport,

  /// EvidenceVariable
  EvidenceVariable,

  /// ExampleScenario
  ExampleScenario,

  /// ExplanationOfBenefit
  ExplanationOfBenefit,

  /// FamilyMemberHistory
  FamilyMemberHistory,

  /// FhirEndpoint
  FhirEndpoint,

  /// FhirGroup
  FhirGroup,

  /// FhirList
  FhirList,

  /// Flag
  Flag,

  /// Goal
  Goal,

  /// GraphDefinition
  GraphDefinition,

  /// GuidanceResponse
  GuidanceResponse,

  /// HealthcareService
  HealthcareService,

  /// ImagingStudy
  ImagingStudy,

  /// Immunization
  Immunization,

  /// ImmunizationEvaluation
  ImmunizationEvaluation,

  /// ImmunizationRecommendation
  ImmunizationRecommendation,

  /// ImplementationGuide
  ImplementationGuide,

  /// Ingredient
  Ingredient,

  /// InsurancePlan
  InsurancePlan,

  /// Invoice
  Invoice,

  /// Library
  Library,

  /// Linkage
  Linkage,

  /// Location
  Location,

  /// ManufacturedItemDefinition
  ManufacturedItemDefinition,

  /// Measure
  Measure,

  /// MeasureReport
  MeasureReport,

  /// Media
  Media,

  /// Medication
  Medication,

  /// MedicationAdministration
  MedicationAdministration,

  /// MedicationDispense
  MedicationDispense,

  /// MedicationKnowledge
  MedicationKnowledge,

  /// MedicationRequest
  MedicationRequest,

  /// MedicationStatement
  MedicationStatement,

  /// MedicinalProductDefinition
  MedicinalProductDefinition,

  /// MessageDefinition
  MessageDefinition,

  /// MessageHeader
  MessageHeader,

  /// MolecularSequence
  MolecularSequence,

  /// NamingSystem
  NamingSystem,

  /// NutritionOrder
  NutritionOrder,

  /// NutritionProduct
  NutritionProduct,

  /// Observation
  Observation,

  /// ObservationDefinition
  ObservationDefinition,

  /// OperationDefinition
  OperationDefinition,

  /// OperationOutcome
  OperationOutcome,

  /// Organization
  Organization,

  /// OrganizationAffiliation
  OrganizationAffiliation,

  /// PackagedProductDefinition
  PackagedProductDefinition,

  /// Parameters
  Parameters,

  /// Patient
  Patient,

  /// PaymentNotice
  PaymentNotice,

  /// PaymentReconciliation
  PaymentReconciliation,

  /// Person
  Person,

  /// PlanDefinition
  PlanDefinition,

  /// Practitioner
  Practitioner,

  /// PractitionerRole
  PractitionerRole,

  /// Procedure
  Procedure,

  /// Provenance
  Provenance,

  /// Questionnaire
  Questionnaire,

  /// QuestionnaireResponse
  QuestionnaireResponse,

  /// RegulatedAuthorization
  RegulatedAuthorization,

  /// RelatedPerson
  RelatedPerson,

  /// RequestGroup
  RequestGroup,

  /// ResearchDefinition
  ResearchDefinition,

  /// ResearchElementDefinition
  ResearchElementDefinition,

  /// ResearchStudy
  ResearchStudy,

  /// ResearchSubject
  ResearchSubject,

  /// RiskAssessment
  RiskAssessment,

  /// Schedule
  Schedule,

  /// SearchParameter
  SearchParameter,

  /// ServiceRequest
  ServiceRequest,

  /// Slot
  Slot,

  /// Specimen
  Specimen,

  /// SpecimenDefinition
  SpecimenDefinition,

  /// StructureDefinition
  StructureDefinition,

  /// StructureMap
  StructureMap,

  /// Subscription
  Subscription,

  /// SubscriptionStatus
  SubscriptionStatus,

  /// SubscriptionTopic
  SubscriptionTopic,

  /// Substance
  Substance,

  /// SubstanceDefinition
  SubstanceDefinition,

  /// SupplyDelivery
  SupplyDelivery,

  /// SupplyRequest
  SupplyRequest,

  /// Task
  Task,

  /// TerminologyCapabilities
  TerminologyCapabilities,

  /// TestReport
  TestReport,

  /// TestScript
  TestScript,

  /// ValueSet
  ValueSet,

  /// VerificationResult
  VerificationResult,

  /// VisionPrescription
  VisionPrescription,
  ;

  @override
  String toString() {
    switch (this) {
      case R4ResourceType.Account:
        return 'Account';
      case R4ResourceType.ActivityDefinition:
        return 'ActivityDefinition';
      case R4ResourceType.AdministrableProductDefinition:
        return 'AdministrableProductDefinition';
      case R4ResourceType.AdverseEvent:
        return 'AdverseEvent';
      case R4ResourceType.AllergyIntolerance:
        return 'AllergyIntolerance';
      case R4ResourceType.Appointment:
        return 'Appointment';
      case R4ResourceType.AppointmentResponse:
        return 'AppointmentResponse';
      case R4ResourceType.AuditEvent:
        return 'AuditEvent';
      case R4ResourceType.Basic:
        return 'Basic';
      case R4ResourceType.Binary:
        return 'Binary';
      case R4ResourceType.BiologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case R4ResourceType.BodyStructure:
        return 'BodyStructure';
      case R4ResourceType.Bundle:
        return 'Bundle';
      case R4ResourceType.CapabilityStatement:
        return 'CapabilityStatement';
      case R4ResourceType.CarePlan:
        return 'CarePlan';
      case R4ResourceType.CareTeam:
        return 'CareTeam';
      case R4ResourceType.CatalogEntry:
        return 'CatalogEntry';
      case R4ResourceType.ChargeItem:
        return 'ChargeItem';
      case R4ResourceType.ChargeItemDefinition:
        return 'ChargeItemDefinition';
      case R4ResourceType.Citation:
        return 'Citation';
      case R4ResourceType.Claim:
        return 'Claim';
      case R4ResourceType.ClaimResponse:
        return 'ClaimResponse';
      case R4ResourceType.ClinicalImpression:
        return 'ClinicalImpression';
      case R4ResourceType.ClinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case R4ResourceType.CodeSystem:
        return 'CodeSystem';
      case R4ResourceType.Communication:
        return 'Communication';
      case R4ResourceType.CommunicationRequest:
        return 'CommunicationRequest';
      case R4ResourceType.CompartmentDefinition:
        return 'CompartmentDefinition';
      case R4ResourceType.Composition:
        return 'Composition';
      case R4ResourceType.ConceptMap:
        return 'ConceptMap';
      case R4ResourceType.Condition:
        return 'Condition';
      case R4ResourceType.Consent:
        return 'Consent';
      case R4ResourceType.Contract:
        return 'Contract';
      case R4ResourceType.Coverage:
        return 'Coverage';
      case R4ResourceType.CoverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case R4ResourceType.CoverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case R4ResourceType.DetectedIssue:
        return 'DetectedIssue';
      case R4ResourceType.Device:
        return 'Device';
      case R4ResourceType.DeviceDefinition:
        return 'DeviceDefinition';
      case R4ResourceType.DeviceMetric:
        return 'DeviceMetric';
      case R4ResourceType.DeviceRequest:
        return 'DeviceRequest';
      case R4ResourceType.DeviceUseStatement:
        return 'DeviceUseStatement';
      case R4ResourceType.DiagnosticReport:
        return 'DiagnosticReport';
      case R4ResourceType.DocumentManifest:
        return 'DocumentManifest';
      case R4ResourceType.DocumentReference:
        return 'DocumentReference';
      case R4ResourceType.Encounter:
        return 'Encounter';
      case R4ResourceType.EnrollmentRequest:
        return 'EnrollmentRequest';
      case R4ResourceType.EnrollmentResponse:
        return 'EnrollmentResponse';
      case R4ResourceType.EpisodeOfCare:
        return 'EpisodeOfCare';
      case R4ResourceType.EventDefinition:
        return 'EventDefinition';
      case R4ResourceType.Evidence:
        return 'Evidence';
      case R4ResourceType.EvidenceReport:
        return 'EvidenceReport';
      case R4ResourceType.EvidenceVariable:
        return 'EvidenceVariable';
      case R4ResourceType.ExampleScenario:
        return 'ExampleScenario';
      case R4ResourceType.ExplanationOfBenefit:
        return 'ExplanationOfBenefit';
      case R4ResourceType.FamilyMemberHistory:
        return 'FamilyMemberHistory';
      case R4ResourceType.FhirEndpoint:
        return 'Endpoint';
      case R4ResourceType.FhirGroup:
        return 'Group';
      case R4ResourceType.FhirList:
        return 'List';
      case R4ResourceType.Flag:
        return 'Flag';
      case R4ResourceType.Goal:
        return 'Goal';
      case R4ResourceType.GraphDefinition:
        return 'GraphDefinition';
      case R4ResourceType.GuidanceResponse:
        return 'GuidanceResponse';
      case R4ResourceType.HealthcareService:
        return 'HealthcareService';
      case R4ResourceType.ImagingStudy:
        return 'ImagingStudy';
      case R4ResourceType.Immunization:
        return 'Immunization';
      case R4ResourceType.ImmunizationEvaluation:
        return 'ImmunizationEvaluation';
      case R4ResourceType.ImmunizationRecommendation:
        return 'ImmunizationRecommendation';
      case R4ResourceType.ImplementationGuide:
        return 'ImplementationGuide';
      case R4ResourceType.Ingredient:
        return 'Ingredient';
      case R4ResourceType.InsurancePlan:
        return 'InsurancePlan';
      case R4ResourceType.Invoice:
        return 'Invoice';
      case R4ResourceType.Library:
        return 'Library';
      case R4ResourceType.Linkage:
        return 'Linkage';
      case R4ResourceType.Location:
        return 'Location';
      case R4ResourceType.ManufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case R4ResourceType.Measure:
        return 'Measure';
      case R4ResourceType.MeasureReport:
        return 'MeasureReport';
      case R4ResourceType.Media:
        return 'Media';
      case R4ResourceType.Medication:
        return 'Medication';
      case R4ResourceType.MedicationAdministration:
        return 'MedicationAdministration';
      case R4ResourceType.MedicationDispense:
        return 'MedicationDispense';
      case R4ResourceType.MedicationKnowledge:
        return 'MedicationKnowledge';
      case R4ResourceType.MedicationRequest:
        return 'MedicationRequest';
      case R4ResourceType.MedicationStatement:
        return 'MedicationStatement';
      case R4ResourceType.MedicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case R4ResourceType.MessageDefinition:
        return 'MessageDefinition';
      case R4ResourceType.MessageHeader:
        return 'MessageHeader';
      case R4ResourceType.MolecularSequence:
        return 'MolecularSequence';
      case R4ResourceType.NamingSystem:
        return 'NamingSystem';
      case R4ResourceType.NutritionOrder:
        return 'NutritionOrder';
      case R4ResourceType.NutritionProduct:
        return 'NutritionProduct';
      case R4ResourceType.Observation:
        return 'Observation';
      case R4ResourceType.ObservationDefinition:
        return 'ObservationDefinition';
      case R4ResourceType.OperationDefinition:
        return 'OperationDefinition';
      case R4ResourceType.OperationOutcome:
        return 'OperationOutcome';
      case R4ResourceType.Organization:
        return 'Organization';
      case R4ResourceType.OrganizationAffiliation:
        return 'OrganizationAffiliation';
      case R4ResourceType.PackagedProductDefinition:
        return 'PackagedProductDefinition';
      case R4ResourceType.Parameters:
        return 'Parameters';
      case R4ResourceType.Patient:
        return 'Patient';
      case R4ResourceType.PaymentNotice:
        return 'PaymentNotice';
      case R4ResourceType.PaymentReconciliation:
        return 'PaymentReconciliation';
      case R4ResourceType.Person:
        return 'Person';
      case R4ResourceType.PlanDefinition:
        return 'PlanDefinition';
      case R4ResourceType.Practitioner:
        return 'Practitioner';
      case R4ResourceType.PractitionerRole:
        return 'PractitionerRole';
      case R4ResourceType.Procedure:
        return 'Procedure';
      case R4ResourceType.Provenance:
        return 'Provenance';
      case R4ResourceType.Questionnaire:
        return 'Questionnaire';
      case R4ResourceType.QuestionnaireResponse:
        return 'QuestionnaireResponse';
      case R4ResourceType.RegulatedAuthorization:
        return 'RegulatedAuthorization';
      case R4ResourceType.RelatedPerson:
        return 'RelatedPerson';
      case R4ResourceType.RequestGroup:
        return 'RequestGroup';
      case R4ResourceType.ResearchDefinition:
        return 'ResearchDefinition';
      case R4ResourceType.ResearchElementDefinition:
        return 'ResearchElementDefinition';
      case R4ResourceType.ResearchStudy:
        return 'ResearchStudy';
      case R4ResourceType.ResearchSubject:
        return 'ResearchSubject';
      case R4ResourceType.RiskAssessment:
        return 'RiskAssessment';
      case R4ResourceType.Schedule:
        return 'Schedule';
      case R4ResourceType.SearchParameter:
        return 'SearchParameter';
      case R4ResourceType.ServiceRequest:
        return 'ServiceRequest';
      case R4ResourceType.Slot:
        return 'Slot';
      case R4ResourceType.Specimen:
        return 'Specimen';
      case R4ResourceType.SpecimenDefinition:
        return 'SpecimenDefinition';
      case R4ResourceType.StructureDefinition:
        return 'StructureDefinition';
      case R4ResourceType.StructureMap:
        return 'StructureMap';
      case R4ResourceType.Subscription:
        return 'Subscription';
      case R4ResourceType.SubscriptionStatus:
        return 'SubscriptionStatus';
      case R4ResourceType.SubscriptionTopic:
        return 'SubscriptionTopic';
      case R4ResourceType.Substance:
        return 'Substance';
      case R4ResourceType.SubstanceDefinition:
        return 'SubstanceDefinition';
      case R4ResourceType.SupplyDelivery:
        return 'SupplyDelivery';
      case R4ResourceType.SupplyRequest:
        return 'SupplyRequest';
      case R4ResourceType.Task:
        return 'Task';
      case R4ResourceType.TerminologyCapabilities:
        return 'TerminologyCapabilities';
      case R4ResourceType.TestReport:
        return 'TestReport';
      case R4ResourceType.TestScript:
        return 'TestScript';
      case R4ResourceType.ValueSet:
        return 'ValueSet';
      case R4ResourceType.VerificationResult:
        return 'VerificationResult';
      case R4ResourceType.VisionPrescription:
        return 'VisionPrescription';
    }
  }

  /// Returns the [R4ResourceType] as a [String].
  String toJson() => toString();

  /// Returns the [R4ResourceType] from a [String].
  static R4ResourceType? fromString(String string) {
    switch (string) {
      case 'Account':
        return R4ResourceType.Account;
      case 'ActivityDefinition':
        return R4ResourceType.ActivityDefinition;
      case 'AdministrableProductDefinition':
        return R4ResourceType.AdministrableProductDefinition;
      case 'AdverseEvent':
        return R4ResourceType.AdverseEvent;
      case 'AllergyIntolerance':
        return R4ResourceType.AllergyIntolerance;
      case 'Appointment':
        return R4ResourceType.Appointment;
      case 'AppointmentResponse':
        return R4ResourceType.AppointmentResponse;
      case 'AuditEvent':
        return R4ResourceType.AuditEvent;
      case 'Basic':
        return R4ResourceType.Basic;
      case 'Binary':
        return R4ResourceType.Binary;
      case 'BiologicallyDerivedProduct':
        return R4ResourceType.BiologicallyDerivedProduct;
      case 'BodyStructure':
        return R4ResourceType.BodyStructure;
      case 'Bundle':
        return R4ResourceType.Bundle;
      case 'CapabilityStatement':
        return R4ResourceType.CapabilityStatement;
      case 'CarePlan':
        return R4ResourceType.CarePlan;
      case 'CareTeam':
        return R4ResourceType.CareTeam;
      case 'CatalogEntry':
        return R4ResourceType.CatalogEntry;
      case 'ChargeItem':
        return R4ResourceType.ChargeItem;
      case 'ChargeItemDefinition':
        return R4ResourceType.ChargeItemDefinition;
      case 'Citation':
        return R4ResourceType.Citation;
      case 'Claim':
        return R4ResourceType.Claim;
      case 'ClaimResponse':
        return R4ResourceType.ClaimResponse;
      case 'ClinicalImpression':
        return R4ResourceType.ClinicalImpression;
      case 'ClinicalUseDefinition':
        return R4ResourceType.ClinicalUseDefinition;
      case 'CodeSystem':
        return R4ResourceType.CodeSystem;
      case 'Communication':
        return R4ResourceType.Communication;
      case 'CommunicationRequest':
        return R4ResourceType.CommunicationRequest;
      case 'CompartmentDefinition':
        return R4ResourceType.CompartmentDefinition;
      case 'Composition':
        return R4ResourceType.Composition;
      case 'ConceptMap':
        return R4ResourceType.ConceptMap;
      case 'Condition':
        return R4ResourceType.Condition;
      case 'Consent':
        return R4ResourceType.Consent;
      case 'Contract':
        return R4ResourceType.Contract;
      case 'Coverage':
        return R4ResourceType.Coverage;
      case 'CoverageEligibilityRequest':
        return R4ResourceType.CoverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return R4ResourceType.CoverageEligibilityResponse;
      case 'DetectedIssue':
        return R4ResourceType.DetectedIssue;
      case 'Device':
        return R4ResourceType.Device;
      case 'DeviceDefinition':
        return R4ResourceType.DeviceDefinition;
      case 'DeviceMetric':
        return R4ResourceType.DeviceMetric;
      case 'DeviceRequest':
        return R4ResourceType.DeviceRequest;
      case 'DeviceUseStatement':
        return R4ResourceType.DeviceUseStatement;
      case 'DiagnosticReport':
        return R4ResourceType.DiagnosticReport;
      case 'DocumentManifest':
        return R4ResourceType.DocumentManifest;
      case 'DocumentReference':
        return R4ResourceType.DocumentReference;
      case 'Encounter':
        return R4ResourceType.Encounter;
      case 'EnrollmentRequest':
        return R4ResourceType.EnrollmentRequest;
      case 'EnrollmentResponse':
        return R4ResourceType.EnrollmentResponse;
      case 'EpisodeOfCare':
        return R4ResourceType.EpisodeOfCare;
      case 'EventDefinition':
        return R4ResourceType.EventDefinition;
      case 'Evidence':
        return R4ResourceType.Evidence;
      case 'EvidenceReport':
        return R4ResourceType.EvidenceReport;
      case 'EvidenceVariable':
        return R4ResourceType.EvidenceVariable;
      case 'ExampleScenario':
        return R4ResourceType.ExampleScenario;
      case 'ExplanationOfBenefit':
        return R4ResourceType.ExplanationOfBenefit;
      case 'FamilyMemberHistory':
        return R4ResourceType.FamilyMemberHistory;
      case 'Endpoint':
        return R4ResourceType.FhirEndpoint;
      case 'Group':
        return R4ResourceType.FhirGroup;
      case 'List':
        return R4ResourceType.FhirList;
      case 'Flag':
        return R4ResourceType.Flag;
      case 'Goal':
        return R4ResourceType.Goal;
      case 'GraphDefinition':
        return R4ResourceType.GraphDefinition;
      case 'GuidanceResponse':
        return R4ResourceType.GuidanceResponse;
      case 'HealthcareService':
        return R4ResourceType.HealthcareService;
      case 'ImagingStudy':
        return R4ResourceType.ImagingStudy;
      case 'Immunization':
        return R4ResourceType.Immunization;
      case 'ImmunizationEvaluation':
        return R4ResourceType.ImmunizationEvaluation;
      case 'ImmunizationRecommendation':
        return R4ResourceType.ImmunizationRecommendation;
      case 'ImplementationGuide':
        return R4ResourceType.ImplementationGuide;
      case 'Ingredient':
        return R4ResourceType.Ingredient;
      case 'InsurancePlan':
        return R4ResourceType.InsurancePlan;
      case 'Invoice':
        return R4ResourceType.Invoice;
      case 'Library':
        return R4ResourceType.Library;
      case 'Linkage':
        return R4ResourceType.Linkage;
      case 'Location':
        return R4ResourceType.Location;
      case 'ManufacturedItemDefinition':
        return R4ResourceType.ManufacturedItemDefinition;
      case 'Measure':
        return R4ResourceType.Measure;
      case 'MeasureReport':
        return R4ResourceType.MeasureReport;
      case 'Media':
        return R4ResourceType.Media;
      case 'Medication':
        return R4ResourceType.Medication;
      case 'MedicationAdministration':
        return R4ResourceType.MedicationAdministration;
      case 'MedicationDispense':
        return R4ResourceType.MedicationDispense;
      case 'MedicationKnowledge':
        return R4ResourceType.MedicationKnowledge;
      case 'MedicationRequest':
        return R4ResourceType.MedicationRequest;
      case 'MedicationStatement':
        return R4ResourceType.MedicationStatement;
      case 'MedicinalProductDefinition':
        return R4ResourceType.MedicinalProductDefinition;
      case 'MessageDefinition':
        return R4ResourceType.MessageDefinition;
      case 'MessageHeader':
        return R4ResourceType.MessageHeader;
      case 'MolecularSequence':
        return R4ResourceType.MolecularSequence;
      case 'NamingSystem':
        return R4ResourceType.NamingSystem;
      case 'NutritionOrder':
        return R4ResourceType.NutritionOrder;
      case 'NutritionProduct':
        return R4ResourceType.NutritionProduct;
      case 'Observation':
        return R4ResourceType.Observation;
      case 'ObservationDefinition':
        return R4ResourceType.ObservationDefinition;
      case 'OperationDefinition':
        return R4ResourceType.OperationDefinition;
      case 'OperationOutcome':
        return R4ResourceType.OperationOutcome;
      case 'Organization':
        return R4ResourceType.Organization;
      case 'OrganizationAffiliation':
        return R4ResourceType.OrganizationAffiliation;
      case 'PackagedProductDefinition':
        return R4ResourceType.PackagedProductDefinition;
      case 'Parameters':
        return R4ResourceType.Parameters;
      case 'Patient':
        return R4ResourceType.Patient;
      case 'PaymentNotice':
        return R4ResourceType.PaymentNotice;
      case 'PaymentReconciliation':
        return R4ResourceType.PaymentReconciliation;
      case 'Person':
        return R4ResourceType.Person;
      case 'PlanDefinition':
        return R4ResourceType.PlanDefinition;
      case 'Practitioner':
        return R4ResourceType.Practitioner;
      case 'PractitionerRole':
        return R4ResourceType.PractitionerRole;
      case 'Procedure':
        return R4ResourceType.Procedure;
      case 'Provenance':
        return R4ResourceType.Provenance;
      case 'Questionnaire':
        return R4ResourceType.Questionnaire;
      case 'QuestionnaireResponse':
        return R4ResourceType.QuestionnaireResponse;
      case 'RegulatedAuthorization':
        return R4ResourceType.RegulatedAuthorization;
      case 'RelatedPerson':
        return R4ResourceType.RelatedPerson;
      case 'RequestGroup':
        return R4ResourceType.RequestGroup;
      case 'ResearchDefinition':
        return R4ResourceType.ResearchDefinition;
      case 'ResearchElementDefinition':
        return R4ResourceType.ResearchElementDefinition;
      case 'ResearchStudy':
        return R4ResourceType.ResearchStudy;
      case 'ResearchSubject':
        return R4ResourceType.ResearchSubject;
      case 'RiskAssessment':
        return R4ResourceType.RiskAssessment;
      case 'Schedule':
        return R4ResourceType.Schedule;
      case 'SearchParameter':
        return R4ResourceType.SearchParameter;
      case 'ServiceRequest':
        return R4ResourceType.ServiceRequest;
      case 'Slot':
        return R4ResourceType.Slot;
      case 'Specimen':
        return R4ResourceType.Specimen;
      case 'SpecimenDefinition':
        return R4ResourceType.SpecimenDefinition;
      case 'StructureDefinition':
        return R4ResourceType.StructureDefinition;
      case 'StructureMap':
        return R4ResourceType.StructureMap;
      case 'Subscription':
        return R4ResourceType.Subscription;
      case 'SubscriptionStatus':
        return R4ResourceType.SubscriptionStatus;
      case 'SubscriptionTopic':
        return R4ResourceType.SubscriptionTopic;
      case 'Substance':
        return R4ResourceType.Substance;
      case 'SubstanceDefinition':
        return R4ResourceType.SubstanceDefinition;
      case 'SupplyDelivery':
        return R4ResourceType.SupplyDelivery;
      case 'SupplyRequest':
        return R4ResourceType.SupplyRequest;
      case 'Task':
        return R4ResourceType.Task;
      case 'TerminologyCapabilities':
        return R4ResourceType.TerminologyCapabilities;
      case 'TestReport':
        return R4ResourceType.TestReport;
      case 'TestScript':
        return R4ResourceType.TestScript;
      case 'ValueSet':
        return R4ResourceType.ValueSet;
      case 'VerificationResult':
        return R4ResourceType.VerificationResult;
      case 'VisionPrescription':
        return R4ResourceType.VisionPrescription;
      default:
        return null;
    }
  }

  /// Returns a list of [R4ResourceType] from a [dynamic] object.
  static R4ResourceType? fromJson(dynamic json) {
    if (json is String) {
      return fromString(json);
    }
    return null;
  }

  /// Returns a list of [R4ResourceType] as [String]s.
  static List<String> get typesAsStrings => <String>[
        'Account',
        'ActivityDefinition',
        'AdministrableProductDefinition',
        'AdverseEvent',
        'AllergyIntolerance',
        'Appointment',
        'AppointmentResponse',
        'AuditEvent',
        'Basic',
        'Binary',
        'BiologicallyDerivedProduct',
        'BodyStructure',
        'Bundle',
        'CapabilityStatement',
        'CarePlan',
        'CareTeam',
        'CatalogEntry',
        'ChargeItem',
        'ChargeItemDefinition',
        'Citation',
        'Claim',
        'ClaimResponse',
        'ClinicalImpression',
        'ClinicalUseDefinition',
        'CodeSystem',
        'Communication',
        'CommunicationRequest',
        'CompartmentDefinition',
        'Composition',
        'ConceptMap',
        'Condition',
        'Consent',
        'Contract',
        'Coverage',
        'CoverageEligibilityRequest',
        'CoverageEligibilityResponse',
        'DetectedIssue',
        'Device',
        'DeviceDefinition',
        'DeviceMetric',
        'DeviceRequest',
        'DeviceUseStatement',
        'DiagnosticReport',
        'DocumentManifest',
        'DocumentReference',
        'Encounter',
        'EnrollmentRequest',
        'EnrollmentResponse',
        'EpisodeOfCare',
        'EventDefinition',
        'Evidence',
        'EvidenceReport',
        'EvidenceVariable',
        'ExampleScenario',
        'ExplanationOfBenefit',
        'FamilyMemberHistory',
        'Endpoint',
        'Group',
        'List',
        'Flag',
        'Goal',
        'GraphDefinition',
        'GuidanceResponse',
        'HealthcareService',
        'ImagingStudy',
        'Immunization',
        'ImmunizationEvaluation',
        'ImmunizationRecommendation',
        'ImplementationGuide',
        'Ingredient',
        'InsurancePlan',
        'Invoice',
        'Library',
        'Linkage',
        'Location',
        'ManufacturedItemDefinition',
        'Measure',
        'MeasureReport',
        'Media',
        'Medication',
        'MedicationAdministration',
        'MedicationDispense',
        'MedicationKnowledge',
        'MedicationRequest',
        'MedicationStatement',
        'MedicinalProductDefinition',
        'MessageDefinition',
        'MessageHeader',
        'MolecularSequence',
        'NamingSystem',
        'NutritionOrder',
        'NutritionProduct',
        'Observation',
        'ObservationDefinition',
        'OperationDefinition',
        'OperationOutcome',
        'Organization',
        'OrganizationAffiliation',
        'PackagedProductDefinition',
        'Parameters',
        'Patient',
        'PaymentNotice',
        'PaymentReconciliation',
        'Person',
        'PlanDefinition',
        'Practitioner',
        'PractitionerRole',
        'Procedure',
        'Provenance',
        'Questionnaire',
        'QuestionnaireResponse',
        'RegulatedAuthorization',
        'RelatedPerson',
        'RequestGroup',
        'ResearchDefinition',
        'ResearchElementDefinition',
        'ResearchStudy',
        'ResearchSubject',
        'RiskAssessment',
        'Schedule',
        'SearchParameter',
        'ServiceRequest',
        'Slot',
        'Specimen',
        'SpecimenDefinition',
        'StructureDefinition',
        'StructureMap',
        'Subscription',
        'SubscriptionStatus',
        'SubscriptionTopic',
        'Substance',
        'SubstanceDefinition',
        'SupplyDelivery',
        'SupplyRequest',
        'Task',
        'TerminologyCapabilities',
        'TestReport',
        'TestScript',
        'ValueSet',
        'VerificationResult',
        'VisionPrescription',
      ];
}
