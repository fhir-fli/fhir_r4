// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Possible types of subjects.
class SubjectType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubjectType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SubjectType] from JSON.
  factory SubjectType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubjectType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubjectType cannot be constructed from JSON.',
      );
    }
    return SubjectType._(value: value, element: element);
  }

  /// Resource
  static final SubjectType Resource = SubjectType._(
    value: 'Resource',
  );

  /// Binary
  static final SubjectType Binary = SubjectType._(
    value: 'Binary',
  );

  /// Bundle
  static final SubjectType Bundle = SubjectType._(
    value: 'Bundle',
  );

  /// DomainResource
  static final SubjectType DomainResource = SubjectType._(
    value: 'DomainResource',
  );

  /// Account
  static final SubjectType Account = SubjectType._(
    value: 'Account',
  );

  /// ActivityDefinition
  static final SubjectType ActivityDefinition = SubjectType._(
    value: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final SubjectType AdministrableProductDefinition = SubjectType._(
    value: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final SubjectType AdverseEvent = SubjectType._(
    value: 'AdverseEvent',
  );

  /// AllergyIntolerance
  static final SubjectType AllergyIntolerance = SubjectType._(
    value: 'AllergyIntolerance',
  );

  /// Appointment
  static final SubjectType Appointment = SubjectType._(
    value: 'Appointment',
  );

  /// AppointmentResponse
  static final SubjectType AppointmentResponse = SubjectType._(
    value: 'AppointmentResponse',
  );

  /// AuditEvent
  static final SubjectType AuditEvent = SubjectType._(
    value: 'AuditEvent',
  );

  /// Basic
  static final SubjectType Basic = SubjectType._(
    value: 'Basic',
  );

  /// BiologicallyDerivedProduct
  static final SubjectType BiologicallyDerivedProduct = SubjectType._(
    value: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final SubjectType BodyStructure = SubjectType._(
    value: 'BodyStructure',
  );

  /// CapabilityStatement
  static final SubjectType CapabilityStatement = SubjectType._(
    value: 'CapabilityStatement',
  );

  /// CarePlan
  static final SubjectType CarePlan = SubjectType._(
    value: 'CarePlan',
  );

  /// CareTeam
  static final SubjectType CareTeam = SubjectType._(
    value: 'CareTeam',
  );

  /// CatalogEntry
  static final SubjectType CatalogEntry = SubjectType._(
    value: 'CatalogEntry',
  );

  /// ChargeItem
  static final SubjectType ChargeItem = SubjectType._(
    value: 'ChargeItem',
  );

  /// ChargeItemDefinition
  static final SubjectType ChargeItemDefinition = SubjectType._(
    value: 'ChargeItemDefinition',
  );

  /// Citation
  static final SubjectType Citation = SubjectType._(
    value: 'Citation',
  );

  /// Claim
  static final SubjectType Claim = SubjectType._(
    value: 'Claim',
  );

  /// ClaimResponse
  static final SubjectType ClaimResponse = SubjectType._(
    value: 'ClaimResponse',
  );

  /// ClinicalImpression
  static final SubjectType ClinicalImpression = SubjectType._(
    value: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final SubjectType ClinicalUseDefinition = SubjectType._(
    value: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final SubjectType CodeSystem = SubjectType._(
    value: 'CodeSystem',
  );

  /// Communication
  static final SubjectType Communication = SubjectType._(
    value: 'Communication',
  );

  /// CommunicationRequest
  static final SubjectType CommunicationRequest = SubjectType._(
    value: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final SubjectType CompartmentDefinition = SubjectType._(
    value: 'CompartmentDefinition',
  );

  /// Composition
  static final SubjectType Composition = SubjectType._(
    value: 'Composition',
  );

  /// ConceptMap
  static final SubjectType ConceptMap = SubjectType._(
    value: 'ConceptMap',
  );

  /// Condition
  static final SubjectType Condition = SubjectType._(
    value: 'Condition',
  );

  /// Consent
  static final SubjectType Consent = SubjectType._(
    value: 'Consent',
  );

  /// Contract
  static final SubjectType Contract = SubjectType._(
    value: 'Contract',
  );

  /// Coverage
  static final SubjectType Coverage = SubjectType._(
    value: 'Coverage',
  );

  /// CoverageEligibilityRequest
  static final SubjectType CoverageEligibilityRequest = SubjectType._(
    value: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final SubjectType CoverageEligibilityResponse = SubjectType._(
    value: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final SubjectType DetectedIssue = SubjectType._(
    value: 'DetectedIssue',
  );

  /// Device
  static final SubjectType Device = SubjectType._(
    value: 'Device',
  );

  /// DeviceDefinition
  static final SubjectType DeviceDefinition = SubjectType._(
    value: 'DeviceDefinition',
  );

  /// DeviceMetric
  static final SubjectType DeviceMetric = SubjectType._(
    value: 'DeviceMetric',
  );

  /// DeviceRequest
  static final SubjectType DeviceRequest = SubjectType._(
    value: 'DeviceRequest',
  );

  /// DeviceUseStatement
  static final SubjectType DeviceUseStatement = SubjectType._(
    value: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final SubjectType DiagnosticReport = SubjectType._(
    value: 'DiagnosticReport',
  );

  /// DocumentManifest
  static final SubjectType DocumentManifest = SubjectType._(
    value: 'DocumentManifest',
  );

  /// DocumentReference
  static final SubjectType DocumentReference = SubjectType._(
    value: 'DocumentReference',
  );

  /// Encounter
  static final SubjectType Encounter = SubjectType._(
    value: 'Encounter',
  );

  /// Endpoint
  static final SubjectType Endpoint = SubjectType._(
    value: 'Endpoint',
  );

  /// EnrollmentRequest
  static final SubjectType EnrollmentRequest = SubjectType._(
    value: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final SubjectType EnrollmentResponse = SubjectType._(
    value: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final SubjectType EpisodeOfCare = SubjectType._(
    value: 'EpisodeOfCare',
  );

  /// EventDefinition
  static final SubjectType EventDefinition = SubjectType._(
    value: 'EventDefinition',
  );

  /// Evidence
  static final SubjectType Evidence = SubjectType._(
    value: 'Evidence',
  );

  /// EvidenceReport
  static final SubjectType EvidenceReport = SubjectType._(
    value: 'EvidenceReport',
  );

  /// EvidenceVariable
  static final SubjectType EvidenceVariable = SubjectType._(
    value: 'EvidenceVariable',
  );

  /// ExampleScenario
  static final SubjectType ExampleScenario = SubjectType._(
    value: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final SubjectType ExplanationOfBenefit = SubjectType._(
    value: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final SubjectType FamilyMemberHistory = SubjectType._(
    value: 'FamilyMemberHistory',
  );

  /// Flag
  static final SubjectType Flag = SubjectType._(
    value: 'Flag',
  );

  /// Goal
  static final SubjectType Goal = SubjectType._(
    value: 'Goal',
  );

  /// GraphDefinition
  static final SubjectType GraphDefinition = SubjectType._(
    value: 'GraphDefinition',
  );

  /// Group
  static final SubjectType Group = SubjectType._(
    value: 'Group',
  );

  /// GuidanceResponse
  static final SubjectType GuidanceResponse = SubjectType._(
    value: 'GuidanceResponse',
  );

  /// HealthcareService
  static final SubjectType HealthcareService = SubjectType._(
    value: 'HealthcareService',
  );

  /// ImagingStudy
  static final SubjectType ImagingStudy = SubjectType._(
    value: 'ImagingStudy',
  );

  /// Immunization
  static final SubjectType Immunization = SubjectType._(
    value: 'Immunization',
  );

  /// ImmunizationEvaluation
  static final SubjectType ImmunizationEvaluation = SubjectType._(
    value: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final SubjectType ImmunizationRecommendation = SubjectType._(
    value: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final SubjectType ImplementationGuide = SubjectType._(
    value: 'ImplementationGuide',
  );

  /// Ingredient
  static final SubjectType Ingredient = SubjectType._(
    value: 'Ingredient',
  );

  /// InsurancePlan
  static final SubjectType InsurancePlan = SubjectType._(
    value: 'InsurancePlan',
  );

  /// Invoice
  static final SubjectType Invoice = SubjectType._(
    value: 'Invoice',
  );

  /// Library
  static final SubjectType Library = SubjectType._(
    value: 'Library',
  );

  /// Linkage
  static final SubjectType Linkage = SubjectType._(
    value: 'Linkage',
  );

  /// List_
  static final SubjectType List_ = SubjectType._(
    value: 'List',
  );

  /// Location
  static final SubjectType Location = SubjectType._(
    value: 'Location',
  );

  /// ManufacturedItemDefinition
  static final SubjectType ManufacturedItemDefinition = SubjectType._(
    value: 'ManufacturedItemDefinition',
  );

  /// Measure
  static final SubjectType Measure = SubjectType._(
    value: 'Measure',
  );

  /// MeasureReport
  static final SubjectType MeasureReport = SubjectType._(
    value: 'MeasureReport',
  );

  /// Media
  static final SubjectType Media = SubjectType._(
    value: 'Media',
  );

  /// Medication
  static final SubjectType Medication = SubjectType._(
    value: 'Medication',
  );

  /// MedicationAdministration
  static final SubjectType MedicationAdministration = SubjectType._(
    value: 'MedicationAdministration',
  );

  /// MedicationDispense
  static final SubjectType MedicationDispense = SubjectType._(
    value: 'MedicationDispense',
  );

  /// MedicationKnowledge
  static final SubjectType MedicationKnowledge = SubjectType._(
    value: 'MedicationKnowledge',
  );

  /// MedicationRequest
  static final SubjectType MedicationRequest = SubjectType._(
    value: 'MedicationRequest',
  );

  /// MedicationStatement
  static final SubjectType MedicationStatement = SubjectType._(
    value: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final SubjectType MedicinalProductDefinition = SubjectType._(
    value: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final SubjectType MessageDefinition = SubjectType._(
    value: 'MessageDefinition',
  );

  /// MessageHeader
  static final SubjectType MessageHeader = SubjectType._(
    value: 'MessageHeader',
  );

  /// MolecularSequence
  static final SubjectType MolecularSequence = SubjectType._(
    value: 'MolecularSequence',
  );

  /// NamingSystem
  static final SubjectType NamingSystem = SubjectType._(
    value: 'NamingSystem',
  );

  /// NutritionOrder
  static final SubjectType NutritionOrder = SubjectType._(
    value: 'NutritionOrder',
  );

  /// NutritionProduct
  static final SubjectType NutritionProduct = SubjectType._(
    value: 'NutritionProduct',
  );

  /// Observation
  static final SubjectType Observation = SubjectType._(
    value: 'Observation',
  );

  /// ObservationDefinition
  static final SubjectType ObservationDefinition = SubjectType._(
    value: 'ObservationDefinition',
  );

  /// OperationDefinition
  static final SubjectType OperationDefinition = SubjectType._(
    value: 'OperationDefinition',
  );

  /// OperationOutcome
  static final SubjectType OperationOutcome = SubjectType._(
    value: 'OperationOutcome',
  );

  /// Organization
  static final SubjectType Organization = SubjectType._(
    value: 'Organization',
  );

  /// OrganizationAffiliation
  static final SubjectType OrganizationAffiliation = SubjectType._(
    value: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final SubjectType PackagedProductDefinition = SubjectType._(
    value: 'PackagedProductDefinition',
  );

  /// Patient
  static final SubjectType Patient = SubjectType._(
    value: 'Patient',
  );

  /// PaymentNotice
  static final SubjectType PaymentNotice = SubjectType._(
    value: 'PaymentNotice',
  );

  /// PaymentReconciliation
  static final SubjectType PaymentReconciliation = SubjectType._(
    value: 'PaymentReconciliation',
  );

  /// Person
  static final SubjectType Person = SubjectType._(
    value: 'Person',
  );

  /// PlanDefinition
  static final SubjectType PlanDefinition = SubjectType._(
    value: 'PlanDefinition',
  );

  /// Practitioner
  static final SubjectType Practitioner = SubjectType._(
    value: 'Practitioner',
  );

  /// PractitionerRole
  static final SubjectType PractitionerRole = SubjectType._(
    value: 'PractitionerRole',
  );

  /// Procedure
  static final SubjectType Procedure = SubjectType._(
    value: 'Procedure',
  );

  /// Provenance
  static final SubjectType Provenance = SubjectType._(
    value: 'Provenance',
  );

  /// Questionnaire
  static final SubjectType Questionnaire = SubjectType._(
    value: 'Questionnaire',
  );

  /// QuestionnaireResponse
  static final SubjectType QuestionnaireResponse = SubjectType._(
    value: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final SubjectType RegulatedAuthorization = SubjectType._(
    value: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final SubjectType RelatedPerson = SubjectType._(
    value: 'RelatedPerson',
  );

  /// RequestGroup
  static final SubjectType RequestGroup = SubjectType._(
    value: 'RequestGroup',
  );

  /// ResearchDefinition
  static final SubjectType ResearchDefinition = SubjectType._(
    value: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final SubjectType ResearchElementDefinition = SubjectType._(
    value: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final SubjectType ResearchStudy = SubjectType._(
    value: 'ResearchStudy',
  );

  /// ResearchSubject
  static final SubjectType ResearchSubject = SubjectType._(
    value: 'ResearchSubject',
  );

  /// RiskAssessment
  static final SubjectType RiskAssessment = SubjectType._(
    value: 'RiskAssessment',
  );

  /// Schedule
  static final SubjectType Schedule = SubjectType._(
    value: 'Schedule',
  );

  /// SearchParameter
  static final SubjectType SearchParameter = SubjectType._(
    value: 'SearchParameter',
  );

  /// ServiceRequest
  static final SubjectType ServiceRequest = SubjectType._(
    value: 'ServiceRequest',
  );

  /// Slot
  static final SubjectType Slot = SubjectType._(
    value: 'Slot',
  );

  /// Specimen
  static final SubjectType Specimen = SubjectType._(
    value: 'Specimen',
  );

  /// SpecimenDefinition
  static final SubjectType SpecimenDefinition = SubjectType._(
    value: 'SpecimenDefinition',
  );

  /// StructureDefinition
  static final SubjectType StructureDefinition = SubjectType._(
    value: 'StructureDefinition',
  );

  /// StructureMap
  static final SubjectType StructureMap = SubjectType._(
    value: 'StructureMap',
  );

  /// Subscription
  static final SubjectType Subscription = SubjectType._(
    value: 'Subscription',
  );

  /// SubscriptionStatus
  static final SubjectType SubscriptionStatus = SubjectType._(
    value: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final SubjectType SubscriptionTopic = SubjectType._(
    value: 'SubscriptionTopic',
  );

  /// Substance
  static final SubjectType Substance = SubjectType._(
    value: 'Substance',
  );

  /// SubstanceDefinition
  static final SubjectType SubstanceDefinition = SubjectType._(
    value: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final SubjectType SupplyDelivery = SubjectType._(
    value: 'SupplyDelivery',
  );

  /// SupplyRequest
  static final SubjectType SupplyRequest = SubjectType._(
    value: 'SupplyRequest',
  );

  /// Task
  static final SubjectType Task = SubjectType._(
    value: 'Task',
  );

  /// TerminologyCapabilities
  static final SubjectType TerminologyCapabilities = SubjectType._(
    value: 'TerminologyCapabilities',
  );

  /// TestReport
  static final SubjectType TestReport = SubjectType._(
    value: 'TestReport',
  );

  /// TestScript
  static final SubjectType TestScript = SubjectType._(
    value: 'TestScript',
  );

  /// ValueSet
  static final SubjectType ValueSet = SubjectType._(
    value: 'ValueSet',
  );

  /// VerificationResult
  static final SubjectType VerificationResult = SubjectType._(
    value: 'VerificationResult',
  );

  /// VisionPrescription
  static final SubjectType VisionPrescription = SubjectType._(
    value: 'VisionPrescription',
  );

  /// Parameters
  static final SubjectType Parameters = SubjectType._(
    value: 'Parameters',
  );

  /// For instances where an Element is present but not value

  static final SubjectType elementOnly = SubjectType._(value: '');

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

  /// Clones the current instance
  @override
  SubjectType clone() => SubjectType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubjectType withElement(Element? newElement) {
    return SubjectType._(value: value, element: newElement);
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
  SubjectType copyWith({
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
    return SubjectType._(
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
