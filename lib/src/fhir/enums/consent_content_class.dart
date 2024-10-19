// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes the FHIR resource types, along with some other important content class codes
@collection
class ConsentContentClass {
  /// Constructor for internal use (like enum)
  ConsentContentClass({this.fhirCode, this.element})
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

  /// ConsentContentClass values
  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Resource = ConsentContentClass(
    fhirCode: 'Resource',
  );

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Binary = ConsentContentClass(
    fhirCode: 'Binary',
  );

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Bundle = ConsentContentClass(
    fhirCode: 'Bundle',
  );

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DomainResource = ConsentContentClass(
    fhirCode: 'DomainResource',
  );

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Account = ConsentContentClass(
    fhirCode: 'Account',
  );

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ActivityDefinition = ConsentContentClass(
    fhirCode: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass AdministrableProductDefinition =
      ConsentContentClass(
    fhirCode: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass AdverseEvent = ConsentContentClass(
    fhirCode: 'AdverseEvent',
  );

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass AllergyIntolerance = ConsentContentClass(
    fhirCode: 'AllergyIntolerance',
  );

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Appointment = ConsentContentClass(
    fhirCode: 'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass AppointmentResponse = ConsentContentClass(
    fhirCode: 'AppointmentResponse',
  );

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass AuditEvent = ConsentContentClass(
    fhirCode: 'AuditEvent',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Basic = ConsentContentClass(
    fhirCode: 'Basic',
  );

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass BiologicallyDerivedProduct =
      ConsentContentClass(
    fhirCode: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass BodyStructure = ConsentContentClass(
    fhirCode: 'BodyStructure',
  );

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CapabilityStatement = ConsentContentClass(
    fhirCode: 'CapabilityStatement',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CarePlan = ConsentContentClass(
    fhirCode: 'CarePlan',
  );

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CareTeam = ConsentContentClass(
    fhirCode: 'CareTeam',
  );

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CatalogEntry = ConsentContentClass(
    fhirCode: 'CatalogEntry',
  );

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ChargeItem = ConsentContentClass(
    fhirCode: 'ChargeItem',
  );

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ChargeItemDefinition = ConsentContentClass(
    fhirCode: 'ChargeItemDefinition',
  );

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Citation = ConsentContentClass(
    fhirCode: 'Citation',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Claim = ConsentContentClass(
    fhirCode: 'Claim',
  );

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ClaimResponse = ConsentContentClass(
    fhirCode: 'ClaimResponse',
  );

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ClinicalImpression = ConsentContentClass(
    fhirCode: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ClinicalUseDefinition = ConsentContentClass(
    fhirCode: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CodeSystem = ConsentContentClass(
    fhirCode: 'CodeSystem',
  );

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Communication = ConsentContentClass(
    fhirCode: 'Communication',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CommunicationRequest = ConsentContentClass(
    fhirCode: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CompartmentDefinition = ConsentContentClass(
    fhirCode: 'CompartmentDefinition',
  );

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Composition = ConsentContentClass(
    fhirCode: 'Composition',
  );

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ConceptMap = ConsentContentClass(
    fhirCode: 'ConceptMap',
  );

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Condition = ConsentContentClass(
    fhirCode: 'Condition',
  );

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Consent = ConsentContentClass(
    fhirCode: 'Consent',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Contract = ConsentContentClass(
    fhirCode: 'Contract',
  );

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Coverage = ConsentContentClass(
    fhirCode: 'Coverage',
  );

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CoverageEligibilityRequest =
      ConsentContentClass(
    fhirCode: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass CoverageEligibilityResponse =
      ConsentContentClass(
    fhirCode: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DetectedIssue = ConsentContentClass(
    fhirCode: 'DetectedIssue',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Device = ConsentContentClass(
    fhirCode: 'Device',
  );

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DeviceDefinition = ConsentContentClass(
    fhirCode: 'DeviceDefinition',
  );

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DeviceMetric = ConsentContentClass(
    fhirCode: 'DeviceMetric',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DeviceRequest = ConsentContentClass(
    fhirCode: 'DeviceRequest',
  );

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DeviceUseStatement = ConsentContentClass(
    fhirCode: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DiagnosticReport = ConsentContentClass(
    fhirCode: 'DiagnosticReport',
  );

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DocumentManifest = ConsentContentClass(
    fhirCode: 'DocumentManifest',
  );

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass DocumentReference = ConsentContentClass(
    fhirCode: 'DocumentReference',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Encounter = ConsentContentClass(
    fhirCode: 'Encounter',
  );

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Endpoint = ConsentContentClass(
    fhirCode: 'Endpoint',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass EnrollmentRequest = ConsentContentClass(
    fhirCode: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass EnrollmentResponse = ConsentContentClass(
    fhirCode: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass EpisodeOfCare = ConsentContentClass(
    fhirCode: 'EpisodeOfCare',
  );

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass EventDefinition = ConsentContentClass(
    fhirCode: 'EventDefinition',
  );

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Evidence = ConsentContentClass(
    fhirCode: 'Evidence',
  );

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass EvidenceReport = ConsentContentClass(
    fhirCode: 'EvidenceReport',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass EvidenceVariable = ConsentContentClass(
    fhirCode: 'EvidenceVariable',
  );

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ExampleScenario = ConsentContentClass(
    fhirCode: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ExplanationOfBenefit = ConsentContentClass(
    fhirCode: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass FamilyMemberHistory = ConsentContentClass(
    fhirCode: 'FamilyMemberHistory',
  );

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Flag = ConsentContentClass(
    fhirCode: 'Flag',
  );

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Goal = ConsentContentClass(
    fhirCode: 'Goal',
  );

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass GraphDefinition = ConsentContentClass(
    fhirCode: 'GraphDefinition',
  );

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Group = ConsentContentClass(
    fhirCode: 'Group',
  );

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass GuidanceResponse = ConsentContentClass(
    fhirCode: 'GuidanceResponse',
  );

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass HealthcareService = ConsentContentClass(
    fhirCode: 'HealthcareService',
  );

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ImagingStudy = ConsentContentClass(
    fhirCode: 'ImagingStudy',
  );

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Immunization = ConsentContentClass(
    fhirCode: 'Immunization',
  );

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ImmunizationEvaluation = ConsentContentClass(
    fhirCode: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ImmunizationRecommendation =
      ConsentContentClass(
    fhirCode: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ImplementationGuide = ConsentContentClass(
    fhirCode: 'ImplementationGuide',
  );

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Ingredient = ConsentContentClass(
    fhirCode: 'Ingredient',
  );

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass InsurancePlan = ConsentContentClass(
    fhirCode: 'InsurancePlan',
  );

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Invoice = ConsentContentClass(
    fhirCode: 'Invoice',
  );

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Library = ConsentContentClass(
    fhirCode: 'Library',
  );

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Linkage = ConsentContentClass(
    fhirCode: 'Linkage',
  );

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass List_ = ConsentContentClass(
    fhirCode: 'List',
  );

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Location = ConsentContentClass(
    fhirCode: 'Location',
  );

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ManufacturedItemDefinition =
      ConsentContentClass(
    fhirCode: 'ManufacturedItemDefinition',
  );

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Measure = ConsentContentClass(
    fhirCode: 'Measure',
  );

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MeasureReport = ConsentContentClass(
    fhirCode: 'MeasureReport',
  );

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Media = ConsentContentClass(
    fhirCode: 'Media',
  );

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Medication = ConsentContentClass(
    fhirCode: 'Medication',
  );

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MedicationAdministration =
      ConsentContentClass(
    fhirCode: 'MedicationAdministration',
  );

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MedicationDispense = ConsentContentClass(
    fhirCode: 'MedicationDispense',
  );

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MedicationKnowledge = ConsentContentClass(
    fhirCode: 'MedicationKnowledge',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MedicationRequest = ConsentContentClass(
    fhirCode: 'MedicationRequest',
  );

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MedicationStatement = ConsentContentClass(
    fhirCode: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MedicinalProductDefinition =
      ConsentContentClass(
    fhirCode: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MessageDefinition = ConsentContentClass(
    fhirCode: 'MessageDefinition',
  );

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MessageHeader = ConsentContentClass(
    fhirCode: 'MessageHeader',
  );

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass MolecularSequence = ConsentContentClass(
    fhirCode: 'MolecularSequence',
  );

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass NamingSystem = ConsentContentClass(
    fhirCode: 'NamingSystem',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass NutritionOrder = ConsentContentClass(
    fhirCode: 'NutritionOrder',
  );

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass NutritionProduct = ConsentContentClass(
    fhirCode: 'NutritionProduct',
  );

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Observation = ConsentContentClass(
    fhirCode: 'Observation',
  );

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ObservationDefinition = ConsentContentClass(
    fhirCode: 'ObservationDefinition',
  );

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass OperationDefinition = ConsentContentClass(
    fhirCode: 'OperationDefinition',
  );

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass OperationOutcome = ConsentContentClass(
    fhirCode: 'OperationOutcome',
  );

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Organization = ConsentContentClass(
    fhirCode: 'Organization',
  );

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass OrganizationAffiliation =
      ConsentContentClass(
    fhirCode: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass PackagedProductDefinition =
      ConsentContentClass(
    fhirCode: 'PackagedProductDefinition',
  );

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Patient = ConsentContentClass(
    fhirCode: 'Patient',
  );

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass PaymentNotice = ConsentContentClass(
    fhirCode: 'PaymentNotice',
  );

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass PaymentReconciliation = ConsentContentClass(
    fhirCode: 'PaymentReconciliation',
  );

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Person = ConsentContentClass(
    fhirCode: 'Person',
  );

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass PlanDefinition = ConsentContentClass(
    fhirCode: 'PlanDefinition',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Practitioner = ConsentContentClass(
    fhirCode: 'Practitioner',
  );

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass PractitionerRole = ConsentContentClass(
    fhirCode: 'PractitionerRole',
  );

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Procedure = ConsentContentClass(
    fhirCode: 'Procedure',
  );

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Provenance = ConsentContentClass(
    fhirCode: 'Provenance',
  );

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Questionnaire = ConsentContentClass(
    fhirCode: 'Questionnaire',
  );

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass QuestionnaireResponse = ConsentContentClass(
    fhirCode: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass RegulatedAuthorization = ConsentContentClass(
    fhirCode: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass RelatedPerson = ConsentContentClass(
    fhirCode: 'RelatedPerson',
  );

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass RequestGroup = ConsentContentClass(
    fhirCode: 'RequestGroup',
  );

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ResearchDefinition = ConsentContentClass(
    fhirCode: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ResearchElementDefinition =
      ConsentContentClass(
    fhirCode: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ResearchStudy = ConsentContentClass(
    fhirCode: 'ResearchStudy',
  );

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ResearchSubject = ConsentContentClass(
    fhirCode: 'ResearchSubject',
  );

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass RiskAssessment = ConsentContentClass(
    fhirCode: 'RiskAssessment',
  );

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Schedule = ConsentContentClass(
    fhirCode: 'Schedule',
  );

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SearchParameter = ConsentContentClass(
    fhirCode: 'SearchParameter',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ServiceRequest = ConsentContentClass(
    fhirCode: 'ServiceRequest',
  );

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Slot = ConsentContentClass(
    fhirCode: 'Slot',
  );

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Specimen = ConsentContentClass(
    fhirCode: 'Specimen',
  );

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SpecimenDefinition = ConsentContentClass(
    fhirCode: 'SpecimenDefinition',
  );

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass StructureDefinition = ConsentContentClass(
    fhirCode: 'StructureDefinition',
  );

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass StructureMap = ConsentContentClass(
    fhirCode: 'StructureMap',
  );

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Subscription = ConsentContentClass(
    fhirCode: 'Subscription',
  );

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SubscriptionStatus = ConsentContentClass(
    fhirCode: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SubscriptionTopic = ConsentContentClass(
    fhirCode: 'SubscriptionTopic',
  );

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Substance = ConsentContentClass(
    fhirCode: 'Substance',
  );

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SubstanceDefinition = ConsentContentClass(
    fhirCode: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SupplyDelivery = ConsentContentClass(
    fhirCode: 'SupplyDelivery',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass SupplyRequest = ConsentContentClass(
    fhirCode: 'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Task = ConsentContentClass(
    fhirCode: 'Task',
  );

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass TerminologyCapabilities =
      ConsentContentClass(
    fhirCode: 'TerminologyCapabilities',
  );

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass TestReport = ConsentContentClass(
    fhirCode: 'TestReport',
  );

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass TestScript = ConsentContentClass(
    fhirCode: 'TestScript',
  );

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass ValueSet = ConsentContentClass(
    fhirCode: 'ValueSet',
  );

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass VerificationResult = ConsentContentClass(
    fhirCode: 'VerificationResult',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass VisionPrescription = ConsentContentClass(
    fhirCode: 'VisionPrescription',
  );

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass Parameters = ConsentContentClass(
    fhirCode: 'Parameters',
  );

  /// http___hl7_org_fhir_StructureDefinition_lipidprofile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass
      http___hl7_org_fhir_StructureDefinition_lipidprofile =
      ConsentContentClass(
    fhirCode: 'http://hl7.org/fhir/StructureDefinition/lipidprofile',
  );

  /// application_hl7_cda_xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentContentClass application_hl7_cda_xml =
      ConsentContentClass(
    fhirCode: 'application/hl7-cda+xml',
  );

  /// For instances where an Element is present but not value

  static final ConsentContentClass elementOnly = ConsentContentClass();

  /// List of all enum-like values
  static final List<ConsentContentClass> values = [
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
    http___hl7_org_fhir_StructureDefinition_lipidprofile,
    application_hl7_cda_xml,
  ];

  /// Returns the enum value with an element attached
  ConsentContentClass withElement(Element? newElement) {
    return ConsentContentClass(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentContentClass] from JSON.
  static ConsentContentClass fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentContentClass.elementOnly.withElement(element);
    }
    return ConsentContentClass.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentContentClass.$fhirCode';
}
