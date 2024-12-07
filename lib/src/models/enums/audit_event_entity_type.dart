// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code for the entity type involved in the audit event.
class AuditEventEntityType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AuditEventEntityType._(super.value, [super.element]);

  /// Factory constructor to create [AuditEventEntityType] from JSON.
  factory AuditEventEntityType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventEntityType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventEntityType cannot be constructed from JSON.',
      );
    }
    return AuditEventEntityType._(value, element);
  }

  /// value1
  static final AuditEventEntityType value1 = AuditEventEntityType._(
    '1',
  );

  /// value2
  static final AuditEventEntityType value2 = AuditEventEntityType._(
    '2',
  );

  /// value3
  static final AuditEventEntityType value3 = AuditEventEntityType._(
    '3',
  );

  /// value4
  static final AuditEventEntityType value4 = AuditEventEntityType._(
    '4',
  );

  /// Resource
  static final AuditEventEntityType Resource = AuditEventEntityType._(
    'Resource',
  );

  /// Binary
  static final AuditEventEntityType Binary = AuditEventEntityType._(
    'Binary',
  );

  /// Bundle
  static final AuditEventEntityType Bundle = AuditEventEntityType._(
    'Bundle',
  );

  /// DomainResource
  static final AuditEventEntityType DomainResource = AuditEventEntityType._(
    'DomainResource',
  );

  /// Account
  static final AuditEventEntityType Account = AuditEventEntityType._(
    'Account',
  );

  /// ActivityDefinition
  static final AuditEventEntityType ActivityDefinition = AuditEventEntityType._(
    'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final AuditEventEntityType AdministrableProductDefinition =
      AuditEventEntityType._(
    'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final AuditEventEntityType AdverseEvent = AuditEventEntityType._(
    'AdverseEvent',
  );

  /// AllergyIntolerance
  static final AuditEventEntityType AllergyIntolerance = AuditEventEntityType._(
    'AllergyIntolerance',
  );

  /// Appointment
  static final AuditEventEntityType Appointment = AuditEventEntityType._(
    'Appointment',
  );

  /// AppointmentResponse
  static final AuditEventEntityType AppointmentResponse =
      AuditEventEntityType._(
    'AppointmentResponse',
  );

  /// AuditEvent
  static final AuditEventEntityType AuditEvent = AuditEventEntityType._(
    'AuditEvent',
  );

  /// Basic
  static final AuditEventEntityType Basic = AuditEventEntityType._(
    'Basic',
  );

  /// BiologicallyDerivedProduct
  static final AuditEventEntityType BiologicallyDerivedProduct =
      AuditEventEntityType._(
    'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final AuditEventEntityType BodyStructure = AuditEventEntityType._(
    'BodyStructure',
  );

  /// CapabilityStatement
  static final AuditEventEntityType CapabilityStatement =
      AuditEventEntityType._(
    'CapabilityStatement',
  );

  /// CarePlan
  static final AuditEventEntityType CarePlan = AuditEventEntityType._(
    'CarePlan',
  );

  /// CareTeam
  static final AuditEventEntityType CareTeam = AuditEventEntityType._(
    'CareTeam',
  );

  /// CatalogEntry
  static final AuditEventEntityType CatalogEntry = AuditEventEntityType._(
    'CatalogEntry',
  );

  /// ChargeItem
  static final AuditEventEntityType ChargeItem = AuditEventEntityType._(
    'ChargeItem',
  );

  /// ChargeItemDefinition
  static final AuditEventEntityType ChargeItemDefinition =
      AuditEventEntityType._(
    'ChargeItemDefinition',
  );

  /// Citation
  static final AuditEventEntityType Citation = AuditEventEntityType._(
    'Citation',
  );

  /// Claim
  static final AuditEventEntityType Claim = AuditEventEntityType._(
    'Claim',
  );

  /// ClaimResponse
  static final AuditEventEntityType ClaimResponse = AuditEventEntityType._(
    'ClaimResponse',
  );

  /// ClinicalImpression
  static final AuditEventEntityType ClinicalImpression = AuditEventEntityType._(
    'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final AuditEventEntityType ClinicalUseDefinition =
      AuditEventEntityType._(
    'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final AuditEventEntityType CodeSystem = AuditEventEntityType._(
    'CodeSystem',
  );

  /// Communication
  static final AuditEventEntityType Communication = AuditEventEntityType._(
    'Communication',
  );

  /// CommunicationRequest
  static final AuditEventEntityType CommunicationRequest =
      AuditEventEntityType._(
    'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final AuditEventEntityType CompartmentDefinition =
      AuditEventEntityType._(
    'CompartmentDefinition',
  );

  /// Composition
  static final AuditEventEntityType Composition = AuditEventEntityType._(
    'Composition',
  );

  /// ConceptMap
  static final AuditEventEntityType ConceptMap = AuditEventEntityType._(
    'ConceptMap',
  );

  /// Condition
  static final AuditEventEntityType Condition = AuditEventEntityType._(
    'Condition',
  );

  /// Consent
  static final AuditEventEntityType Consent = AuditEventEntityType._(
    'Consent',
  );

  /// Contract
  static final AuditEventEntityType Contract = AuditEventEntityType._(
    'Contract',
  );

  /// Coverage
  static final AuditEventEntityType Coverage = AuditEventEntityType._(
    'Coverage',
  );

  /// CoverageEligibilityRequest
  static final AuditEventEntityType CoverageEligibilityRequest =
      AuditEventEntityType._(
    'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final AuditEventEntityType CoverageEligibilityResponse =
      AuditEventEntityType._(
    'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final AuditEventEntityType DetectedIssue = AuditEventEntityType._(
    'DetectedIssue',
  );

  /// Device
  static final AuditEventEntityType Device = AuditEventEntityType._(
    'Device',
  );

  /// DeviceDefinition
  static final AuditEventEntityType DeviceDefinition = AuditEventEntityType._(
    'DeviceDefinition',
  );

  /// DeviceMetric
  static final AuditEventEntityType DeviceMetric = AuditEventEntityType._(
    'DeviceMetric',
  );

  /// DeviceRequest
  static final AuditEventEntityType DeviceRequest = AuditEventEntityType._(
    'DeviceRequest',
  );

  /// DeviceUseStatement
  static final AuditEventEntityType DeviceUseStatement = AuditEventEntityType._(
    'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final AuditEventEntityType DiagnosticReport = AuditEventEntityType._(
    'DiagnosticReport',
  );

  /// DocumentManifest
  static final AuditEventEntityType DocumentManifest = AuditEventEntityType._(
    'DocumentManifest',
  );

  /// DocumentReference
  static final AuditEventEntityType DocumentReference = AuditEventEntityType._(
    'DocumentReference',
  );

  /// Encounter
  static final AuditEventEntityType Encounter = AuditEventEntityType._(
    'Encounter',
  );

  /// Endpoint
  static final AuditEventEntityType Endpoint = AuditEventEntityType._(
    'Endpoint',
  );

  /// EnrollmentRequest
  static final AuditEventEntityType EnrollmentRequest = AuditEventEntityType._(
    'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final AuditEventEntityType EnrollmentResponse = AuditEventEntityType._(
    'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final AuditEventEntityType EpisodeOfCare = AuditEventEntityType._(
    'EpisodeOfCare',
  );

  /// EventDefinition
  static final AuditEventEntityType EventDefinition = AuditEventEntityType._(
    'EventDefinition',
  );

  /// Evidence
  static final AuditEventEntityType Evidence = AuditEventEntityType._(
    'Evidence',
  );

  /// EvidenceReport
  static final AuditEventEntityType EvidenceReport = AuditEventEntityType._(
    'EvidenceReport',
  );

  /// EvidenceVariable
  static final AuditEventEntityType EvidenceVariable = AuditEventEntityType._(
    'EvidenceVariable',
  );

  /// ExampleScenario
  static final AuditEventEntityType ExampleScenario = AuditEventEntityType._(
    'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final AuditEventEntityType ExplanationOfBenefit =
      AuditEventEntityType._(
    'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final AuditEventEntityType FamilyMemberHistory =
      AuditEventEntityType._(
    'FamilyMemberHistory',
  );

  /// Flag
  static final AuditEventEntityType Flag = AuditEventEntityType._(
    'Flag',
  );

  /// Goal
  static final AuditEventEntityType Goal = AuditEventEntityType._(
    'Goal',
  );

  /// GraphDefinition
  static final AuditEventEntityType GraphDefinition = AuditEventEntityType._(
    'GraphDefinition',
  );

  /// Group
  static final AuditEventEntityType Group = AuditEventEntityType._(
    'Group',
  );

  /// GuidanceResponse
  static final AuditEventEntityType GuidanceResponse = AuditEventEntityType._(
    'GuidanceResponse',
  );

  /// HealthcareService
  static final AuditEventEntityType HealthcareService = AuditEventEntityType._(
    'HealthcareService',
  );

  /// ImagingStudy
  static final AuditEventEntityType ImagingStudy = AuditEventEntityType._(
    'ImagingStudy',
  );

  /// Immunization
  static final AuditEventEntityType Immunization = AuditEventEntityType._(
    'Immunization',
  );

  /// ImmunizationEvaluation
  static final AuditEventEntityType ImmunizationEvaluation =
      AuditEventEntityType._(
    'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final AuditEventEntityType ImmunizationRecommendation =
      AuditEventEntityType._(
    'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final AuditEventEntityType ImplementationGuide =
      AuditEventEntityType._(
    'ImplementationGuide',
  );

  /// Ingredient
  static final AuditEventEntityType Ingredient = AuditEventEntityType._(
    'Ingredient',
  );

  /// InsurancePlan
  static final AuditEventEntityType InsurancePlan = AuditEventEntityType._(
    'InsurancePlan',
  );

  /// Invoice
  static final AuditEventEntityType Invoice = AuditEventEntityType._(
    'Invoice',
  );

  /// Library
  static final AuditEventEntityType Library = AuditEventEntityType._(
    'Library',
  );

  /// Linkage
  static final AuditEventEntityType Linkage = AuditEventEntityType._(
    'Linkage',
  );

  /// List_
  static final AuditEventEntityType List_ = AuditEventEntityType._(
    'List',
  );

  /// Location
  static final AuditEventEntityType Location = AuditEventEntityType._(
    'Location',
  );

  /// ManufacturedItemDefinition
  static final AuditEventEntityType ManufacturedItemDefinition =
      AuditEventEntityType._(
    'ManufacturedItemDefinition',
  );

  /// Measure
  static final AuditEventEntityType Measure = AuditEventEntityType._(
    'Measure',
  );

  /// MeasureReport
  static final AuditEventEntityType MeasureReport = AuditEventEntityType._(
    'MeasureReport',
  );

  /// Media
  static final AuditEventEntityType Media = AuditEventEntityType._(
    'Media',
  );

  /// Medication
  static final AuditEventEntityType Medication = AuditEventEntityType._(
    'Medication',
  );

  /// MedicationAdministration
  static final AuditEventEntityType MedicationAdministration =
      AuditEventEntityType._(
    'MedicationAdministration',
  );

  /// MedicationDispense
  static final AuditEventEntityType MedicationDispense = AuditEventEntityType._(
    'MedicationDispense',
  );

  /// MedicationKnowledge
  static final AuditEventEntityType MedicationKnowledge =
      AuditEventEntityType._(
    'MedicationKnowledge',
  );

  /// MedicationRequest
  static final AuditEventEntityType MedicationRequest = AuditEventEntityType._(
    'MedicationRequest',
  );

  /// MedicationStatement
  static final AuditEventEntityType MedicationStatement =
      AuditEventEntityType._(
    'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final AuditEventEntityType MedicinalProductDefinition =
      AuditEventEntityType._(
    'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final AuditEventEntityType MessageDefinition = AuditEventEntityType._(
    'MessageDefinition',
  );

  /// MessageHeader
  static final AuditEventEntityType MessageHeader = AuditEventEntityType._(
    'MessageHeader',
  );

  /// MolecularSequence
  static final AuditEventEntityType MolecularSequence = AuditEventEntityType._(
    'MolecularSequence',
  );

  /// NamingSystem
  static final AuditEventEntityType NamingSystem = AuditEventEntityType._(
    'NamingSystem',
  );

  /// NutritionOrder
  static final AuditEventEntityType NutritionOrder = AuditEventEntityType._(
    'NutritionOrder',
  );

  /// NutritionProduct
  static final AuditEventEntityType NutritionProduct = AuditEventEntityType._(
    'NutritionProduct',
  );

  /// Observation
  static final AuditEventEntityType Observation = AuditEventEntityType._(
    'Observation',
  );

  /// ObservationDefinition
  static final AuditEventEntityType ObservationDefinition =
      AuditEventEntityType._(
    'ObservationDefinition',
  );

  /// OperationDefinition
  static final AuditEventEntityType OperationDefinition =
      AuditEventEntityType._(
    'OperationDefinition',
  );

  /// OperationOutcome
  static final AuditEventEntityType OperationOutcome = AuditEventEntityType._(
    'OperationOutcome',
  );

  /// Organization
  static final AuditEventEntityType Organization = AuditEventEntityType._(
    'Organization',
  );

  /// OrganizationAffiliation
  static final AuditEventEntityType OrganizationAffiliation =
      AuditEventEntityType._(
    'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final AuditEventEntityType PackagedProductDefinition =
      AuditEventEntityType._(
    'PackagedProductDefinition',
  );

  /// Patient
  static final AuditEventEntityType Patient = AuditEventEntityType._(
    'Patient',
  );

  /// PaymentNotice
  static final AuditEventEntityType PaymentNotice = AuditEventEntityType._(
    'PaymentNotice',
  );

  /// PaymentReconciliation
  static final AuditEventEntityType PaymentReconciliation =
      AuditEventEntityType._(
    'PaymentReconciliation',
  );

  /// Person
  static final AuditEventEntityType Person = AuditEventEntityType._(
    'Person',
  );

  /// PlanDefinition
  static final AuditEventEntityType PlanDefinition = AuditEventEntityType._(
    'PlanDefinition',
  );

  /// Practitioner
  static final AuditEventEntityType Practitioner = AuditEventEntityType._(
    'Practitioner',
  );

  /// PractitionerRole
  static final AuditEventEntityType PractitionerRole = AuditEventEntityType._(
    'PractitionerRole',
  );

  /// Procedure
  static final AuditEventEntityType Procedure = AuditEventEntityType._(
    'Procedure',
  );

  /// Provenance
  static final AuditEventEntityType Provenance = AuditEventEntityType._(
    'Provenance',
  );

  /// Questionnaire
  static final AuditEventEntityType Questionnaire = AuditEventEntityType._(
    'Questionnaire',
  );

  /// QuestionnaireResponse
  static final AuditEventEntityType QuestionnaireResponse =
      AuditEventEntityType._(
    'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final AuditEventEntityType RegulatedAuthorization =
      AuditEventEntityType._(
    'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final AuditEventEntityType RelatedPerson = AuditEventEntityType._(
    'RelatedPerson',
  );

  /// RequestGroup
  static final AuditEventEntityType RequestGroup = AuditEventEntityType._(
    'RequestGroup',
  );

  /// ResearchDefinition
  static final AuditEventEntityType ResearchDefinition = AuditEventEntityType._(
    'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final AuditEventEntityType ResearchElementDefinition =
      AuditEventEntityType._(
    'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final AuditEventEntityType ResearchStudy = AuditEventEntityType._(
    'ResearchStudy',
  );

  /// ResearchSubject
  static final AuditEventEntityType ResearchSubject = AuditEventEntityType._(
    'ResearchSubject',
  );

  /// RiskAssessment
  static final AuditEventEntityType RiskAssessment = AuditEventEntityType._(
    'RiskAssessment',
  );

  /// Schedule
  static final AuditEventEntityType Schedule = AuditEventEntityType._(
    'Schedule',
  );

  /// SearchParameter
  static final AuditEventEntityType SearchParameter = AuditEventEntityType._(
    'SearchParameter',
  );

  /// ServiceRequest
  static final AuditEventEntityType ServiceRequest = AuditEventEntityType._(
    'ServiceRequest',
  );

  /// Slot
  static final AuditEventEntityType Slot = AuditEventEntityType._(
    'Slot',
  );

  /// Specimen
  static final AuditEventEntityType Specimen = AuditEventEntityType._(
    'Specimen',
  );

  /// SpecimenDefinition
  static final AuditEventEntityType SpecimenDefinition = AuditEventEntityType._(
    'SpecimenDefinition',
  );

  /// StructureDefinition
  static final AuditEventEntityType StructureDefinition =
      AuditEventEntityType._(
    'StructureDefinition',
  );

  /// StructureMap
  static final AuditEventEntityType StructureMap = AuditEventEntityType._(
    'StructureMap',
  );

  /// Subscription
  static final AuditEventEntityType Subscription = AuditEventEntityType._(
    'Subscription',
  );

  /// SubscriptionStatus
  static final AuditEventEntityType SubscriptionStatus = AuditEventEntityType._(
    'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final AuditEventEntityType SubscriptionTopic = AuditEventEntityType._(
    'SubscriptionTopic',
  );

  /// Substance
  static final AuditEventEntityType Substance = AuditEventEntityType._(
    'Substance',
  );

  /// SubstanceDefinition
  static final AuditEventEntityType SubstanceDefinition =
      AuditEventEntityType._(
    'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final AuditEventEntityType SupplyDelivery = AuditEventEntityType._(
    'SupplyDelivery',
  );

  /// SupplyRequest
  static final AuditEventEntityType SupplyRequest = AuditEventEntityType._(
    'SupplyRequest',
  );

  /// Task
  static final AuditEventEntityType Task = AuditEventEntityType._(
    'Task',
  );

  /// TerminologyCapabilities
  static final AuditEventEntityType TerminologyCapabilities =
      AuditEventEntityType._(
    'TerminologyCapabilities',
  );

  /// TestReport
  static final AuditEventEntityType TestReport = AuditEventEntityType._(
    'TestReport',
  );

  /// TestScript
  static final AuditEventEntityType TestScript = AuditEventEntityType._(
    'TestScript',
  );

  /// ValueSet
  static final AuditEventEntityType ValueSet = AuditEventEntityType._(
    'ValueSet',
  );

  /// VerificationResult
  static final AuditEventEntityType VerificationResult = AuditEventEntityType._(
    'VerificationResult',
  );

  /// VisionPrescription
  static final AuditEventEntityType VisionPrescription = AuditEventEntityType._(
    'VisionPrescription',
  );

  /// Parameters
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

  /// Clones the current instance
  @override
  AuditEventEntityType clone() => AuditEventEntityType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventEntityType withElement(Element? newElement) {
    return AuditEventEntityType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AuditEventEntityType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AuditEventEntityType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
