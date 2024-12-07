// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Resource types defined as part of FHIR that can be represented as in-line definitions of a care plan activity.
class CarePlanActivityKind extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CarePlanActivityKind._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CarePlanActivityKind] from JSON.
  factory CarePlanActivityKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityKind.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityKind cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityKind._(value: value, element: element);
  }

  /// Resource
  static final CarePlanActivityKind Resource = CarePlanActivityKind._(
    value: 'Resource',
  );

  /// Binary
  static final CarePlanActivityKind Binary = CarePlanActivityKind._(
    value: 'Binary',
  );

  /// Bundle
  static final CarePlanActivityKind Bundle = CarePlanActivityKind._(
    value: 'Bundle',
  );

  /// DomainResource
  static final CarePlanActivityKind DomainResource = CarePlanActivityKind._(
    value: 'DomainResource',
  );

  /// Account
  static final CarePlanActivityKind Account = CarePlanActivityKind._(
    value: 'Account',
  );

  /// ActivityDefinition
  static final CarePlanActivityKind ActivityDefinition = CarePlanActivityKind._(
    value: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final CarePlanActivityKind AdministrableProductDefinition =
      CarePlanActivityKind._(
    value: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final CarePlanActivityKind AdverseEvent = CarePlanActivityKind._(
    value: 'AdverseEvent',
  );

  /// AllergyIntolerance
  static final CarePlanActivityKind AllergyIntolerance = CarePlanActivityKind._(
    value: 'AllergyIntolerance',
  );

  /// Appointment
  static final CarePlanActivityKind Appointment = CarePlanActivityKind._(
    value: 'Appointment',
  );

  /// AppointmentResponse
  static final CarePlanActivityKind AppointmentResponse =
      CarePlanActivityKind._(
    value: 'AppointmentResponse',
  );

  /// AuditEvent
  static final CarePlanActivityKind AuditEvent = CarePlanActivityKind._(
    value: 'AuditEvent',
  );

  /// Basic
  static final CarePlanActivityKind Basic = CarePlanActivityKind._(
    value: 'Basic',
  );

  /// BiologicallyDerivedProduct
  static final CarePlanActivityKind BiologicallyDerivedProduct =
      CarePlanActivityKind._(
    value: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final CarePlanActivityKind BodyStructure = CarePlanActivityKind._(
    value: 'BodyStructure',
  );

  /// CapabilityStatement
  static final CarePlanActivityKind CapabilityStatement =
      CarePlanActivityKind._(
    value: 'CapabilityStatement',
  );

  /// CarePlan
  static final CarePlanActivityKind CarePlan = CarePlanActivityKind._(
    value: 'CarePlan',
  );

  /// CareTeam
  static final CarePlanActivityKind CareTeam = CarePlanActivityKind._(
    value: 'CareTeam',
  );

  /// CatalogEntry
  static final CarePlanActivityKind CatalogEntry = CarePlanActivityKind._(
    value: 'CatalogEntry',
  );

  /// ChargeItem
  static final CarePlanActivityKind ChargeItem = CarePlanActivityKind._(
    value: 'ChargeItem',
  );

  /// ChargeItemDefinition
  static final CarePlanActivityKind ChargeItemDefinition =
      CarePlanActivityKind._(
    value: 'ChargeItemDefinition',
  );

  /// Citation
  static final CarePlanActivityKind Citation = CarePlanActivityKind._(
    value: 'Citation',
  );

  /// Claim
  static final CarePlanActivityKind Claim = CarePlanActivityKind._(
    value: 'Claim',
  );

  /// ClaimResponse
  static final CarePlanActivityKind ClaimResponse = CarePlanActivityKind._(
    value: 'ClaimResponse',
  );

  /// ClinicalImpression
  static final CarePlanActivityKind ClinicalImpression = CarePlanActivityKind._(
    value: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final CarePlanActivityKind ClinicalUseDefinition =
      CarePlanActivityKind._(
    value: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final CarePlanActivityKind CodeSystem = CarePlanActivityKind._(
    value: 'CodeSystem',
  );

  /// Communication
  static final CarePlanActivityKind Communication = CarePlanActivityKind._(
    value: 'Communication',
  );

  /// CommunicationRequest
  static final CarePlanActivityKind CommunicationRequest =
      CarePlanActivityKind._(
    value: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final CarePlanActivityKind CompartmentDefinition =
      CarePlanActivityKind._(
    value: 'CompartmentDefinition',
  );

  /// Composition
  static final CarePlanActivityKind Composition = CarePlanActivityKind._(
    value: 'Composition',
  );

  /// ConceptMap
  static final CarePlanActivityKind ConceptMap = CarePlanActivityKind._(
    value: 'ConceptMap',
  );

  /// Condition
  static final CarePlanActivityKind Condition = CarePlanActivityKind._(
    value: 'Condition',
  );

  /// Consent
  static final CarePlanActivityKind Consent = CarePlanActivityKind._(
    value: 'Consent',
  );

  /// Contract
  static final CarePlanActivityKind Contract = CarePlanActivityKind._(
    value: 'Contract',
  );

  /// Coverage
  static final CarePlanActivityKind Coverage = CarePlanActivityKind._(
    value: 'Coverage',
  );

  /// CoverageEligibilityRequest
  static final CarePlanActivityKind CoverageEligibilityRequest =
      CarePlanActivityKind._(
    value: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final CarePlanActivityKind CoverageEligibilityResponse =
      CarePlanActivityKind._(
    value: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final CarePlanActivityKind DetectedIssue = CarePlanActivityKind._(
    value: 'DetectedIssue',
  );

  /// Device
  static final CarePlanActivityKind Device = CarePlanActivityKind._(
    value: 'Device',
  );

  /// DeviceDefinition
  static final CarePlanActivityKind DeviceDefinition = CarePlanActivityKind._(
    value: 'DeviceDefinition',
  );

  /// DeviceMetric
  static final CarePlanActivityKind DeviceMetric = CarePlanActivityKind._(
    value: 'DeviceMetric',
  );

  /// DeviceRequest
  static final CarePlanActivityKind DeviceRequest = CarePlanActivityKind._(
    value: 'DeviceRequest',
  );

  /// DeviceUseStatement
  static final CarePlanActivityKind DeviceUseStatement = CarePlanActivityKind._(
    value: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final CarePlanActivityKind DiagnosticReport = CarePlanActivityKind._(
    value: 'DiagnosticReport',
  );

  /// DocumentManifest
  static final CarePlanActivityKind DocumentManifest = CarePlanActivityKind._(
    value: 'DocumentManifest',
  );

  /// DocumentReference
  static final CarePlanActivityKind DocumentReference = CarePlanActivityKind._(
    value: 'DocumentReference',
  );

  /// Encounter
  static final CarePlanActivityKind Encounter = CarePlanActivityKind._(
    value: 'Encounter',
  );

  /// Endpoint
  static final CarePlanActivityKind Endpoint = CarePlanActivityKind._(
    value: 'Endpoint',
  );

  /// EnrollmentRequest
  static final CarePlanActivityKind EnrollmentRequest = CarePlanActivityKind._(
    value: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final CarePlanActivityKind EnrollmentResponse = CarePlanActivityKind._(
    value: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final CarePlanActivityKind EpisodeOfCare = CarePlanActivityKind._(
    value: 'EpisodeOfCare',
  );

  /// EventDefinition
  static final CarePlanActivityKind EventDefinition = CarePlanActivityKind._(
    value: 'EventDefinition',
  );

  /// Evidence
  static final CarePlanActivityKind Evidence = CarePlanActivityKind._(
    value: 'Evidence',
  );

  /// EvidenceReport
  static final CarePlanActivityKind EvidenceReport = CarePlanActivityKind._(
    value: 'EvidenceReport',
  );

  /// EvidenceVariable
  static final CarePlanActivityKind EvidenceVariable = CarePlanActivityKind._(
    value: 'EvidenceVariable',
  );

  /// ExampleScenario
  static final CarePlanActivityKind ExampleScenario = CarePlanActivityKind._(
    value: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final CarePlanActivityKind ExplanationOfBenefit =
      CarePlanActivityKind._(
    value: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final CarePlanActivityKind FamilyMemberHistory =
      CarePlanActivityKind._(
    value: 'FamilyMemberHistory',
  );

  /// Flag
  static final CarePlanActivityKind Flag = CarePlanActivityKind._(
    value: 'Flag',
  );

  /// Goal
  static final CarePlanActivityKind Goal = CarePlanActivityKind._(
    value: 'Goal',
  );

  /// GraphDefinition
  static final CarePlanActivityKind GraphDefinition = CarePlanActivityKind._(
    value: 'GraphDefinition',
  );

  /// Group
  static final CarePlanActivityKind Group = CarePlanActivityKind._(
    value: 'Group',
  );

  /// GuidanceResponse
  static final CarePlanActivityKind GuidanceResponse = CarePlanActivityKind._(
    value: 'GuidanceResponse',
  );

  /// HealthcareService
  static final CarePlanActivityKind HealthcareService = CarePlanActivityKind._(
    value: 'HealthcareService',
  );

  /// ImagingStudy
  static final CarePlanActivityKind ImagingStudy = CarePlanActivityKind._(
    value: 'ImagingStudy',
  );

  /// Immunization
  static final CarePlanActivityKind Immunization = CarePlanActivityKind._(
    value: 'Immunization',
  );

  /// ImmunizationEvaluation
  static final CarePlanActivityKind ImmunizationEvaluation =
      CarePlanActivityKind._(
    value: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final CarePlanActivityKind ImmunizationRecommendation =
      CarePlanActivityKind._(
    value: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final CarePlanActivityKind ImplementationGuide =
      CarePlanActivityKind._(
    value: 'ImplementationGuide',
  );

  /// Ingredient
  static final CarePlanActivityKind Ingredient = CarePlanActivityKind._(
    value: 'Ingredient',
  );

  /// InsurancePlan
  static final CarePlanActivityKind InsurancePlan = CarePlanActivityKind._(
    value: 'InsurancePlan',
  );

  /// Invoice
  static final CarePlanActivityKind Invoice = CarePlanActivityKind._(
    value: 'Invoice',
  );

  /// Library
  static final CarePlanActivityKind Library = CarePlanActivityKind._(
    value: 'Library',
  );

  /// Linkage
  static final CarePlanActivityKind Linkage = CarePlanActivityKind._(
    value: 'Linkage',
  );

  /// List_
  static final CarePlanActivityKind List_ = CarePlanActivityKind._(
    value: 'List',
  );

  /// Location
  static final CarePlanActivityKind Location = CarePlanActivityKind._(
    value: 'Location',
  );

  /// ManufacturedItemDefinition
  static final CarePlanActivityKind ManufacturedItemDefinition =
      CarePlanActivityKind._(
    value: 'ManufacturedItemDefinition',
  );

  /// Measure
  static final CarePlanActivityKind Measure = CarePlanActivityKind._(
    value: 'Measure',
  );

  /// MeasureReport
  static final CarePlanActivityKind MeasureReport = CarePlanActivityKind._(
    value: 'MeasureReport',
  );

  /// Media
  static final CarePlanActivityKind Media = CarePlanActivityKind._(
    value: 'Media',
  );

  /// Medication
  static final CarePlanActivityKind Medication = CarePlanActivityKind._(
    value: 'Medication',
  );

  /// MedicationAdministration
  static final CarePlanActivityKind MedicationAdministration =
      CarePlanActivityKind._(
    value: 'MedicationAdministration',
  );

  /// MedicationDispense
  static final CarePlanActivityKind MedicationDispense = CarePlanActivityKind._(
    value: 'MedicationDispense',
  );

  /// MedicationKnowledge
  static final CarePlanActivityKind MedicationKnowledge =
      CarePlanActivityKind._(
    value: 'MedicationKnowledge',
  );

  /// MedicationRequest
  static final CarePlanActivityKind MedicationRequest = CarePlanActivityKind._(
    value: 'MedicationRequest',
  );

  /// MedicationStatement
  static final CarePlanActivityKind MedicationStatement =
      CarePlanActivityKind._(
    value: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final CarePlanActivityKind MedicinalProductDefinition =
      CarePlanActivityKind._(
    value: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final CarePlanActivityKind MessageDefinition = CarePlanActivityKind._(
    value: 'MessageDefinition',
  );

  /// MessageHeader
  static final CarePlanActivityKind MessageHeader = CarePlanActivityKind._(
    value: 'MessageHeader',
  );

  /// MolecularSequence
  static final CarePlanActivityKind MolecularSequence = CarePlanActivityKind._(
    value: 'MolecularSequence',
  );

  /// NamingSystem
  static final CarePlanActivityKind NamingSystem = CarePlanActivityKind._(
    value: 'NamingSystem',
  );

  /// NutritionOrder
  static final CarePlanActivityKind NutritionOrder = CarePlanActivityKind._(
    value: 'NutritionOrder',
  );

  /// NutritionProduct
  static final CarePlanActivityKind NutritionProduct = CarePlanActivityKind._(
    value: 'NutritionProduct',
  );

  /// Observation
  static final CarePlanActivityKind Observation = CarePlanActivityKind._(
    value: 'Observation',
  );

  /// ObservationDefinition
  static final CarePlanActivityKind ObservationDefinition =
      CarePlanActivityKind._(
    value: 'ObservationDefinition',
  );

  /// OperationDefinition
  static final CarePlanActivityKind OperationDefinition =
      CarePlanActivityKind._(
    value: 'OperationDefinition',
  );

  /// OperationOutcome
  static final CarePlanActivityKind OperationOutcome = CarePlanActivityKind._(
    value: 'OperationOutcome',
  );

  /// Organization
  static final CarePlanActivityKind Organization = CarePlanActivityKind._(
    value: 'Organization',
  );

  /// OrganizationAffiliation
  static final CarePlanActivityKind OrganizationAffiliation =
      CarePlanActivityKind._(
    value: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final CarePlanActivityKind PackagedProductDefinition =
      CarePlanActivityKind._(
    value: 'PackagedProductDefinition',
  );

  /// Patient
  static final CarePlanActivityKind Patient = CarePlanActivityKind._(
    value: 'Patient',
  );

  /// PaymentNotice
  static final CarePlanActivityKind PaymentNotice = CarePlanActivityKind._(
    value: 'PaymentNotice',
  );

  /// PaymentReconciliation
  static final CarePlanActivityKind PaymentReconciliation =
      CarePlanActivityKind._(
    value: 'PaymentReconciliation',
  );

  /// Person
  static final CarePlanActivityKind Person = CarePlanActivityKind._(
    value: 'Person',
  );

  /// PlanDefinition
  static final CarePlanActivityKind PlanDefinition = CarePlanActivityKind._(
    value: 'PlanDefinition',
  );

  /// Practitioner
  static final CarePlanActivityKind Practitioner = CarePlanActivityKind._(
    value: 'Practitioner',
  );

  /// PractitionerRole
  static final CarePlanActivityKind PractitionerRole = CarePlanActivityKind._(
    value: 'PractitionerRole',
  );

  /// Procedure
  static final CarePlanActivityKind Procedure = CarePlanActivityKind._(
    value: 'Procedure',
  );

  /// Provenance
  static final CarePlanActivityKind Provenance = CarePlanActivityKind._(
    value: 'Provenance',
  );

  /// Questionnaire
  static final CarePlanActivityKind Questionnaire = CarePlanActivityKind._(
    value: 'Questionnaire',
  );

  /// QuestionnaireResponse
  static final CarePlanActivityKind QuestionnaireResponse =
      CarePlanActivityKind._(
    value: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final CarePlanActivityKind RegulatedAuthorization =
      CarePlanActivityKind._(
    value: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final CarePlanActivityKind RelatedPerson = CarePlanActivityKind._(
    value: 'RelatedPerson',
  );

  /// RequestGroup
  static final CarePlanActivityKind RequestGroup = CarePlanActivityKind._(
    value: 'RequestGroup',
  );

  /// ResearchDefinition
  static final CarePlanActivityKind ResearchDefinition = CarePlanActivityKind._(
    value: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final CarePlanActivityKind ResearchElementDefinition =
      CarePlanActivityKind._(
    value: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final CarePlanActivityKind ResearchStudy = CarePlanActivityKind._(
    value: 'ResearchStudy',
  );

  /// ResearchSubject
  static final CarePlanActivityKind ResearchSubject = CarePlanActivityKind._(
    value: 'ResearchSubject',
  );

  /// RiskAssessment
  static final CarePlanActivityKind RiskAssessment = CarePlanActivityKind._(
    value: 'RiskAssessment',
  );

  /// Schedule
  static final CarePlanActivityKind Schedule = CarePlanActivityKind._(
    value: 'Schedule',
  );

  /// SearchParameter
  static final CarePlanActivityKind SearchParameter = CarePlanActivityKind._(
    value: 'SearchParameter',
  );

  /// ServiceRequest
  static final CarePlanActivityKind ServiceRequest = CarePlanActivityKind._(
    value: 'ServiceRequest',
  );

  /// Slot
  static final CarePlanActivityKind Slot = CarePlanActivityKind._(
    value: 'Slot',
  );

  /// Specimen
  static final CarePlanActivityKind Specimen = CarePlanActivityKind._(
    value: 'Specimen',
  );

  /// SpecimenDefinition
  static final CarePlanActivityKind SpecimenDefinition = CarePlanActivityKind._(
    value: 'SpecimenDefinition',
  );

  /// StructureDefinition
  static final CarePlanActivityKind StructureDefinition =
      CarePlanActivityKind._(
    value: 'StructureDefinition',
  );

  /// StructureMap
  static final CarePlanActivityKind StructureMap = CarePlanActivityKind._(
    value: 'StructureMap',
  );

  /// Subscription
  static final CarePlanActivityKind Subscription = CarePlanActivityKind._(
    value: 'Subscription',
  );

  /// SubscriptionStatus
  static final CarePlanActivityKind SubscriptionStatus = CarePlanActivityKind._(
    value: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final CarePlanActivityKind SubscriptionTopic = CarePlanActivityKind._(
    value: 'SubscriptionTopic',
  );

  /// Substance
  static final CarePlanActivityKind Substance = CarePlanActivityKind._(
    value: 'Substance',
  );

  /// SubstanceDefinition
  static final CarePlanActivityKind SubstanceDefinition =
      CarePlanActivityKind._(
    value: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final CarePlanActivityKind SupplyDelivery = CarePlanActivityKind._(
    value: 'SupplyDelivery',
  );

  /// SupplyRequest
  static final CarePlanActivityKind SupplyRequest = CarePlanActivityKind._(
    value: 'SupplyRequest',
  );

  /// Task
  static final CarePlanActivityKind Task = CarePlanActivityKind._(
    value: 'Task',
  );

  /// TerminologyCapabilities
  static final CarePlanActivityKind TerminologyCapabilities =
      CarePlanActivityKind._(
    value: 'TerminologyCapabilities',
  );

  /// TestReport
  static final CarePlanActivityKind TestReport = CarePlanActivityKind._(
    value: 'TestReport',
  );

  /// TestScript
  static final CarePlanActivityKind TestScript = CarePlanActivityKind._(
    value: 'TestScript',
  );

  /// ValueSet
  static final CarePlanActivityKind ValueSet = CarePlanActivityKind._(
    value: 'ValueSet',
  );

  /// VerificationResult
  static final CarePlanActivityKind VerificationResult = CarePlanActivityKind._(
    value: 'VerificationResult',
  );

  /// VisionPrescription
  static final CarePlanActivityKind VisionPrescription = CarePlanActivityKind._(
    value: 'VisionPrescription',
  );

  /// Parameters
  static final CarePlanActivityKind Parameters = CarePlanActivityKind._(
    value: 'Parameters',
  );

  /// For instances where an Element is present but not value

  static final CarePlanActivityKind elementOnly =
      CarePlanActivityKind._(value: '');

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

  /// Clones the current instance
  @override
  CarePlanActivityKind clone() => CarePlanActivityKind._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityKind withElement(Element? newElement) {
    return CarePlanActivityKind._(value: value, element: newElement);
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
  CarePlanActivityKind copyWith({
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
    return CarePlanActivityKind._(
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
