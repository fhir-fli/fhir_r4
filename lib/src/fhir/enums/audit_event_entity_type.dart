// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code for the entity type involved in the audit event.
class AuditEventEntityType {
  // Private constructor for internal use (like enum)
  AuditEventEntityType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventEntityType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value1 = AuditEventEntityType._(
    '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value2 = AuditEventEntityType._(
    '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value3 = AuditEventEntityType._(
    '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value4 = AuditEventEntityType._(
    '4',
  );

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Resource = AuditEventEntityType._(
    'Resource',
  );

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Binary = AuditEventEntityType._(
    'Binary',
  );

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Bundle = AuditEventEntityType._(
    'Bundle',
  );

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DomainResource = AuditEventEntityType._(
    'DomainResource',
  );

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Account = AuditEventEntityType._(
    'Account',
  );

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ActivityDefinition = AuditEventEntityType._(
    'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AdministrableProductDefinition =
      AuditEventEntityType._(
    'AdministrableProductDefinition',
  );

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AdverseEvent = AuditEventEntityType._(
    'AdverseEvent',
  );

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AllergyIntolerance = AuditEventEntityType._(
    'AllergyIntolerance',
  );

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Appointment = AuditEventEntityType._(
    'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AppointmentResponse =
      AuditEventEntityType._(
    'AppointmentResponse',
  );

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AuditEvent = AuditEventEntityType._(
    'AuditEvent',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Basic = AuditEventEntityType._(
    'Basic',
  );

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType BiologicallyDerivedProduct =
      AuditEventEntityType._(
    'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType BodyStructure = AuditEventEntityType._(
    'BodyStructure',
  );

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CapabilityStatement =
      AuditEventEntityType._(
    'CapabilityStatement',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CarePlan = AuditEventEntityType._(
    'CarePlan',
  );

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CareTeam = AuditEventEntityType._(
    'CareTeam',
  );

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CatalogEntry = AuditEventEntityType._(
    'CatalogEntry',
  );

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ChargeItem = AuditEventEntityType._(
    'ChargeItem',
  );

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ChargeItemDefinition =
      AuditEventEntityType._(
    'ChargeItemDefinition',
  );

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Citation = AuditEventEntityType._(
    'Citation',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Claim = AuditEventEntityType._(
    'Claim',
  );

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ClaimResponse = AuditEventEntityType._(
    'ClaimResponse',
  );

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ClinicalImpression = AuditEventEntityType._(
    'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ClinicalUseDefinition =
      AuditEventEntityType._(
    'ClinicalUseDefinition',
  );

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CodeSystem = AuditEventEntityType._(
    'CodeSystem',
  );

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Communication = AuditEventEntityType._(
    'Communication',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CommunicationRequest =
      AuditEventEntityType._(
    'CommunicationRequest',
  );

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CompartmentDefinition =
      AuditEventEntityType._(
    'CompartmentDefinition',
  );

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Composition = AuditEventEntityType._(
    'Composition',
  );

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ConceptMap = AuditEventEntityType._(
    'ConceptMap',
  );

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Condition = AuditEventEntityType._(
    'Condition',
  );

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Consent = AuditEventEntityType._(
    'Consent',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Contract = AuditEventEntityType._(
    'Contract',
  );

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Coverage = AuditEventEntityType._(
    'Coverage',
  );

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CoverageEligibilityRequest =
      AuditEventEntityType._(
    'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CoverageEligibilityResponse =
      AuditEventEntityType._(
    'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DetectedIssue = AuditEventEntityType._(
    'DetectedIssue',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Device = AuditEventEntityType._(
    'Device',
  );

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceDefinition = AuditEventEntityType._(
    'DeviceDefinition',
  );

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceMetric = AuditEventEntityType._(
    'DeviceMetric',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceRequest = AuditEventEntityType._(
    'DeviceRequest',
  );

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceUseStatement = AuditEventEntityType._(
    'DeviceUseStatement',
  );

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DiagnosticReport = AuditEventEntityType._(
    'DiagnosticReport',
  );

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DocumentManifest = AuditEventEntityType._(
    'DocumentManifest',
  );

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DocumentReference = AuditEventEntityType._(
    'DocumentReference',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Encounter = AuditEventEntityType._(
    'Encounter',
  );

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Endpoint = AuditEventEntityType._(
    'Endpoint',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EnrollmentRequest = AuditEventEntityType._(
    'EnrollmentRequest',
  );

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EnrollmentResponse = AuditEventEntityType._(
    'EnrollmentResponse',
  );

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EpisodeOfCare = AuditEventEntityType._(
    'EpisodeOfCare',
  );

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EventDefinition = AuditEventEntityType._(
    'EventDefinition',
  );

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Evidence = AuditEventEntityType._(
    'Evidence',
  );

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EvidenceReport = AuditEventEntityType._(
    'EvidenceReport',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EvidenceVariable = AuditEventEntityType._(
    'EvidenceVariable',
  );

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ExampleScenario = AuditEventEntityType._(
    'ExampleScenario',
  );

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ExplanationOfBenefit =
      AuditEventEntityType._(
    'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType FamilyMemberHistory =
      AuditEventEntityType._(
    'FamilyMemberHistory',
  );

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Flag = AuditEventEntityType._(
    'Flag',
  );

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Goal = AuditEventEntityType._(
    'Goal',
  );

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType GraphDefinition = AuditEventEntityType._(
    'GraphDefinition',
  );

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Group = AuditEventEntityType._(
    'Group',
  );

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType GuidanceResponse = AuditEventEntityType._(
    'GuidanceResponse',
  );

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType HealthcareService = AuditEventEntityType._(
    'HealthcareService',
  );

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImagingStudy = AuditEventEntityType._(
    'ImagingStudy',
  );

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Immunization = AuditEventEntityType._(
    'Immunization',
  );

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImmunizationEvaluation =
      AuditEventEntityType._(
    'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImmunizationRecommendation =
      AuditEventEntityType._(
    'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImplementationGuide =
      AuditEventEntityType._(
    'ImplementationGuide',
  );

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Ingredient = AuditEventEntityType._(
    'Ingredient',
  );

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType InsurancePlan = AuditEventEntityType._(
    'InsurancePlan',
  );

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Invoice = AuditEventEntityType._(
    'Invoice',
  );

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Library = AuditEventEntityType._(
    'Library',
  );

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Linkage = AuditEventEntityType._(
    'Linkage',
  );

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType List_ = AuditEventEntityType._(
    'List',
  );

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Location = AuditEventEntityType._(
    'Location',
  );

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ManufacturedItemDefinition =
      AuditEventEntityType._(
    'ManufacturedItemDefinition',
  );

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Measure = AuditEventEntityType._(
    'Measure',
  );

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MeasureReport = AuditEventEntityType._(
    'MeasureReport',
  );

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Media = AuditEventEntityType._(
    'Media',
  );

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Medication = AuditEventEntityType._(
    'Medication',
  );

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationAdministration =
      AuditEventEntityType._(
    'MedicationAdministration',
  );

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationDispense = AuditEventEntityType._(
    'MedicationDispense',
  );

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationKnowledge =
      AuditEventEntityType._(
    'MedicationKnowledge',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationRequest = AuditEventEntityType._(
    'MedicationRequest',
  );

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationStatement =
      AuditEventEntityType._(
    'MedicationStatement',
  );

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicinalProductDefinition =
      AuditEventEntityType._(
    'MedicinalProductDefinition',
  );

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MessageDefinition = AuditEventEntityType._(
    'MessageDefinition',
  );

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MessageHeader = AuditEventEntityType._(
    'MessageHeader',
  );

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MolecularSequence = AuditEventEntityType._(
    'MolecularSequence',
  );

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType NamingSystem = AuditEventEntityType._(
    'NamingSystem',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType NutritionOrder = AuditEventEntityType._(
    'NutritionOrder',
  );

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType NutritionProduct = AuditEventEntityType._(
    'NutritionProduct',
  );

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Observation = AuditEventEntityType._(
    'Observation',
  );

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ObservationDefinition =
      AuditEventEntityType._(
    'ObservationDefinition',
  );

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType OperationDefinition =
      AuditEventEntityType._(
    'OperationDefinition',
  );

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType OperationOutcome = AuditEventEntityType._(
    'OperationOutcome',
  );

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Organization = AuditEventEntityType._(
    'Organization',
  );

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType OrganizationAffiliation =
      AuditEventEntityType._(
    'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PackagedProductDefinition =
      AuditEventEntityType._(
    'PackagedProductDefinition',
  );

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Patient = AuditEventEntityType._(
    'Patient',
  );

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PaymentNotice = AuditEventEntityType._(
    'PaymentNotice',
  );

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PaymentReconciliation =
      AuditEventEntityType._(
    'PaymentReconciliation',
  );

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Person = AuditEventEntityType._(
    'Person',
  );

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PlanDefinition = AuditEventEntityType._(
    'PlanDefinition',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Practitioner = AuditEventEntityType._(
    'Practitioner',
  );

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PractitionerRole = AuditEventEntityType._(
    'PractitionerRole',
  );

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Procedure = AuditEventEntityType._(
    'Procedure',
  );

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Provenance = AuditEventEntityType._(
    'Provenance',
  );

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Questionnaire = AuditEventEntityType._(
    'Questionnaire',
  );

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType QuestionnaireResponse =
      AuditEventEntityType._(
    'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RegulatedAuthorization =
      AuditEventEntityType._(
    'RegulatedAuthorization',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RelatedPerson = AuditEventEntityType._(
    'RelatedPerson',
  );

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RequestGroup = AuditEventEntityType._(
    'RequestGroup',
  );

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchDefinition = AuditEventEntityType._(
    'ResearchDefinition',
  );

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchElementDefinition =
      AuditEventEntityType._(
    'ResearchElementDefinition',
  );

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchStudy = AuditEventEntityType._(
    'ResearchStudy',
  );

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchSubject = AuditEventEntityType._(
    'ResearchSubject',
  );

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RiskAssessment = AuditEventEntityType._(
    'RiskAssessment',
  );

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Schedule = AuditEventEntityType._(
    'Schedule',
  );

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SearchParameter = AuditEventEntityType._(
    'SearchParameter',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ServiceRequest = AuditEventEntityType._(
    'ServiceRequest',
  );

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Slot = AuditEventEntityType._(
    'Slot',
  );

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Specimen = AuditEventEntityType._(
    'Specimen',
  );

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SpecimenDefinition = AuditEventEntityType._(
    'SpecimenDefinition',
  );

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType StructureDefinition =
      AuditEventEntityType._(
    'StructureDefinition',
  );

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType StructureMap = AuditEventEntityType._(
    'StructureMap',
  );

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Subscription = AuditEventEntityType._(
    'Subscription',
  );

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SubscriptionStatus = AuditEventEntityType._(
    'SubscriptionStatus',
  );

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SubscriptionTopic = AuditEventEntityType._(
    'SubscriptionTopic',
  );

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Substance = AuditEventEntityType._(
    'Substance',
  );

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SubstanceDefinition =
      AuditEventEntityType._(
    'SubstanceDefinition',
  );

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SupplyDelivery = AuditEventEntityType._(
    'SupplyDelivery',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SupplyRequest = AuditEventEntityType._(
    'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Task = AuditEventEntityType._(
    'Task',
  );

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType TerminologyCapabilities =
      AuditEventEntityType._(
    'TerminologyCapabilities',
  );

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType TestReport = AuditEventEntityType._(
    'TestReport',
  );

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType TestScript = AuditEventEntityType._(
    'TestScript',
  );

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ValueSet = AuditEventEntityType._(
    'ValueSet',
  );

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType VerificationResult = AuditEventEntityType._(
    'VerificationResult',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType VisionPrescription = AuditEventEntityType._(
    'VisionPrescription',
  );

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Parameters = AuditEventEntityType._(
    'Parameters',
  );

  /// For instances where an Element is present but not value

  static final AuditEventEntityType elementOnly = AuditEventEntityType._('');

  /// List of all enum-like values
  static final List<AuditEventEntityType> values = [
    value1,
    value2,
    value3,
    value4,
    Resource,
    Binary,
    Bundle,
    DomainResource,
    Account,
    ActivityDefinition,
    AdministrableProductDefinition,
    AdverseEvent,
    AllergyIntolerance,
    Appointment,
    AppointmentResponse,
    AuditEvent,
    Basic,
    BiologicallyDerivedProduct,
    BodyStructure,
    CapabilityStatement,
    CarePlan,
    CareTeam,
    CatalogEntry,
    ChargeItem,
    ChargeItemDefinition,
    Citation,
    Claim,
    ClaimResponse,
    ClinicalImpression,
    ClinicalUseDefinition,
    CodeSystem,
    Communication,
    CommunicationRequest,
    CompartmentDefinition,
    Composition,
    ConceptMap,
    Condition,
    Consent,
    Contract,
    Coverage,
    CoverageEligibilityRequest,
    CoverageEligibilityResponse,
    DetectedIssue,
    Device,
    DeviceDefinition,
    DeviceMetric,
    DeviceRequest,
    DeviceUseStatement,
    DiagnosticReport,
    DocumentManifest,
    DocumentReference,
    Encounter,
    Endpoint,
    EnrollmentRequest,
    EnrollmentResponse,
    EpisodeOfCare,
    EventDefinition,
    Evidence,
    EvidenceReport,
    EvidenceVariable,
    ExampleScenario,
    ExplanationOfBenefit,
    FamilyMemberHistory,
    Flag,
    Goal,
    GraphDefinition,
    Group,
    GuidanceResponse,
    HealthcareService,
    ImagingStudy,
    Immunization,
    ImmunizationEvaluation,
    ImmunizationRecommendation,
    ImplementationGuide,
    Ingredient,
    InsurancePlan,
    Invoice,
    Library,
    Linkage,
    List_,
    Location,
    ManufacturedItemDefinition,
    Measure,
    MeasureReport,
    Media,
    Medication,
    MedicationAdministration,
    MedicationDispense,
    MedicationKnowledge,
    MedicationRequest,
    MedicationStatement,
    MedicinalProductDefinition,
    MessageDefinition,
    MessageHeader,
    MolecularSequence,
    NamingSystem,
    NutritionOrder,
    NutritionProduct,
    Observation,
    ObservationDefinition,
    OperationDefinition,
    OperationOutcome,
    Organization,
    OrganizationAffiliation,
    PackagedProductDefinition,
    Patient,
    PaymentNotice,
    PaymentReconciliation,
    Person,
    PlanDefinition,
    Practitioner,
    PractitionerRole,
    Procedure,
    Provenance,
    Questionnaire,
    QuestionnaireResponse,
    RegulatedAuthorization,
    RelatedPerson,
    RequestGroup,
    ResearchDefinition,
    ResearchElementDefinition,
    ResearchStudy,
    ResearchSubject,
    RiskAssessment,
    Schedule,
    SearchParameter,
    ServiceRequest,
    Slot,
    Specimen,
    SpecimenDefinition,
    StructureDefinition,
    StructureMap,
    Subscription,
    SubscriptionStatus,
    SubscriptionTopic,
    Substance,
    SubstanceDefinition,
    SupplyDelivery,
    SupplyRequest,
    Task,
    TerminologyCapabilities,
    TestReport,
    TestScript,
    ValueSet,
    VerificationResult,
    VisionPrescription,
    Parameters,
  ];

  /// Returns the enum value with an element attached
  AuditEventEntityType withElement(Element? newElement) {
    return AuditEventEntityType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventEntityType] from JSON.
  static AuditEventEntityType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventEntityType.elementOnly.withElement(element);
    }
    return AuditEventEntityType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
