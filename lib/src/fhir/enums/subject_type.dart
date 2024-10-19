// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Possible types of subjects.
@collection
class SubjectType {
  /// Constructor for internal use (like enum)
  SubjectType({this.fhirCode, this.element})
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

  /// SubjectType values
  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Resource = SubjectType(
    fhirCode: 'Resource',
  );

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Binary = SubjectType(
    fhirCode: 'Binary',
  );

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Bundle = SubjectType(
    fhirCode: 'Bundle',
  );

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DomainResource = SubjectType(
    fhirCode: 'DomainResource',
  );

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Account = SubjectType(
    fhirCode: 'Account',
  );

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ActivityDefinition = SubjectType(
    fhirCode: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType AdministrableProductDefinition = SubjectType(
    fhirCode: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType AdverseEvent = SubjectType(
    fhirCode: 'AdverseEvent',
  );

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType AllergyIntolerance = SubjectType(
    fhirCode: 'AllergyIntolerance',
  );

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Appointment = SubjectType(
    fhirCode: 'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType AppointmentResponse = SubjectType(
    fhirCode: 'AppointmentResponse',
  );

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType AuditEvent = SubjectType(
    fhirCode: 'AuditEvent',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Basic = SubjectType(
    fhirCode: 'Basic',
  );

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType BiologicallyDerivedProduct = SubjectType(
    fhirCode: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType BodyStructure = SubjectType(
    fhirCode: 'BodyStructure',
  );

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CapabilityStatement = SubjectType(
    fhirCode: 'CapabilityStatement',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CarePlan = SubjectType(
    fhirCode: 'CarePlan',
  );

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CareTeam = SubjectType(
    fhirCode: 'CareTeam',
  );

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CatalogEntry = SubjectType(
    fhirCode: 'CatalogEntry',
  );

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ChargeItem = SubjectType(
    fhirCode: 'ChargeItem',
  );

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ChargeItemDefinition = SubjectType(
    fhirCode: 'ChargeItemDefinition',
  );

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Citation = SubjectType(
    fhirCode: 'Citation',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Claim = SubjectType(
    fhirCode: 'Claim',
  );

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ClaimResponse = SubjectType(
    fhirCode: 'ClaimResponse',
  );

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ClinicalImpression = SubjectType(
    fhirCode: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ClinicalUseDefinition = SubjectType(
    fhirCode: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CodeSystem = SubjectType(
    fhirCode: 'CodeSystem',
  );

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Communication = SubjectType(
    fhirCode: 'Communication',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CommunicationRequest = SubjectType(
    fhirCode: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CompartmentDefinition = SubjectType(
    fhirCode: 'CompartmentDefinition',
  );

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Composition = SubjectType(
    fhirCode: 'Composition',
  );

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ConceptMap = SubjectType(
    fhirCode: 'ConceptMap',
  );

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Condition = SubjectType(
    fhirCode: 'Condition',
  );

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Consent = SubjectType(
    fhirCode: 'Consent',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Contract = SubjectType(
    fhirCode: 'Contract',
  );

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Coverage = SubjectType(
    fhirCode: 'Coverage',
  );

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CoverageEligibilityRequest = SubjectType(
    fhirCode: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType CoverageEligibilityResponse = SubjectType(
    fhirCode: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DetectedIssue = SubjectType(
    fhirCode: 'DetectedIssue',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Device = SubjectType(
    fhirCode: 'Device',
  );

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DeviceDefinition = SubjectType(
    fhirCode: 'DeviceDefinition',
  );

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DeviceMetric = SubjectType(
    fhirCode: 'DeviceMetric',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DeviceRequest = SubjectType(
    fhirCode: 'DeviceRequest',
  );

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DeviceUseStatement = SubjectType(
    fhirCode: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DiagnosticReport = SubjectType(
    fhirCode: 'DiagnosticReport',
  );

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DocumentManifest = SubjectType(
    fhirCode: 'DocumentManifest',
  );

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType DocumentReference = SubjectType(
    fhirCode: 'DocumentReference',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Encounter = SubjectType(
    fhirCode: 'Encounter',
  );

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Endpoint = SubjectType(
    fhirCode: 'Endpoint',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType EnrollmentRequest = SubjectType(
    fhirCode: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType EnrollmentResponse = SubjectType(
    fhirCode: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType EpisodeOfCare = SubjectType(
    fhirCode: 'EpisodeOfCare',
  );

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType EventDefinition = SubjectType(
    fhirCode: 'EventDefinition',
  );

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Evidence = SubjectType(
    fhirCode: 'Evidence',
  );

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType EvidenceReport = SubjectType(
    fhirCode: 'EvidenceReport',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType EvidenceVariable = SubjectType(
    fhirCode: 'EvidenceVariable',
  );

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ExampleScenario = SubjectType(
    fhirCode: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ExplanationOfBenefit = SubjectType(
    fhirCode: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType FamilyMemberHistory = SubjectType(
    fhirCode: 'FamilyMemberHistory',
  );

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Flag = SubjectType(
    fhirCode: 'Flag',
  );

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Goal = SubjectType(
    fhirCode: 'Goal',
  );

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType GraphDefinition = SubjectType(
    fhirCode: 'GraphDefinition',
  );

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Group = SubjectType(
    fhirCode: 'Group',
  );

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType GuidanceResponse = SubjectType(
    fhirCode: 'GuidanceResponse',
  );

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType HealthcareService = SubjectType(
    fhirCode: 'HealthcareService',
  );

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ImagingStudy = SubjectType(
    fhirCode: 'ImagingStudy',
  );

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Immunization = SubjectType(
    fhirCode: 'Immunization',
  );

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ImmunizationEvaluation = SubjectType(
    fhirCode: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ImmunizationRecommendation = SubjectType(
    fhirCode: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ImplementationGuide = SubjectType(
    fhirCode: 'ImplementationGuide',
  );

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Ingredient = SubjectType(
    fhirCode: 'Ingredient',
  );

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType InsurancePlan = SubjectType(
    fhirCode: 'InsurancePlan',
  );

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Invoice = SubjectType(
    fhirCode: 'Invoice',
  );

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Library = SubjectType(
    fhirCode: 'Library',
  );

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Linkage = SubjectType(
    fhirCode: 'Linkage',
  );

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType List_ = SubjectType(
    fhirCode: 'List',
  );

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Location = SubjectType(
    fhirCode: 'Location',
  );

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ManufacturedItemDefinition = SubjectType(
    fhirCode: 'ManufacturedItemDefinition',
  );

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Measure = SubjectType(
    fhirCode: 'Measure',
  );

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MeasureReport = SubjectType(
    fhirCode: 'MeasureReport',
  );

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Media = SubjectType(
    fhirCode: 'Media',
  );

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Medication = SubjectType(
    fhirCode: 'Medication',
  );

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MedicationAdministration = SubjectType(
    fhirCode: 'MedicationAdministration',
  );

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MedicationDispense = SubjectType(
    fhirCode: 'MedicationDispense',
  );

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MedicationKnowledge = SubjectType(
    fhirCode: 'MedicationKnowledge',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MedicationRequest = SubjectType(
    fhirCode: 'MedicationRequest',
  );

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MedicationStatement = SubjectType(
    fhirCode: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MedicinalProductDefinition = SubjectType(
    fhirCode: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MessageDefinition = SubjectType(
    fhirCode: 'MessageDefinition',
  );

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MessageHeader = SubjectType(
    fhirCode: 'MessageHeader',
  );

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType MolecularSequence = SubjectType(
    fhirCode: 'MolecularSequence',
  );

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType NamingSystem = SubjectType(
    fhirCode: 'NamingSystem',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType NutritionOrder = SubjectType(
    fhirCode: 'NutritionOrder',
  );

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType NutritionProduct = SubjectType(
    fhirCode: 'NutritionProduct',
  );

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Observation = SubjectType(
    fhirCode: 'Observation',
  );

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ObservationDefinition = SubjectType(
    fhirCode: 'ObservationDefinition',
  );

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType OperationDefinition = SubjectType(
    fhirCode: 'OperationDefinition',
  );

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType OperationOutcome = SubjectType(
    fhirCode: 'OperationOutcome',
  );

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Organization = SubjectType(
    fhirCode: 'Organization',
  );

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType OrganizationAffiliation = SubjectType(
    fhirCode: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType PackagedProductDefinition = SubjectType(
    fhirCode: 'PackagedProductDefinition',
  );

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Patient = SubjectType(
    fhirCode: 'Patient',
  );

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType PaymentNotice = SubjectType(
    fhirCode: 'PaymentNotice',
  );

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType PaymentReconciliation = SubjectType(
    fhirCode: 'PaymentReconciliation',
  );

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Person = SubjectType(
    fhirCode: 'Person',
  );

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType PlanDefinition = SubjectType(
    fhirCode: 'PlanDefinition',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Practitioner = SubjectType(
    fhirCode: 'Practitioner',
  );

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType PractitionerRole = SubjectType(
    fhirCode: 'PractitionerRole',
  );

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Procedure = SubjectType(
    fhirCode: 'Procedure',
  );

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Provenance = SubjectType(
    fhirCode: 'Provenance',
  );

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Questionnaire = SubjectType(
    fhirCode: 'Questionnaire',
  );

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType QuestionnaireResponse = SubjectType(
    fhirCode: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType RegulatedAuthorization = SubjectType(
    fhirCode: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType RelatedPerson = SubjectType(
    fhirCode: 'RelatedPerson',
  );

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType RequestGroup = SubjectType(
    fhirCode: 'RequestGroup',
  );

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ResearchDefinition = SubjectType(
    fhirCode: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ResearchElementDefinition = SubjectType(
    fhirCode: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ResearchStudy = SubjectType(
    fhirCode: 'ResearchStudy',
  );

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ResearchSubject = SubjectType(
    fhirCode: 'ResearchSubject',
  );

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType RiskAssessment = SubjectType(
    fhirCode: 'RiskAssessment',
  );

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Schedule = SubjectType(
    fhirCode: 'Schedule',
  );

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SearchParameter = SubjectType(
    fhirCode: 'SearchParameter',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ServiceRequest = SubjectType(
    fhirCode: 'ServiceRequest',
  );

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Slot = SubjectType(
    fhirCode: 'Slot',
  );

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Specimen = SubjectType(
    fhirCode: 'Specimen',
  );

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SpecimenDefinition = SubjectType(
    fhirCode: 'SpecimenDefinition',
  );

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType StructureDefinition = SubjectType(
    fhirCode: 'StructureDefinition',
  );

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType StructureMap = SubjectType(
    fhirCode: 'StructureMap',
  );

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Subscription = SubjectType(
    fhirCode: 'Subscription',
  );

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SubscriptionStatus = SubjectType(
    fhirCode: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SubscriptionTopic = SubjectType(
    fhirCode: 'SubscriptionTopic',
  );

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Substance = SubjectType(
    fhirCode: 'Substance',
  );

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SubstanceDefinition = SubjectType(
    fhirCode: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SupplyDelivery = SubjectType(
    fhirCode: 'SupplyDelivery',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType SupplyRequest = SubjectType(
    fhirCode: 'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Task = SubjectType(
    fhirCode: 'Task',
  );

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType TerminologyCapabilities = SubjectType(
    fhirCode: 'TerminologyCapabilities',
  );

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType TestReport = SubjectType(
    fhirCode: 'TestReport',
  );

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType TestScript = SubjectType(
    fhirCode: 'TestScript',
  );

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType ValueSet = SubjectType(
    fhirCode: 'ValueSet',
  );

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType VerificationResult = SubjectType(
    fhirCode: 'VerificationResult',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType VisionPrescription = SubjectType(
    fhirCode: 'VisionPrescription',
  );

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubjectType Parameters = SubjectType(
    fhirCode: 'Parameters',
  );

  /// For instances where an Element is present but not value

  static final SubjectType elementOnly = SubjectType();

  /// List of all enum-like values
  static final List<SubjectType> values = [
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
  SubjectType withElement(Element? newElement) {
    return SubjectType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubjectType] from JSON.
  static SubjectType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubjectType.elementOnly.withElement(element);
    }
    return SubjectType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubjectType.$fhirCode';
}
