// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Resource types defined as part of FHIR that can be represented as in-line definitions of a care plan activity.
class CarePlanActivityKind {
  // Private constructor for internal use (like enum)
  CarePlanActivityKind._(this.fhirCode, {this.element});

  /// Factory constructor to create [CarePlanActivityKind] from JSON.
  factory CarePlanActivityKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityKind.elementOnly.withElement(element);
    }
    return CarePlanActivityKind._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CarePlanActivityKind values
  /// Resource
  static final CarePlanActivityKind Resource = CarePlanActivityKind._(
    'Resource',
  );

  /// Binary
  static final CarePlanActivityKind Binary = CarePlanActivityKind._(
    'Binary',
  );

  /// Bundle
  static final CarePlanActivityKind Bundle = CarePlanActivityKind._(
    'Bundle',
  );

  /// DomainResource
  static final CarePlanActivityKind DomainResource = CarePlanActivityKind._(
    'DomainResource',
  );

  /// Account
  static final CarePlanActivityKind Account = CarePlanActivityKind._(
    'Account',
  );

  /// ActivityDefinition
  static final CarePlanActivityKind ActivityDefinition = CarePlanActivityKind._(
    'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final CarePlanActivityKind AdministrableProductDefinition =
      CarePlanActivityKind._(
    'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final CarePlanActivityKind AdverseEvent = CarePlanActivityKind._(
    'AdverseEvent',
  );

  /// AllergyIntolerance
  static final CarePlanActivityKind AllergyIntolerance = CarePlanActivityKind._(
    'AllergyIntolerance',
  );

  /// Appointment
  static final CarePlanActivityKind Appointment = CarePlanActivityKind._(
    'Appointment',
  );

  /// AppointmentResponse
  static final CarePlanActivityKind AppointmentResponse =
      CarePlanActivityKind._(
    'AppointmentResponse',
  );

  /// AuditEvent
  static final CarePlanActivityKind AuditEvent = CarePlanActivityKind._(
    'AuditEvent',
  );

  /// Basic
  static final CarePlanActivityKind Basic = CarePlanActivityKind._(
    'Basic',
  );

  /// BiologicallyDerivedProduct
  static final CarePlanActivityKind BiologicallyDerivedProduct =
      CarePlanActivityKind._(
    'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final CarePlanActivityKind BodyStructure = CarePlanActivityKind._(
    'BodyStructure',
  );

  /// CapabilityStatement
  static final CarePlanActivityKind CapabilityStatement =
      CarePlanActivityKind._(
    'CapabilityStatement',
  );

  /// CarePlan
  static final CarePlanActivityKind CarePlan = CarePlanActivityKind._(
    'CarePlan',
  );

  /// CareTeam
  static final CarePlanActivityKind CareTeam = CarePlanActivityKind._(
    'CareTeam',
  );

  /// CatalogEntry
  static final CarePlanActivityKind CatalogEntry = CarePlanActivityKind._(
    'CatalogEntry',
  );

  /// ChargeItem
  static final CarePlanActivityKind ChargeItem = CarePlanActivityKind._(
    'ChargeItem',
  );

  /// ChargeItemDefinition
  static final CarePlanActivityKind ChargeItemDefinition =
      CarePlanActivityKind._(
    'ChargeItemDefinition',
  );

  /// Citation
  static final CarePlanActivityKind Citation = CarePlanActivityKind._(
    'Citation',
  );

  /// Claim
  static final CarePlanActivityKind Claim = CarePlanActivityKind._(
    'Claim',
  );

  /// ClaimResponse
  static final CarePlanActivityKind ClaimResponse = CarePlanActivityKind._(
    'ClaimResponse',
  );

  /// ClinicalImpression
  static final CarePlanActivityKind ClinicalImpression = CarePlanActivityKind._(
    'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final CarePlanActivityKind ClinicalUseDefinition =
      CarePlanActivityKind._(
    'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final CarePlanActivityKind CodeSystem = CarePlanActivityKind._(
    'CodeSystem',
  );

  /// Communication
  static final CarePlanActivityKind Communication = CarePlanActivityKind._(
    'Communication',
  );

  /// CommunicationRequest
  static final CarePlanActivityKind CommunicationRequest =
      CarePlanActivityKind._(
    'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final CarePlanActivityKind CompartmentDefinition =
      CarePlanActivityKind._(
    'CompartmentDefinition',
  );

  /// Composition
  static final CarePlanActivityKind Composition = CarePlanActivityKind._(
    'Composition',
  );

  /// ConceptMap
  static final CarePlanActivityKind ConceptMap = CarePlanActivityKind._(
    'ConceptMap',
  );

  /// Condition
  static final CarePlanActivityKind Condition = CarePlanActivityKind._(
    'Condition',
  );

  /// Consent
  static final CarePlanActivityKind Consent = CarePlanActivityKind._(
    'Consent',
  );

  /// Contract
  static final CarePlanActivityKind Contract = CarePlanActivityKind._(
    'Contract',
  );

  /// Coverage
  static final CarePlanActivityKind Coverage = CarePlanActivityKind._(
    'Coverage',
  );

  /// CoverageEligibilityRequest
  static final CarePlanActivityKind CoverageEligibilityRequest =
      CarePlanActivityKind._(
    'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final CarePlanActivityKind CoverageEligibilityResponse =
      CarePlanActivityKind._(
    'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final CarePlanActivityKind DetectedIssue = CarePlanActivityKind._(
    'DetectedIssue',
  );

  /// Device
  static final CarePlanActivityKind Device = CarePlanActivityKind._(
    'Device',
  );

  /// DeviceDefinition
  static final CarePlanActivityKind DeviceDefinition = CarePlanActivityKind._(
    'DeviceDefinition',
  );

  /// DeviceMetric
  static final CarePlanActivityKind DeviceMetric = CarePlanActivityKind._(
    'DeviceMetric',
  );

  /// DeviceRequest
  static final CarePlanActivityKind DeviceRequest = CarePlanActivityKind._(
    'DeviceRequest',
  );

  /// DeviceUseStatement
  static final CarePlanActivityKind DeviceUseStatement = CarePlanActivityKind._(
    'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final CarePlanActivityKind DiagnosticReport = CarePlanActivityKind._(
    'DiagnosticReport',
  );

  /// DocumentManifest
  static final CarePlanActivityKind DocumentManifest = CarePlanActivityKind._(
    'DocumentManifest',
  );

  /// DocumentReference
  static final CarePlanActivityKind DocumentReference = CarePlanActivityKind._(
    'DocumentReference',
  );

  /// Encounter
  static final CarePlanActivityKind Encounter = CarePlanActivityKind._(
    'Encounter',
  );

  /// Endpoint
  static final CarePlanActivityKind Endpoint = CarePlanActivityKind._(
    'Endpoint',
  );

  /// EnrollmentRequest
  static final CarePlanActivityKind EnrollmentRequest = CarePlanActivityKind._(
    'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final CarePlanActivityKind EnrollmentResponse = CarePlanActivityKind._(
    'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final CarePlanActivityKind EpisodeOfCare = CarePlanActivityKind._(
    'EpisodeOfCare',
  );

  /// EventDefinition
  static final CarePlanActivityKind EventDefinition = CarePlanActivityKind._(
    'EventDefinition',
  );

  /// Evidence
  static final CarePlanActivityKind Evidence = CarePlanActivityKind._(
    'Evidence',
  );

  /// EvidenceReport
  static final CarePlanActivityKind EvidenceReport = CarePlanActivityKind._(
    'EvidenceReport',
  );

  /// EvidenceVariable
  static final CarePlanActivityKind EvidenceVariable = CarePlanActivityKind._(
    'EvidenceVariable',
  );

  /// ExampleScenario
  static final CarePlanActivityKind ExampleScenario = CarePlanActivityKind._(
    'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final CarePlanActivityKind ExplanationOfBenefit =
      CarePlanActivityKind._(
    'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final CarePlanActivityKind FamilyMemberHistory =
      CarePlanActivityKind._(
    'FamilyMemberHistory',
  );

  /// Flag
  static final CarePlanActivityKind Flag = CarePlanActivityKind._(
    'Flag',
  );

  /// Goal
  static final CarePlanActivityKind Goal = CarePlanActivityKind._(
    'Goal',
  );

  /// GraphDefinition
  static final CarePlanActivityKind GraphDefinition = CarePlanActivityKind._(
    'GraphDefinition',
  );

  /// Group
  static final CarePlanActivityKind Group = CarePlanActivityKind._(
    'Group',
  );

  /// GuidanceResponse
  static final CarePlanActivityKind GuidanceResponse = CarePlanActivityKind._(
    'GuidanceResponse',
  );

  /// HealthcareService
  static final CarePlanActivityKind HealthcareService = CarePlanActivityKind._(
    'HealthcareService',
  );

  /// ImagingStudy
  static final CarePlanActivityKind ImagingStudy = CarePlanActivityKind._(
    'ImagingStudy',
  );

  /// Immunization
  static final CarePlanActivityKind Immunization = CarePlanActivityKind._(
    'Immunization',
  );

  /// ImmunizationEvaluation
  static final CarePlanActivityKind ImmunizationEvaluation =
      CarePlanActivityKind._(
    'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final CarePlanActivityKind ImmunizationRecommendation =
      CarePlanActivityKind._(
    'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final CarePlanActivityKind ImplementationGuide =
      CarePlanActivityKind._(
    'ImplementationGuide',
  );

  /// Ingredient
  static final CarePlanActivityKind Ingredient = CarePlanActivityKind._(
    'Ingredient',
  );

  /// InsurancePlan
  static final CarePlanActivityKind InsurancePlan = CarePlanActivityKind._(
    'InsurancePlan',
  );

  /// Invoice
  static final CarePlanActivityKind Invoice = CarePlanActivityKind._(
    'Invoice',
  );

  /// Library
  static final CarePlanActivityKind Library = CarePlanActivityKind._(
    'Library',
  );

  /// Linkage
  static final CarePlanActivityKind Linkage = CarePlanActivityKind._(
    'Linkage',
  );

  /// List_
  static final CarePlanActivityKind List_ = CarePlanActivityKind._(
    'List',
  );

  /// Location
  static final CarePlanActivityKind Location = CarePlanActivityKind._(
    'Location',
  );

  /// ManufacturedItemDefinition
  static final CarePlanActivityKind ManufacturedItemDefinition =
      CarePlanActivityKind._(
    'ManufacturedItemDefinition',
  );

  /// Measure
  static final CarePlanActivityKind Measure = CarePlanActivityKind._(
    'Measure',
  );

  /// MeasureReport
  static final CarePlanActivityKind MeasureReport = CarePlanActivityKind._(
    'MeasureReport',
  );

  /// Media
  static final CarePlanActivityKind Media = CarePlanActivityKind._(
    'Media',
  );

  /// Medication
  static final CarePlanActivityKind Medication = CarePlanActivityKind._(
    'Medication',
  );

  /// MedicationAdministration
  static final CarePlanActivityKind MedicationAdministration =
      CarePlanActivityKind._(
    'MedicationAdministration',
  );

  /// MedicationDispense
  static final CarePlanActivityKind MedicationDispense = CarePlanActivityKind._(
    'MedicationDispense',
  );

  /// MedicationKnowledge
  static final CarePlanActivityKind MedicationKnowledge =
      CarePlanActivityKind._(
    'MedicationKnowledge',
  );

  /// MedicationRequest
  static final CarePlanActivityKind MedicationRequest = CarePlanActivityKind._(
    'MedicationRequest',
  );

  /// MedicationStatement
  static final CarePlanActivityKind MedicationStatement =
      CarePlanActivityKind._(
    'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final CarePlanActivityKind MedicinalProductDefinition =
      CarePlanActivityKind._(
    'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final CarePlanActivityKind MessageDefinition = CarePlanActivityKind._(
    'MessageDefinition',
  );

  /// MessageHeader
  static final CarePlanActivityKind MessageHeader = CarePlanActivityKind._(
    'MessageHeader',
  );

  /// MolecularSequence
  static final CarePlanActivityKind MolecularSequence = CarePlanActivityKind._(
    'MolecularSequence',
  );

  /// NamingSystem
  static final CarePlanActivityKind NamingSystem = CarePlanActivityKind._(
    'NamingSystem',
  );

  /// NutritionOrder
  static final CarePlanActivityKind NutritionOrder = CarePlanActivityKind._(
    'NutritionOrder',
  );

  /// NutritionProduct
  static final CarePlanActivityKind NutritionProduct = CarePlanActivityKind._(
    'NutritionProduct',
  );

  /// Observation
  static final CarePlanActivityKind Observation = CarePlanActivityKind._(
    'Observation',
  );

  /// ObservationDefinition
  static final CarePlanActivityKind ObservationDefinition =
      CarePlanActivityKind._(
    'ObservationDefinition',
  );

  /// OperationDefinition
  static final CarePlanActivityKind OperationDefinition =
      CarePlanActivityKind._(
    'OperationDefinition',
  );

  /// OperationOutcome
  static final CarePlanActivityKind OperationOutcome = CarePlanActivityKind._(
    'OperationOutcome',
  );

  /// Organization
  static final CarePlanActivityKind Organization = CarePlanActivityKind._(
    'Organization',
  );

  /// OrganizationAffiliation
  static final CarePlanActivityKind OrganizationAffiliation =
      CarePlanActivityKind._(
    'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final CarePlanActivityKind PackagedProductDefinition =
      CarePlanActivityKind._(
    'PackagedProductDefinition',
  );

  /// Patient
  static final CarePlanActivityKind Patient = CarePlanActivityKind._(
    'Patient',
  );

  /// PaymentNotice
  static final CarePlanActivityKind PaymentNotice = CarePlanActivityKind._(
    'PaymentNotice',
  );

  /// PaymentReconciliation
  static final CarePlanActivityKind PaymentReconciliation =
      CarePlanActivityKind._(
    'PaymentReconciliation',
  );

  /// Person
  static final CarePlanActivityKind Person = CarePlanActivityKind._(
    'Person',
  );

  /// PlanDefinition
  static final CarePlanActivityKind PlanDefinition = CarePlanActivityKind._(
    'PlanDefinition',
  );

  /// Practitioner
  static final CarePlanActivityKind Practitioner = CarePlanActivityKind._(
    'Practitioner',
  );

  /// PractitionerRole
  static final CarePlanActivityKind PractitionerRole = CarePlanActivityKind._(
    'PractitionerRole',
  );

  /// Procedure
  static final CarePlanActivityKind Procedure = CarePlanActivityKind._(
    'Procedure',
  );

  /// Provenance
  static final CarePlanActivityKind Provenance = CarePlanActivityKind._(
    'Provenance',
  );

  /// Questionnaire
  static final CarePlanActivityKind Questionnaire = CarePlanActivityKind._(
    'Questionnaire',
  );

  /// QuestionnaireResponse
  static final CarePlanActivityKind QuestionnaireResponse =
      CarePlanActivityKind._(
    'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final CarePlanActivityKind RegulatedAuthorization =
      CarePlanActivityKind._(
    'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final CarePlanActivityKind RelatedPerson = CarePlanActivityKind._(
    'RelatedPerson',
  );

  /// RequestGroup
  static final CarePlanActivityKind RequestGroup = CarePlanActivityKind._(
    'RequestGroup',
  );

  /// ResearchDefinition
  static final CarePlanActivityKind ResearchDefinition = CarePlanActivityKind._(
    'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final CarePlanActivityKind ResearchElementDefinition =
      CarePlanActivityKind._(
    'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final CarePlanActivityKind ResearchStudy = CarePlanActivityKind._(
    'ResearchStudy',
  );

  /// ResearchSubject
  static final CarePlanActivityKind ResearchSubject = CarePlanActivityKind._(
    'ResearchSubject',
  );

  /// RiskAssessment
  static final CarePlanActivityKind RiskAssessment = CarePlanActivityKind._(
    'RiskAssessment',
  );

  /// Schedule
  static final CarePlanActivityKind Schedule = CarePlanActivityKind._(
    'Schedule',
  );

  /// SearchParameter
  static final CarePlanActivityKind SearchParameter = CarePlanActivityKind._(
    'SearchParameter',
  );

  /// ServiceRequest
  static final CarePlanActivityKind ServiceRequest = CarePlanActivityKind._(
    'ServiceRequest',
  );

  /// Slot
  static final CarePlanActivityKind Slot = CarePlanActivityKind._(
    'Slot',
  );

  /// Specimen
  static final CarePlanActivityKind Specimen = CarePlanActivityKind._(
    'Specimen',
  );

  /// SpecimenDefinition
  static final CarePlanActivityKind SpecimenDefinition = CarePlanActivityKind._(
    'SpecimenDefinition',
  );

  /// StructureDefinition
  static final CarePlanActivityKind StructureDefinition =
      CarePlanActivityKind._(
    'StructureDefinition',
  );

  /// StructureMap
  static final CarePlanActivityKind StructureMap = CarePlanActivityKind._(
    'StructureMap',
  );

  /// Subscription
  static final CarePlanActivityKind Subscription = CarePlanActivityKind._(
    'Subscription',
  );

  /// SubscriptionStatus
  static final CarePlanActivityKind SubscriptionStatus = CarePlanActivityKind._(
    'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final CarePlanActivityKind SubscriptionTopic = CarePlanActivityKind._(
    'SubscriptionTopic',
  );

  /// Substance
  static final CarePlanActivityKind Substance = CarePlanActivityKind._(
    'Substance',
  );

  /// SubstanceDefinition
  static final CarePlanActivityKind SubstanceDefinition =
      CarePlanActivityKind._(
    'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final CarePlanActivityKind SupplyDelivery = CarePlanActivityKind._(
    'SupplyDelivery',
  );

  /// SupplyRequest
  static final CarePlanActivityKind SupplyRequest = CarePlanActivityKind._(
    'SupplyRequest',
  );

  /// Task
  static final CarePlanActivityKind Task = CarePlanActivityKind._(
    'Task',
  );

  /// TerminologyCapabilities
  static final CarePlanActivityKind TerminologyCapabilities =
      CarePlanActivityKind._(
    'TerminologyCapabilities',
  );

  /// TestReport
  static final CarePlanActivityKind TestReport = CarePlanActivityKind._(
    'TestReport',
  );

  /// TestScript
  static final CarePlanActivityKind TestScript = CarePlanActivityKind._(
    'TestScript',
  );

  /// ValueSet
  static final CarePlanActivityKind ValueSet = CarePlanActivityKind._(
    'ValueSet',
  );

  /// VerificationResult
  static final CarePlanActivityKind VerificationResult = CarePlanActivityKind._(
    'VerificationResult',
  );

  /// VisionPrescription
  static final CarePlanActivityKind VisionPrescription = CarePlanActivityKind._(
    'VisionPrescription',
  );

  /// Parameters
  static final CarePlanActivityKind Parameters = CarePlanActivityKind._(
    'Parameters',
  );

  /// For instances where an Element is present but not value

  static final CarePlanActivityKind elementOnly = CarePlanActivityKind._('');

  /// List of all enum-like values
  static final List<CarePlanActivityKind> values = [
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
  CarePlanActivityKind withElement(Element? newElement) {
    return CarePlanActivityKind._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
