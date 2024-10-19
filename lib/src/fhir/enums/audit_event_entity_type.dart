// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Code for the entity type involved in the audit event.
@collection
class AuditEventEntityType {
  /// Constructor for internal use (like enum)
  AuditEventEntityType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventEntityType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value1 = AuditEventEntityType(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value2 = AuditEventEntityType(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value3 = AuditEventEntityType(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType value4 = AuditEventEntityType(
    fhirCode: '4',
  );

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Resource = AuditEventEntityType(
    fhirCode: 'Resource',
  );

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Binary = AuditEventEntityType(
    fhirCode: 'Binary',
  );

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Bundle = AuditEventEntityType(
    fhirCode: 'Bundle',
  );

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DomainResource = AuditEventEntityType(
    fhirCode: 'DomainResource',
  );

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Account = AuditEventEntityType(
    fhirCode: 'Account',
  );

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ActivityDefinition = AuditEventEntityType(
    fhirCode: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AdministrableProductDefinition =
      AuditEventEntityType(
    fhirCode: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AdverseEvent = AuditEventEntityType(
    fhirCode: 'AdverseEvent',
  );

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AllergyIntolerance = AuditEventEntityType(
    fhirCode: 'AllergyIntolerance',
  );

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Appointment = AuditEventEntityType(
    fhirCode: 'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AppointmentResponse = AuditEventEntityType(
    fhirCode: 'AppointmentResponse',
  );

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType AuditEvent = AuditEventEntityType(
    fhirCode: 'AuditEvent',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Basic = AuditEventEntityType(
    fhirCode: 'Basic',
  );

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType BiologicallyDerivedProduct =
      AuditEventEntityType(
    fhirCode: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType BodyStructure = AuditEventEntityType(
    fhirCode: 'BodyStructure',
  );

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CapabilityStatement = AuditEventEntityType(
    fhirCode: 'CapabilityStatement',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CarePlan = AuditEventEntityType(
    fhirCode: 'CarePlan',
  );

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CareTeam = AuditEventEntityType(
    fhirCode: 'CareTeam',
  );

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CatalogEntry = AuditEventEntityType(
    fhirCode: 'CatalogEntry',
  );

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ChargeItem = AuditEventEntityType(
    fhirCode: 'ChargeItem',
  );

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ChargeItemDefinition = AuditEventEntityType(
    fhirCode: 'ChargeItemDefinition',
  );

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Citation = AuditEventEntityType(
    fhirCode: 'Citation',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Claim = AuditEventEntityType(
    fhirCode: 'Claim',
  );

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ClaimResponse = AuditEventEntityType(
    fhirCode: 'ClaimResponse',
  );

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ClinicalImpression = AuditEventEntityType(
    fhirCode: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ClinicalUseDefinition =
      AuditEventEntityType(
    fhirCode: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CodeSystem = AuditEventEntityType(
    fhirCode: 'CodeSystem',
  );

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Communication = AuditEventEntityType(
    fhirCode: 'Communication',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CommunicationRequest = AuditEventEntityType(
    fhirCode: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CompartmentDefinition =
      AuditEventEntityType(
    fhirCode: 'CompartmentDefinition',
  );

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Composition = AuditEventEntityType(
    fhirCode: 'Composition',
  );

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ConceptMap = AuditEventEntityType(
    fhirCode: 'ConceptMap',
  );

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Condition = AuditEventEntityType(
    fhirCode: 'Condition',
  );

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Consent = AuditEventEntityType(
    fhirCode: 'Consent',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Contract = AuditEventEntityType(
    fhirCode: 'Contract',
  );

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Coverage = AuditEventEntityType(
    fhirCode: 'Coverage',
  );

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CoverageEligibilityRequest =
      AuditEventEntityType(
    fhirCode: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType CoverageEligibilityResponse =
      AuditEventEntityType(
    fhirCode: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DetectedIssue = AuditEventEntityType(
    fhirCode: 'DetectedIssue',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Device = AuditEventEntityType(
    fhirCode: 'Device',
  );

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceDefinition = AuditEventEntityType(
    fhirCode: 'DeviceDefinition',
  );

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceMetric = AuditEventEntityType(
    fhirCode: 'DeviceMetric',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceRequest = AuditEventEntityType(
    fhirCode: 'DeviceRequest',
  );

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DeviceUseStatement = AuditEventEntityType(
    fhirCode: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DiagnosticReport = AuditEventEntityType(
    fhirCode: 'DiagnosticReport',
  );

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DocumentManifest = AuditEventEntityType(
    fhirCode: 'DocumentManifest',
  );

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType DocumentReference = AuditEventEntityType(
    fhirCode: 'DocumentReference',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Encounter = AuditEventEntityType(
    fhirCode: 'Encounter',
  );

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Endpoint = AuditEventEntityType(
    fhirCode: 'Endpoint',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EnrollmentRequest = AuditEventEntityType(
    fhirCode: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EnrollmentResponse = AuditEventEntityType(
    fhirCode: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EpisodeOfCare = AuditEventEntityType(
    fhirCode: 'EpisodeOfCare',
  );

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EventDefinition = AuditEventEntityType(
    fhirCode: 'EventDefinition',
  );

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Evidence = AuditEventEntityType(
    fhirCode: 'Evidence',
  );

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EvidenceReport = AuditEventEntityType(
    fhirCode: 'EvidenceReport',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType EvidenceVariable = AuditEventEntityType(
    fhirCode: 'EvidenceVariable',
  );

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ExampleScenario = AuditEventEntityType(
    fhirCode: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ExplanationOfBenefit = AuditEventEntityType(
    fhirCode: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType FamilyMemberHistory = AuditEventEntityType(
    fhirCode: 'FamilyMemberHistory',
  );

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Flag = AuditEventEntityType(
    fhirCode: 'Flag',
  );

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Goal = AuditEventEntityType(
    fhirCode: 'Goal',
  );

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType GraphDefinition = AuditEventEntityType(
    fhirCode: 'GraphDefinition',
  );

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Group = AuditEventEntityType(
    fhirCode: 'Group',
  );

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType GuidanceResponse = AuditEventEntityType(
    fhirCode: 'GuidanceResponse',
  );

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType HealthcareService = AuditEventEntityType(
    fhirCode: 'HealthcareService',
  );

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImagingStudy = AuditEventEntityType(
    fhirCode: 'ImagingStudy',
  );

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Immunization = AuditEventEntityType(
    fhirCode: 'Immunization',
  );

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImmunizationEvaluation =
      AuditEventEntityType(
    fhirCode: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImmunizationRecommendation =
      AuditEventEntityType(
    fhirCode: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ImplementationGuide = AuditEventEntityType(
    fhirCode: 'ImplementationGuide',
  );

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Ingredient = AuditEventEntityType(
    fhirCode: 'Ingredient',
  );

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType InsurancePlan = AuditEventEntityType(
    fhirCode: 'InsurancePlan',
  );

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Invoice = AuditEventEntityType(
    fhirCode: 'Invoice',
  );

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Library = AuditEventEntityType(
    fhirCode: 'Library',
  );

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Linkage = AuditEventEntityType(
    fhirCode: 'Linkage',
  );

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType List_ = AuditEventEntityType(
    fhirCode: 'List',
  );

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Location = AuditEventEntityType(
    fhirCode: 'Location',
  );

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ManufacturedItemDefinition =
      AuditEventEntityType(
    fhirCode: 'ManufacturedItemDefinition',
  );

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Measure = AuditEventEntityType(
    fhirCode: 'Measure',
  );

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MeasureReport = AuditEventEntityType(
    fhirCode: 'MeasureReport',
  );

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Media = AuditEventEntityType(
    fhirCode: 'Media',
  );

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Medication = AuditEventEntityType(
    fhirCode: 'Medication',
  );

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationAdministration =
      AuditEventEntityType(
    fhirCode: 'MedicationAdministration',
  );

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationDispense = AuditEventEntityType(
    fhirCode: 'MedicationDispense',
  );

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationKnowledge = AuditEventEntityType(
    fhirCode: 'MedicationKnowledge',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationRequest = AuditEventEntityType(
    fhirCode: 'MedicationRequest',
  );

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicationStatement = AuditEventEntityType(
    fhirCode: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MedicinalProductDefinition =
      AuditEventEntityType(
    fhirCode: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MessageDefinition = AuditEventEntityType(
    fhirCode: 'MessageDefinition',
  );

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MessageHeader = AuditEventEntityType(
    fhirCode: 'MessageHeader',
  );

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType MolecularSequence = AuditEventEntityType(
    fhirCode: 'MolecularSequence',
  );

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType NamingSystem = AuditEventEntityType(
    fhirCode: 'NamingSystem',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType NutritionOrder = AuditEventEntityType(
    fhirCode: 'NutritionOrder',
  );

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType NutritionProduct = AuditEventEntityType(
    fhirCode: 'NutritionProduct',
  );

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Observation = AuditEventEntityType(
    fhirCode: 'Observation',
  );

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ObservationDefinition =
      AuditEventEntityType(
    fhirCode: 'ObservationDefinition',
  );

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType OperationDefinition = AuditEventEntityType(
    fhirCode: 'OperationDefinition',
  );

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType OperationOutcome = AuditEventEntityType(
    fhirCode: 'OperationOutcome',
  );

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Organization = AuditEventEntityType(
    fhirCode: 'Organization',
  );

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType OrganizationAffiliation =
      AuditEventEntityType(
    fhirCode: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PackagedProductDefinition =
      AuditEventEntityType(
    fhirCode: 'PackagedProductDefinition',
  );

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Patient = AuditEventEntityType(
    fhirCode: 'Patient',
  );

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PaymentNotice = AuditEventEntityType(
    fhirCode: 'PaymentNotice',
  );

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PaymentReconciliation =
      AuditEventEntityType(
    fhirCode: 'PaymentReconciliation',
  );

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Person = AuditEventEntityType(
    fhirCode: 'Person',
  );

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PlanDefinition = AuditEventEntityType(
    fhirCode: 'PlanDefinition',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Practitioner = AuditEventEntityType(
    fhirCode: 'Practitioner',
  );

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType PractitionerRole = AuditEventEntityType(
    fhirCode: 'PractitionerRole',
  );

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Procedure = AuditEventEntityType(
    fhirCode: 'Procedure',
  );

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Provenance = AuditEventEntityType(
    fhirCode: 'Provenance',
  );

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Questionnaire = AuditEventEntityType(
    fhirCode: 'Questionnaire',
  );

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType QuestionnaireResponse =
      AuditEventEntityType(
    fhirCode: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RegulatedAuthorization =
      AuditEventEntityType(
    fhirCode: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RelatedPerson = AuditEventEntityType(
    fhirCode: 'RelatedPerson',
  );

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RequestGroup = AuditEventEntityType(
    fhirCode: 'RequestGroup',
  );

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchDefinition = AuditEventEntityType(
    fhirCode: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchElementDefinition =
      AuditEventEntityType(
    fhirCode: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchStudy = AuditEventEntityType(
    fhirCode: 'ResearchStudy',
  );

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ResearchSubject = AuditEventEntityType(
    fhirCode: 'ResearchSubject',
  );

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType RiskAssessment = AuditEventEntityType(
    fhirCode: 'RiskAssessment',
  );

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Schedule = AuditEventEntityType(
    fhirCode: 'Schedule',
  );

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SearchParameter = AuditEventEntityType(
    fhirCode: 'SearchParameter',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ServiceRequest = AuditEventEntityType(
    fhirCode: 'ServiceRequest',
  );

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Slot = AuditEventEntityType(
    fhirCode: 'Slot',
  );

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Specimen = AuditEventEntityType(
    fhirCode: 'Specimen',
  );

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SpecimenDefinition = AuditEventEntityType(
    fhirCode: 'SpecimenDefinition',
  );

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType StructureDefinition = AuditEventEntityType(
    fhirCode: 'StructureDefinition',
  );

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType StructureMap = AuditEventEntityType(
    fhirCode: 'StructureMap',
  );

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Subscription = AuditEventEntityType(
    fhirCode: 'Subscription',
  );

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SubscriptionStatus = AuditEventEntityType(
    fhirCode: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SubscriptionTopic = AuditEventEntityType(
    fhirCode: 'SubscriptionTopic',
  );

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Substance = AuditEventEntityType(
    fhirCode: 'Substance',
  );

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SubstanceDefinition = AuditEventEntityType(
    fhirCode: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SupplyDelivery = AuditEventEntityType(
    fhirCode: 'SupplyDelivery',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType SupplyRequest = AuditEventEntityType(
    fhirCode: 'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Task = AuditEventEntityType(
    fhirCode: 'Task',
  );

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType TerminologyCapabilities =
      AuditEventEntityType(
    fhirCode: 'TerminologyCapabilities',
  );

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType TestReport = AuditEventEntityType(
    fhirCode: 'TestReport',
  );

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType TestScript = AuditEventEntityType(
    fhirCode: 'TestScript',
  );

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType ValueSet = AuditEventEntityType(
    fhirCode: 'ValueSet',
  );

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType VerificationResult = AuditEventEntityType(
    fhirCode: 'VerificationResult',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType VisionPrescription = AuditEventEntityType(
    fhirCode: 'VisionPrescription',
  );

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventEntityType Parameters = AuditEventEntityType(
    fhirCode: 'Parameters',
  );

  /// For instances where an Element is present but not value

  static final AuditEventEntityType elementOnly = AuditEventEntityType();

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
    return AuditEventEntityType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return AuditEventEntityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventEntityType.$fhirCode';
}
