// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code for the entity type involved in the audit event.
class AuditEventEntityType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AuditEventEntityType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

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
    return AuditEventEntityType._(value: value, element: element);
  }

  /// value1
  static final AuditEventEntityType value1 = AuditEventEntityType._(
    value: '1',
  );

  /// value2
  static final AuditEventEntityType value2 = AuditEventEntityType._(
    value: '2',
  );

  /// value3
  static final AuditEventEntityType value3 = AuditEventEntityType._(
    value: '3',
  );

  /// value4
  static final AuditEventEntityType value4 = AuditEventEntityType._(
    value: '4',
  );

  /// Resource
  static final AuditEventEntityType Resource = AuditEventEntityType._(
    value: 'Resource',
  );

  /// Binary
  static final AuditEventEntityType Binary = AuditEventEntityType._(
    value: 'Binary',
  );

  /// Bundle
  static final AuditEventEntityType Bundle = AuditEventEntityType._(
    value: 'Bundle',
  );

  /// DomainResource
  static final AuditEventEntityType DomainResource = AuditEventEntityType._(
    value: 'DomainResource',
  );

  /// Account
  static final AuditEventEntityType Account = AuditEventEntityType._(
    value: 'Account',
  );

  /// ActivityDefinition
  static final AuditEventEntityType ActivityDefinition = AuditEventEntityType._(
    value: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final AuditEventEntityType AdministrableProductDefinition =
      AuditEventEntityType._(
    value: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final AuditEventEntityType AdverseEvent = AuditEventEntityType._(
    value: 'AdverseEvent',
  );

  /// AllergyIntolerance
  static final AuditEventEntityType AllergyIntolerance = AuditEventEntityType._(
    value: 'AllergyIntolerance',
  );

  /// Appointment
  static final AuditEventEntityType Appointment = AuditEventEntityType._(
    value: 'Appointment',
  );

  /// AppointmentResponse
  static final AuditEventEntityType AppointmentResponse =
      AuditEventEntityType._(
    value: 'AppointmentResponse',
  );

  /// AuditEvent
  static final AuditEventEntityType AuditEvent = AuditEventEntityType._(
    value: 'AuditEvent',
  );

  /// Basic
  static final AuditEventEntityType Basic = AuditEventEntityType._(
    value: 'Basic',
  );

  /// BiologicallyDerivedProduct
  static final AuditEventEntityType BiologicallyDerivedProduct =
      AuditEventEntityType._(
    value: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final AuditEventEntityType BodyStructure = AuditEventEntityType._(
    value: 'BodyStructure',
  );

  /// CapabilityStatement
  static final AuditEventEntityType CapabilityStatement =
      AuditEventEntityType._(
    value: 'CapabilityStatement',
  );

  /// CarePlan
  static final AuditEventEntityType CarePlan = AuditEventEntityType._(
    value: 'CarePlan',
  );

  /// CareTeam
  static final AuditEventEntityType CareTeam = AuditEventEntityType._(
    value: 'CareTeam',
  );

  /// CatalogEntry
  static final AuditEventEntityType CatalogEntry = AuditEventEntityType._(
    value: 'CatalogEntry',
  );

  /// ChargeItem
  static final AuditEventEntityType ChargeItem = AuditEventEntityType._(
    value: 'ChargeItem',
  );

  /// ChargeItemDefinition
  static final AuditEventEntityType ChargeItemDefinition =
      AuditEventEntityType._(
    value: 'ChargeItemDefinition',
  );

  /// Citation
  static final AuditEventEntityType Citation = AuditEventEntityType._(
    value: 'Citation',
  );

  /// Claim
  static final AuditEventEntityType Claim = AuditEventEntityType._(
    value: 'Claim',
  );

  /// ClaimResponse
  static final AuditEventEntityType ClaimResponse = AuditEventEntityType._(
    value: 'ClaimResponse',
  );

  /// ClinicalImpression
  static final AuditEventEntityType ClinicalImpression = AuditEventEntityType._(
    value: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final AuditEventEntityType ClinicalUseDefinition =
      AuditEventEntityType._(
    value: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final AuditEventEntityType CodeSystem = AuditEventEntityType._(
    value: 'CodeSystem',
  );

  /// Communication
  static final AuditEventEntityType Communication = AuditEventEntityType._(
    value: 'Communication',
  );

  /// CommunicationRequest
  static final AuditEventEntityType CommunicationRequest =
      AuditEventEntityType._(
    value: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final AuditEventEntityType CompartmentDefinition =
      AuditEventEntityType._(
    value: 'CompartmentDefinition',
  );

  /// Composition
  static final AuditEventEntityType Composition = AuditEventEntityType._(
    value: 'Composition',
  );

  /// ConceptMap
  static final AuditEventEntityType ConceptMap = AuditEventEntityType._(
    value: 'ConceptMap',
  );

  /// Condition
  static final AuditEventEntityType Condition = AuditEventEntityType._(
    value: 'Condition',
  );

  /// Consent
  static final AuditEventEntityType Consent = AuditEventEntityType._(
    value: 'Consent',
  );

  /// Contract
  static final AuditEventEntityType Contract = AuditEventEntityType._(
    value: 'Contract',
  );

  /// Coverage
  static final AuditEventEntityType Coverage = AuditEventEntityType._(
    value: 'Coverage',
  );

  /// CoverageEligibilityRequest
  static final AuditEventEntityType CoverageEligibilityRequest =
      AuditEventEntityType._(
    value: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final AuditEventEntityType CoverageEligibilityResponse =
      AuditEventEntityType._(
    value: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final AuditEventEntityType DetectedIssue = AuditEventEntityType._(
    value: 'DetectedIssue',
  );

  /// Device
  static final AuditEventEntityType Device = AuditEventEntityType._(
    value: 'Device',
  );

  /// DeviceDefinition
  static final AuditEventEntityType DeviceDefinition = AuditEventEntityType._(
    value: 'DeviceDefinition',
  );

  /// DeviceMetric
  static final AuditEventEntityType DeviceMetric = AuditEventEntityType._(
    value: 'DeviceMetric',
  );

  /// DeviceRequest
  static final AuditEventEntityType DeviceRequest = AuditEventEntityType._(
    value: 'DeviceRequest',
  );

  /// DeviceUseStatement
  static final AuditEventEntityType DeviceUseStatement = AuditEventEntityType._(
    value: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final AuditEventEntityType DiagnosticReport = AuditEventEntityType._(
    value: 'DiagnosticReport',
  );

  /// DocumentManifest
  static final AuditEventEntityType DocumentManifest = AuditEventEntityType._(
    value: 'DocumentManifest',
  );

  /// DocumentReference
  static final AuditEventEntityType DocumentReference = AuditEventEntityType._(
    value: 'DocumentReference',
  );

  /// Encounter
  static final AuditEventEntityType Encounter = AuditEventEntityType._(
    value: 'Encounter',
  );

  /// Endpoint
  static final AuditEventEntityType Endpoint = AuditEventEntityType._(
    value: 'Endpoint',
  );

  /// EnrollmentRequest
  static final AuditEventEntityType EnrollmentRequest = AuditEventEntityType._(
    value: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final AuditEventEntityType EnrollmentResponse = AuditEventEntityType._(
    value: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final AuditEventEntityType EpisodeOfCare = AuditEventEntityType._(
    value: 'EpisodeOfCare',
  );

  /// EventDefinition
  static final AuditEventEntityType EventDefinition = AuditEventEntityType._(
    value: 'EventDefinition',
  );

  /// Evidence
  static final AuditEventEntityType Evidence = AuditEventEntityType._(
    value: 'Evidence',
  );

  /// EvidenceReport
  static final AuditEventEntityType EvidenceReport = AuditEventEntityType._(
    value: 'EvidenceReport',
  );

  /// EvidenceVariable
  static final AuditEventEntityType EvidenceVariable = AuditEventEntityType._(
    value: 'EvidenceVariable',
  );

  /// ExampleScenario
  static final AuditEventEntityType ExampleScenario = AuditEventEntityType._(
    value: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final AuditEventEntityType ExplanationOfBenefit =
      AuditEventEntityType._(
    value: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final AuditEventEntityType FamilyMemberHistory =
      AuditEventEntityType._(
    value: 'FamilyMemberHistory',
  );

  /// Flag
  static final AuditEventEntityType Flag = AuditEventEntityType._(
    value: 'Flag',
  );

  /// Goal
  static final AuditEventEntityType Goal = AuditEventEntityType._(
    value: 'Goal',
  );

  /// GraphDefinition
  static final AuditEventEntityType GraphDefinition = AuditEventEntityType._(
    value: 'GraphDefinition',
  );

  /// Group
  static final AuditEventEntityType Group = AuditEventEntityType._(
    value: 'Group',
  );

  /// GuidanceResponse
  static final AuditEventEntityType GuidanceResponse = AuditEventEntityType._(
    value: 'GuidanceResponse',
  );

  /// HealthcareService
  static final AuditEventEntityType HealthcareService = AuditEventEntityType._(
    value: 'HealthcareService',
  );

  /// ImagingStudy
  static final AuditEventEntityType ImagingStudy = AuditEventEntityType._(
    value: 'ImagingStudy',
  );

  /// Immunization
  static final AuditEventEntityType Immunization = AuditEventEntityType._(
    value: 'Immunization',
  );

  /// ImmunizationEvaluation
  static final AuditEventEntityType ImmunizationEvaluation =
      AuditEventEntityType._(
    value: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final AuditEventEntityType ImmunizationRecommendation =
      AuditEventEntityType._(
    value: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final AuditEventEntityType ImplementationGuide =
      AuditEventEntityType._(
    value: 'ImplementationGuide',
  );

  /// Ingredient
  static final AuditEventEntityType Ingredient = AuditEventEntityType._(
    value: 'Ingredient',
  );

  /// InsurancePlan
  static final AuditEventEntityType InsurancePlan = AuditEventEntityType._(
    value: 'InsurancePlan',
  );

  /// Invoice
  static final AuditEventEntityType Invoice = AuditEventEntityType._(
    value: 'Invoice',
  );

  /// Library
  static final AuditEventEntityType Library = AuditEventEntityType._(
    value: 'Library',
  );

  /// Linkage
  static final AuditEventEntityType Linkage = AuditEventEntityType._(
    value: 'Linkage',
  );

  /// List_
  static final AuditEventEntityType List_ = AuditEventEntityType._(
    value: 'List',
  );

  /// Location
  static final AuditEventEntityType Location = AuditEventEntityType._(
    value: 'Location',
  );

  /// ManufacturedItemDefinition
  static final AuditEventEntityType ManufacturedItemDefinition =
      AuditEventEntityType._(
    value: 'ManufacturedItemDefinition',
  );

  /// Measure
  static final AuditEventEntityType Measure = AuditEventEntityType._(
    value: 'Measure',
  );

  /// MeasureReport
  static final AuditEventEntityType MeasureReport = AuditEventEntityType._(
    value: 'MeasureReport',
  );

  /// Media
  static final AuditEventEntityType Media = AuditEventEntityType._(
    value: 'Media',
  );

  /// Medication
  static final AuditEventEntityType Medication = AuditEventEntityType._(
    value: 'Medication',
  );

  /// MedicationAdministration
  static final AuditEventEntityType MedicationAdministration =
      AuditEventEntityType._(
    value: 'MedicationAdministration',
  );

  /// MedicationDispense
  static final AuditEventEntityType MedicationDispense = AuditEventEntityType._(
    value: 'MedicationDispense',
  );

  /// MedicationKnowledge
  static final AuditEventEntityType MedicationKnowledge =
      AuditEventEntityType._(
    value: 'MedicationKnowledge',
  );

  /// MedicationRequest
  static final AuditEventEntityType MedicationRequest = AuditEventEntityType._(
    value: 'MedicationRequest',
  );

  /// MedicationStatement
  static final AuditEventEntityType MedicationStatement =
      AuditEventEntityType._(
    value: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final AuditEventEntityType MedicinalProductDefinition =
      AuditEventEntityType._(
    value: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final AuditEventEntityType MessageDefinition = AuditEventEntityType._(
    value: 'MessageDefinition',
  );

  /// MessageHeader
  static final AuditEventEntityType MessageHeader = AuditEventEntityType._(
    value: 'MessageHeader',
  );

  /// MolecularSequence
  static final AuditEventEntityType MolecularSequence = AuditEventEntityType._(
    value: 'MolecularSequence',
  );

  /// NamingSystem
  static final AuditEventEntityType NamingSystem = AuditEventEntityType._(
    value: 'NamingSystem',
  );

  /// NutritionOrder
  static final AuditEventEntityType NutritionOrder = AuditEventEntityType._(
    value: 'NutritionOrder',
  );

  /// NutritionProduct
  static final AuditEventEntityType NutritionProduct = AuditEventEntityType._(
    value: 'NutritionProduct',
  );

  /// Observation
  static final AuditEventEntityType Observation = AuditEventEntityType._(
    value: 'Observation',
  );

  /// ObservationDefinition
  static final AuditEventEntityType ObservationDefinition =
      AuditEventEntityType._(
    value: 'ObservationDefinition',
  );

  /// OperationDefinition
  static final AuditEventEntityType OperationDefinition =
      AuditEventEntityType._(
    value: 'OperationDefinition',
  );

  /// OperationOutcome
  static final AuditEventEntityType OperationOutcome = AuditEventEntityType._(
    value: 'OperationOutcome',
  );

  /// Organization
  static final AuditEventEntityType Organization = AuditEventEntityType._(
    value: 'Organization',
  );

  /// OrganizationAffiliation
  static final AuditEventEntityType OrganizationAffiliation =
      AuditEventEntityType._(
    value: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final AuditEventEntityType PackagedProductDefinition =
      AuditEventEntityType._(
    value: 'PackagedProductDefinition',
  );

  /// Patient
  static final AuditEventEntityType Patient = AuditEventEntityType._(
    value: 'Patient',
  );

  /// PaymentNotice
  static final AuditEventEntityType PaymentNotice = AuditEventEntityType._(
    value: 'PaymentNotice',
  );

  /// PaymentReconciliation
  static final AuditEventEntityType PaymentReconciliation =
      AuditEventEntityType._(
    value: 'PaymentReconciliation',
  );

  /// Person
  static final AuditEventEntityType Person = AuditEventEntityType._(
    value: 'Person',
  );

  /// PlanDefinition
  static final AuditEventEntityType PlanDefinition = AuditEventEntityType._(
    value: 'PlanDefinition',
  );

  /// Practitioner
  static final AuditEventEntityType Practitioner = AuditEventEntityType._(
    value: 'Practitioner',
  );

  /// PractitionerRole
  static final AuditEventEntityType PractitionerRole = AuditEventEntityType._(
    value: 'PractitionerRole',
  );

  /// Procedure
  static final AuditEventEntityType Procedure = AuditEventEntityType._(
    value: 'Procedure',
  );

  /// Provenance
  static final AuditEventEntityType Provenance = AuditEventEntityType._(
    value: 'Provenance',
  );

  /// Questionnaire
  static final AuditEventEntityType Questionnaire = AuditEventEntityType._(
    value: 'Questionnaire',
  );

  /// QuestionnaireResponse
  static final AuditEventEntityType QuestionnaireResponse =
      AuditEventEntityType._(
    value: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final AuditEventEntityType RegulatedAuthorization =
      AuditEventEntityType._(
    value: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final AuditEventEntityType RelatedPerson = AuditEventEntityType._(
    value: 'RelatedPerson',
  );

  /// RequestGroup
  static final AuditEventEntityType RequestGroup = AuditEventEntityType._(
    value: 'RequestGroup',
  );

  /// ResearchDefinition
  static final AuditEventEntityType ResearchDefinition = AuditEventEntityType._(
    value: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final AuditEventEntityType ResearchElementDefinition =
      AuditEventEntityType._(
    value: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final AuditEventEntityType ResearchStudy = AuditEventEntityType._(
    value: 'ResearchStudy',
  );

  /// ResearchSubject
  static final AuditEventEntityType ResearchSubject = AuditEventEntityType._(
    value: 'ResearchSubject',
  );

  /// RiskAssessment
  static final AuditEventEntityType RiskAssessment = AuditEventEntityType._(
    value: 'RiskAssessment',
  );

  /// Schedule
  static final AuditEventEntityType Schedule = AuditEventEntityType._(
    value: 'Schedule',
  );

  /// SearchParameter
  static final AuditEventEntityType SearchParameter = AuditEventEntityType._(
    value: 'SearchParameter',
  );

  /// ServiceRequest
  static final AuditEventEntityType ServiceRequest = AuditEventEntityType._(
    value: 'ServiceRequest',
  );

  /// Slot
  static final AuditEventEntityType Slot = AuditEventEntityType._(
    value: 'Slot',
  );

  /// Specimen
  static final AuditEventEntityType Specimen = AuditEventEntityType._(
    value: 'Specimen',
  );

  /// SpecimenDefinition
  static final AuditEventEntityType SpecimenDefinition = AuditEventEntityType._(
    value: 'SpecimenDefinition',
  );

  /// StructureDefinition
  static final AuditEventEntityType StructureDefinition =
      AuditEventEntityType._(
    value: 'StructureDefinition',
  );

  /// StructureMap
  static final AuditEventEntityType StructureMap = AuditEventEntityType._(
    value: 'StructureMap',
  );

  /// Subscription
  static final AuditEventEntityType Subscription = AuditEventEntityType._(
    value: 'Subscription',
  );

  /// SubscriptionStatus
  static final AuditEventEntityType SubscriptionStatus = AuditEventEntityType._(
    value: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final AuditEventEntityType SubscriptionTopic = AuditEventEntityType._(
    value: 'SubscriptionTopic',
  );

  /// Substance
  static final AuditEventEntityType Substance = AuditEventEntityType._(
    value: 'Substance',
  );

  /// SubstanceDefinition
  static final AuditEventEntityType SubstanceDefinition =
      AuditEventEntityType._(
    value: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final AuditEventEntityType SupplyDelivery = AuditEventEntityType._(
    value: 'SupplyDelivery',
  );

  /// SupplyRequest
  static final AuditEventEntityType SupplyRequest = AuditEventEntityType._(
    value: 'SupplyRequest',
  );

  /// Task
  static final AuditEventEntityType Task = AuditEventEntityType._(
    value: 'Task',
  );

  /// TerminologyCapabilities
  static final AuditEventEntityType TerminologyCapabilities =
      AuditEventEntityType._(
    value: 'TerminologyCapabilities',
  );

  /// TestReport
  static final AuditEventEntityType TestReport = AuditEventEntityType._(
    value: 'TestReport',
  );

  /// TestScript
  static final AuditEventEntityType TestScript = AuditEventEntityType._(
    value: 'TestScript',
  );

  /// ValueSet
  static final AuditEventEntityType ValueSet = AuditEventEntityType._(
    value: 'ValueSet',
  );

  /// VerificationResult
  static final AuditEventEntityType VerificationResult = AuditEventEntityType._(
    value: 'VerificationResult',
  );

  /// VisionPrescription
  static final AuditEventEntityType VisionPrescription = AuditEventEntityType._(
    value: 'VisionPrescription',
  );

  /// Parameters
  static final AuditEventEntityType Parameters = AuditEventEntityType._(
    value: 'Parameters',
  );

  /// For instances where an Element is present but not value

  static final AuditEventEntityType elementOnly =
      AuditEventEntityType._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventEntityType withElement(Element? newElement) {
    return AuditEventEntityType._(value: value, element: newElement);
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
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AuditEventEntityType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
