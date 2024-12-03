// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Possible types of subjects.
class SubjectType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SubjectType._(super.value, [super.element]);

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
    return SubjectType._(value, element);
  }

  /// Resource
  static final SubjectType Resource = SubjectType._(
    'Resource',
  );

  /// Binary
  static final SubjectType Binary = SubjectType._(
    'Binary',
  );

  /// Bundle
  static final SubjectType Bundle = SubjectType._(
    'Bundle',
  );

  /// DomainResource
  static final SubjectType DomainResource = SubjectType._(
    'DomainResource',
  );

  /// Account
  static final SubjectType Account = SubjectType._(
    'Account',
  );

  /// ActivityDefinition
  static final SubjectType ActivityDefinition = SubjectType._(
    'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final SubjectType AdministrableProductDefinition = SubjectType._(
    'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final SubjectType AdverseEvent = SubjectType._(
    'AdverseEvent',
  );

  /// AllergyIntolerance
  static final SubjectType AllergyIntolerance = SubjectType._(
    'AllergyIntolerance',
  );

  /// Appointment
  static final SubjectType Appointment = SubjectType._(
    'Appointment',
  );

  /// AppointmentResponse
  static final SubjectType AppointmentResponse = SubjectType._(
    'AppointmentResponse',
  );

  /// AuditEvent
  static final SubjectType AuditEvent = SubjectType._(
    'AuditEvent',
  );

  /// Basic
  static final SubjectType Basic = SubjectType._(
    'Basic',
  );

  /// BiologicallyDerivedProduct
  static final SubjectType BiologicallyDerivedProduct = SubjectType._(
    'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final SubjectType BodyStructure = SubjectType._(
    'BodyStructure',
  );

  /// CapabilityStatement
  static final SubjectType CapabilityStatement = SubjectType._(
    'CapabilityStatement',
  );

  /// CarePlan
  static final SubjectType CarePlan = SubjectType._(
    'CarePlan',
  );

  /// CareTeam
  static final SubjectType CareTeam = SubjectType._(
    'CareTeam',
  );

  /// CatalogEntry
  static final SubjectType CatalogEntry = SubjectType._(
    'CatalogEntry',
  );

  /// ChargeItem
  static final SubjectType ChargeItem = SubjectType._(
    'ChargeItem',
  );

  /// ChargeItemDefinition
  static final SubjectType ChargeItemDefinition = SubjectType._(
    'ChargeItemDefinition',
  );

  /// Citation
  static final SubjectType Citation = SubjectType._(
    'Citation',
  );

  /// Claim
  static final SubjectType Claim = SubjectType._(
    'Claim',
  );

  /// ClaimResponse
  static final SubjectType ClaimResponse = SubjectType._(
    'ClaimResponse',
  );

  /// ClinicalImpression
  static final SubjectType ClinicalImpression = SubjectType._(
    'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final SubjectType ClinicalUseDefinition = SubjectType._(
    'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final SubjectType CodeSystem = SubjectType._(
    'CodeSystem',
  );

  /// Communication
  static final SubjectType Communication = SubjectType._(
    'Communication',
  );

  /// CommunicationRequest
  static final SubjectType CommunicationRequest = SubjectType._(
    'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final SubjectType CompartmentDefinition = SubjectType._(
    'CompartmentDefinition',
  );

  /// Composition
  static final SubjectType Composition = SubjectType._(
    'Composition',
  );

  /// ConceptMap
  static final SubjectType ConceptMap = SubjectType._(
    'ConceptMap',
  );

  /// Condition
  static final SubjectType Condition = SubjectType._(
    'Condition',
  );

  /// Consent
  static final SubjectType Consent = SubjectType._(
    'Consent',
  );

  /// Contract
  static final SubjectType Contract = SubjectType._(
    'Contract',
  );

  /// Coverage
  static final SubjectType Coverage = SubjectType._(
    'Coverage',
  );

  /// CoverageEligibilityRequest
  static final SubjectType CoverageEligibilityRequest = SubjectType._(
    'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final SubjectType CoverageEligibilityResponse = SubjectType._(
    'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final SubjectType DetectedIssue = SubjectType._(
    'DetectedIssue',
  );

  /// Device
  static final SubjectType Device = SubjectType._(
    'Device',
  );

  /// DeviceDefinition
  static final SubjectType DeviceDefinition = SubjectType._(
    'DeviceDefinition',
  );

  /// DeviceMetric
  static final SubjectType DeviceMetric = SubjectType._(
    'DeviceMetric',
  );

  /// DeviceRequest
  static final SubjectType DeviceRequest = SubjectType._(
    'DeviceRequest',
  );

  /// DeviceUseStatement
  static final SubjectType DeviceUseStatement = SubjectType._(
    'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final SubjectType DiagnosticReport = SubjectType._(
    'DiagnosticReport',
  );

  /// DocumentManifest
  static final SubjectType DocumentManifest = SubjectType._(
    'DocumentManifest',
  );

  /// DocumentReference
  static final SubjectType DocumentReference = SubjectType._(
    'DocumentReference',
  );

  /// Encounter
  static final SubjectType Encounter = SubjectType._(
    'Encounter',
  );

  /// Endpoint
  static final SubjectType Endpoint = SubjectType._(
    'Endpoint',
  );

  /// EnrollmentRequest
  static final SubjectType EnrollmentRequest = SubjectType._(
    'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final SubjectType EnrollmentResponse = SubjectType._(
    'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final SubjectType EpisodeOfCare = SubjectType._(
    'EpisodeOfCare',
  );

  /// EventDefinition
  static final SubjectType EventDefinition = SubjectType._(
    'EventDefinition',
  );

  /// Evidence
  static final SubjectType Evidence = SubjectType._(
    'Evidence',
  );

  /// EvidenceReport
  static final SubjectType EvidenceReport = SubjectType._(
    'EvidenceReport',
  );

  /// EvidenceVariable
  static final SubjectType EvidenceVariable = SubjectType._(
    'EvidenceVariable',
  );

  /// ExampleScenario
  static final SubjectType ExampleScenario = SubjectType._(
    'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final SubjectType ExplanationOfBenefit = SubjectType._(
    'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final SubjectType FamilyMemberHistory = SubjectType._(
    'FamilyMemberHistory',
  );

  /// Flag
  static final SubjectType Flag = SubjectType._(
    'Flag',
  );

  /// Goal
  static final SubjectType Goal = SubjectType._(
    'Goal',
  );

  /// GraphDefinition
  static final SubjectType GraphDefinition = SubjectType._(
    'GraphDefinition',
  );

  /// Group
  static final SubjectType Group = SubjectType._(
    'Group',
  );

  /// GuidanceResponse
  static final SubjectType GuidanceResponse = SubjectType._(
    'GuidanceResponse',
  );

  /// HealthcareService
  static final SubjectType HealthcareService = SubjectType._(
    'HealthcareService',
  );

  /// ImagingStudy
  static final SubjectType ImagingStudy = SubjectType._(
    'ImagingStudy',
  );

  /// Immunization
  static final SubjectType Immunization = SubjectType._(
    'Immunization',
  );

  /// ImmunizationEvaluation
  static final SubjectType ImmunizationEvaluation = SubjectType._(
    'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final SubjectType ImmunizationRecommendation = SubjectType._(
    'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final SubjectType ImplementationGuide = SubjectType._(
    'ImplementationGuide',
  );

  /// Ingredient
  static final SubjectType Ingredient = SubjectType._(
    'Ingredient',
  );

  /// InsurancePlan
  static final SubjectType InsurancePlan = SubjectType._(
    'InsurancePlan',
  );

  /// Invoice
  static final SubjectType Invoice = SubjectType._(
    'Invoice',
  );

  /// Library
  static final SubjectType Library = SubjectType._(
    'Library',
  );

  /// Linkage
  static final SubjectType Linkage = SubjectType._(
    'Linkage',
  );

  /// List_
  static final SubjectType List_ = SubjectType._(
    'List',
  );

  /// Location
  static final SubjectType Location = SubjectType._(
    'Location',
  );

  /// ManufacturedItemDefinition
  static final SubjectType ManufacturedItemDefinition = SubjectType._(
    'ManufacturedItemDefinition',
  );

  /// Measure
  static final SubjectType Measure = SubjectType._(
    'Measure',
  );

  /// MeasureReport
  static final SubjectType MeasureReport = SubjectType._(
    'MeasureReport',
  );

  /// Media
  static final SubjectType Media = SubjectType._(
    'Media',
  );

  /// Medication
  static final SubjectType Medication = SubjectType._(
    'Medication',
  );

  /// MedicationAdministration
  static final SubjectType MedicationAdministration = SubjectType._(
    'MedicationAdministration',
  );

  /// MedicationDispense
  static final SubjectType MedicationDispense = SubjectType._(
    'MedicationDispense',
  );

  /// MedicationKnowledge
  static final SubjectType MedicationKnowledge = SubjectType._(
    'MedicationKnowledge',
  );

  /// MedicationRequest
  static final SubjectType MedicationRequest = SubjectType._(
    'MedicationRequest',
  );

  /// MedicationStatement
  static final SubjectType MedicationStatement = SubjectType._(
    'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final SubjectType MedicinalProductDefinition = SubjectType._(
    'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final SubjectType MessageDefinition = SubjectType._(
    'MessageDefinition',
  );

  /// MessageHeader
  static final SubjectType MessageHeader = SubjectType._(
    'MessageHeader',
  );

  /// MolecularSequence
  static final SubjectType MolecularSequence = SubjectType._(
    'MolecularSequence',
  );

  /// NamingSystem
  static final SubjectType NamingSystem = SubjectType._(
    'NamingSystem',
  );

  /// NutritionOrder
  static final SubjectType NutritionOrder = SubjectType._(
    'NutritionOrder',
  );

  /// NutritionProduct
  static final SubjectType NutritionProduct = SubjectType._(
    'NutritionProduct',
  );

  /// Observation
  static final SubjectType Observation = SubjectType._(
    'Observation',
  );

  /// ObservationDefinition
  static final SubjectType ObservationDefinition = SubjectType._(
    'ObservationDefinition',
  );

  /// OperationDefinition
  static final SubjectType OperationDefinition = SubjectType._(
    'OperationDefinition',
  );

  /// OperationOutcome
  static final SubjectType OperationOutcome = SubjectType._(
    'OperationOutcome',
  );

  /// Organization
  static final SubjectType Organization = SubjectType._(
    'Organization',
  );

  /// OrganizationAffiliation
  static final SubjectType OrganizationAffiliation = SubjectType._(
    'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final SubjectType PackagedProductDefinition = SubjectType._(
    'PackagedProductDefinition',
  );

  /// Patient
  static final SubjectType Patient = SubjectType._(
    'Patient',
  );

  /// PaymentNotice
  static final SubjectType PaymentNotice = SubjectType._(
    'PaymentNotice',
  );

  /// PaymentReconciliation
  static final SubjectType PaymentReconciliation = SubjectType._(
    'PaymentReconciliation',
  );

  /// Person
  static final SubjectType Person = SubjectType._(
    'Person',
  );

  /// PlanDefinition
  static final SubjectType PlanDefinition = SubjectType._(
    'PlanDefinition',
  );

  /// Practitioner
  static final SubjectType Practitioner = SubjectType._(
    'Practitioner',
  );

  /// PractitionerRole
  static final SubjectType PractitionerRole = SubjectType._(
    'PractitionerRole',
  );

  /// Procedure
  static final SubjectType Procedure = SubjectType._(
    'Procedure',
  );

  /// Provenance
  static final SubjectType Provenance = SubjectType._(
    'Provenance',
  );

  /// Questionnaire
  static final SubjectType Questionnaire = SubjectType._(
    'Questionnaire',
  );

  /// QuestionnaireResponse
  static final SubjectType QuestionnaireResponse = SubjectType._(
    'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final SubjectType RegulatedAuthorization = SubjectType._(
    'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final SubjectType RelatedPerson = SubjectType._(
    'RelatedPerson',
  );

  /// RequestGroup
  static final SubjectType RequestGroup = SubjectType._(
    'RequestGroup',
  );

  /// ResearchDefinition
  static final SubjectType ResearchDefinition = SubjectType._(
    'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final SubjectType ResearchElementDefinition = SubjectType._(
    'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final SubjectType ResearchStudy = SubjectType._(
    'ResearchStudy',
  );

  /// ResearchSubject
  static final SubjectType ResearchSubject = SubjectType._(
    'ResearchSubject',
  );

  /// RiskAssessment
  static final SubjectType RiskAssessment = SubjectType._(
    'RiskAssessment',
  );

  /// Schedule
  static final SubjectType Schedule = SubjectType._(
    'Schedule',
  );

  /// SearchParameter
  static final SubjectType SearchParameter = SubjectType._(
    'SearchParameter',
  );

  /// ServiceRequest
  static final SubjectType ServiceRequest = SubjectType._(
    'ServiceRequest',
  );

  /// Slot
  static final SubjectType Slot = SubjectType._(
    'Slot',
  );

  /// Specimen
  static final SubjectType Specimen = SubjectType._(
    'Specimen',
  );

  /// SpecimenDefinition
  static final SubjectType SpecimenDefinition = SubjectType._(
    'SpecimenDefinition',
  );

  /// StructureDefinition
  static final SubjectType StructureDefinition = SubjectType._(
    'StructureDefinition',
  );

  /// StructureMap
  static final SubjectType StructureMap = SubjectType._(
    'StructureMap',
  );

  /// Subscription
  static final SubjectType Subscription = SubjectType._(
    'Subscription',
  );

  /// SubscriptionStatus
  static final SubjectType SubscriptionStatus = SubjectType._(
    'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final SubjectType SubscriptionTopic = SubjectType._(
    'SubscriptionTopic',
  );

  /// Substance
  static final SubjectType Substance = SubjectType._(
    'Substance',
  );

  /// SubstanceDefinition
  static final SubjectType SubstanceDefinition = SubjectType._(
    'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final SubjectType SupplyDelivery = SubjectType._(
    'SupplyDelivery',
  );

  /// SupplyRequest
  static final SubjectType SupplyRequest = SubjectType._(
    'SupplyRequest',
  );

  /// Task
  static final SubjectType Task = SubjectType._(
    'Task',
  );

  /// TerminologyCapabilities
  static final SubjectType TerminologyCapabilities = SubjectType._(
    'TerminologyCapabilities',
  );

  /// TestReport
  static final SubjectType TestReport = SubjectType._(
    'TestReport',
  );

  /// TestScript
  static final SubjectType TestScript = SubjectType._(
    'TestScript',
  );

  /// ValueSet
  static final SubjectType ValueSet = SubjectType._(
    'ValueSet',
  );

  /// VerificationResult
  static final SubjectType VerificationResult = SubjectType._(
    'VerificationResult',
  );

  /// VisionPrescription
  static final SubjectType VisionPrescription = SubjectType._(
    'VisionPrescription',
  );

  /// Parameters
  static final SubjectType Parameters = SubjectType._(
    'Parameters',
  );

  /// For instances where an Element is present but not value

  static final SubjectType elementOnly = SubjectType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SubjectType setElement(
    String name,
    dynamic elementValue,
  ) {
    return SubjectType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SubjectType withElement(Element? newElement) {
    return SubjectType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SubjectType._(
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
