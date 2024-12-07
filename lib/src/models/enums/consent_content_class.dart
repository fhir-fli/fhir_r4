// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the FHIR resource types, along with some other important content class codes
class ConsentContentClass extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentContentClass._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConsentContentClass] from JSON.
  factory ConsentContentClass.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentContentClass.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentContentClass cannot be constructed from JSON.',
      );
    }
    return ConsentContentClass._(value: value, element: element);
  }

  /// Resource
  static final ConsentContentClass Resource = ConsentContentClass._(
    value: 'Resource',
  );

  /// Binary
  static final ConsentContentClass Binary = ConsentContentClass._(
    value: 'Binary',
  );

  /// Bundle
  static final ConsentContentClass Bundle = ConsentContentClass._(
    value: 'Bundle',
  );

  /// DomainResource
  static final ConsentContentClass DomainResource = ConsentContentClass._(
    value: 'DomainResource',
  );

  /// Account
  static final ConsentContentClass Account = ConsentContentClass._(
    value: 'Account',
  );

  /// ActivityDefinition
  static final ConsentContentClass ActivityDefinition = ConsentContentClass._(
    value: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final ConsentContentClass AdministrableProductDefinition =
      ConsentContentClass._(
    value: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final ConsentContentClass AdverseEvent = ConsentContentClass._(
    value: 'AdverseEvent',
  );

  /// AllergyIntolerance
  static final ConsentContentClass AllergyIntolerance = ConsentContentClass._(
    value: 'AllergyIntolerance',
  );

  /// Appointment
  static final ConsentContentClass Appointment = ConsentContentClass._(
    value: 'Appointment',
  );

  /// AppointmentResponse
  static final ConsentContentClass AppointmentResponse = ConsentContentClass._(
    value: 'AppointmentResponse',
  );

  /// AuditEvent
  static final ConsentContentClass AuditEvent = ConsentContentClass._(
    value: 'AuditEvent',
  );

  /// Basic
  static final ConsentContentClass Basic = ConsentContentClass._(
    value: 'Basic',
  );

  /// BiologicallyDerivedProduct
  static final ConsentContentClass BiologicallyDerivedProduct =
      ConsentContentClass._(
    value: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final ConsentContentClass BodyStructure = ConsentContentClass._(
    value: 'BodyStructure',
  );

  /// CapabilityStatement
  static final ConsentContentClass CapabilityStatement = ConsentContentClass._(
    value: 'CapabilityStatement',
  );

  /// CarePlan
  static final ConsentContentClass CarePlan = ConsentContentClass._(
    value: 'CarePlan',
  );

  /// CareTeam
  static final ConsentContentClass CareTeam = ConsentContentClass._(
    value: 'CareTeam',
  );

  /// CatalogEntry
  static final ConsentContentClass CatalogEntry = ConsentContentClass._(
    value: 'CatalogEntry',
  );

  /// ChargeItem
  static final ConsentContentClass ChargeItem = ConsentContentClass._(
    value: 'ChargeItem',
  );

  /// ChargeItemDefinition
  static final ConsentContentClass ChargeItemDefinition = ConsentContentClass._(
    value: 'ChargeItemDefinition',
  );

  /// Citation
  static final ConsentContentClass Citation = ConsentContentClass._(
    value: 'Citation',
  );

  /// Claim
  static final ConsentContentClass Claim = ConsentContentClass._(
    value: 'Claim',
  );

  /// ClaimResponse
  static final ConsentContentClass ClaimResponse = ConsentContentClass._(
    value: 'ClaimResponse',
  );

  /// ClinicalImpression
  static final ConsentContentClass ClinicalImpression = ConsentContentClass._(
    value: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final ConsentContentClass ClinicalUseDefinition =
      ConsentContentClass._(
    value: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final ConsentContentClass CodeSystem = ConsentContentClass._(
    value: 'CodeSystem',
  );

  /// Communication
  static final ConsentContentClass Communication = ConsentContentClass._(
    value: 'Communication',
  );

  /// CommunicationRequest
  static final ConsentContentClass CommunicationRequest = ConsentContentClass._(
    value: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final ConsentContentClass CompartmentDefinition =
      ConsentContentClass._(
    value: 'CompartmentDefinition',
  );

  /// Composition
  static final ConsentContentClass Composition = ConsentContentClass._(
    value: 'Composition',
  );

  /// ConceptMap
  static final ConsentContentClass ConceptMap = ConsentContentClass._(
    value: 'ConceptMap',
  );

  /// Condition
  static final ConsentContentClass Condition = ConsentContentClass._(
    value: 'Condition',
  );

  /// Consent
  static final ConsentContentClass Consent = ConsentContentClass._(
    value: 'Consent',
  );

  /// Contract
  static final ConsentContentClass Contract = ConsentContentClass._(
    value: 'Contract',
  );

  /// Coverage
  static final ConsentContentClass Coverage = ConsentContentClass._(
    value: 'Coverage',
  );

  /// CoverageEligibilityRequest
  static final ConsentContentClass CoverageEligibilityRequest =
      ConsentContentClass._(
    value: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final ConsentContentClass CoverageEligibilityResponse =
      ConsentContentClass._(
    value: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final ConsentContentClass DetectedIssue = ConsentContentClass._(
    value: 'DetectedIssue',
  );

  /// Device
  static final ConsentContentClass Device = ConsentContentClass._(
    value: 'Device',
  );

  /// DeviceDefinition
  static final ConsentContentClass DeviceDefinition = ConsentContentClass._(
    value: 'DeviceDefinition',
  );

  /// DeviceMetric
  static final ConsentContentClass DeviceMetric = ConsentContentClass._(
    value: 'DeviceMetric',
  );

  /// DeviceRequest
  static final ConsentContentClass DeviceRequest = ConsentContentClass._(
    value: 'DeviceRequest',
  );

  /// DeviceUseStatement
  static final ConsentContentClass DeviceUseStatement = ConsentContentClass._(
    value: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final ConsentContentClass DiagnosticReport = ConsentContentClass._(
    value: 'DiagnosticReport',
  );

  /// DocumentManifest
  static final ConsentContentClass DocumentManifest = ConsentContentClass._(
    value: 'DocumentManifest',
  );

  /// DocumentReference
  static final ConsentContentClass DocumentReference = ConsentContentClass._(
    value: 'DocumentReference',
  );

  /// Encounter
  static final ConsentContentClass Encounter = ConsentContentClass._(
    value: 'Encounter',
  );

  /// Endpoint
  static final ConsentContentClass Endpoint = ConsentContentClass._(
    value: 'Endpoint',
  );

  /// EnrollmentRequest
  static final ConsentContentClass EnrollmentRequest = ConsentContentClass._(
    value: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final ConsentContentClass EnrollmentResponse = ConsentContentClass._(
    value: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final ConsentContentClass EpisodeOfCare = ConsentContentClass._(
    value: 'EpisodeOfCare',
  );

  /// EventDefinition
  static final ConsentContentClass EventDefinition = ConsentContentClass._(
    value: 'EventDefinition',
  );

  /// Evidence
  static final ConsentContentClass Evidence = ConsentContentClass._(
    value: 'Evidence',
  );

  /// EvidenceReport
  static final ConsentContentClass EvidenceReport = ConsentContentClass._(
    value: 'EvidenceReport',
  );

  /// EvidenceVariable
  static final ConsentContentClass EvidenceVariable = ConsentContentClass._(
    value: 'EvidenceVariable',
  );

  /// ExampleScenario
  static final ConsentContentClass ExampleScenario = ConsentContentClass._(
    value: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final ConsentContentClass ExplanationOfBenefit = ConsentContentClass._(
    value: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final ConsentContentClass FamilyMemberHistory = ConsentContentClass._(
    value: 'FamilyMemberHistory',
  );

  /// Flag
  static final ConsentContentClass Flag = ConsentContentClass._(
    value: 'Flag',
  );

  /// Goal
  static final ConsentContentClass Goal = ConsentContentClass._(
    value: 'Goal',
  );

  /// GraphDefinition
  static final ConsentContentClass GraphDefinition = ConsentContentClass._(
    value: 'GraphDefinition',
  );

  /// Group
  static final ConsentContentClass Group = ConsentContentClass._(
    value: 'Group',
  );

  /// GuidanceResponse
  static final ConsentContentClass GuidanceResponse = ConsentContentClass._(
    value: 'GuidanceResponse',
  );

  /// HealthcareService
  static final ConsentContentClass HealthcareService = ConsentContentClass._(
    value: 'HealthcareService',
  );

  /// ImagingStudy
  static final ConsentContentClass ImagingStudy = ConsentContentClass._(
    value: 'ImagingStudy',
  );

  /// Immunization
  static final ConsentContentClass Immunization = ConsentContentClass._(
    value: 'Immunization',
  );

  /// ImmunizationEvaluation
  static final ConsentContentClass ImmunizationEvaluation =
      ConsentContentClass._(
    value: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final ConsentContentClass ImmunizationRecommendation =
      ConsentContentClass._(
    value: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final ConsentContentClass ImplementationGuide = ConsentContentClass._(
    value: 'ImplementationGuide',
  );

  /// Ingredient
  static final ConsentContentClass Ingredient = ConsentContentClass._(
    value: 'Ingredient',
  );

  /// InsurancePlan
  static final ConsentContentClass InsurancePlan = ConsentContentClass._(
    value: 'InsurancePlan',
  );

  /// Invoice
  static final ConsentContentClass Invoice = ConsentContentClass._(
    value: 'Invoice',
  );

  /// Library
  static final ConsentContentClass Library = ConsentContentClass._(
    value: 'Library',
  );

  /// Linkage
  static final ConsentContentClass Linkage = ConsentContentClass._(
    value: 'Linkage',
  );

  /// List_
  static final ConsentContentClass List_ = ConsentContentClass._(
    value: 'List',
  );

  /// Location
  static final ConsentContentClass Location = ConsentContentClass._(
    value: 'Location',
  );

  /// ManufacturedItemDefinition
  static final ConsentContentClass ManufacturedItemDefinition =
      ConsentContentClass._(
    value: 'ManufacturedItemDefinition',
  );

  /// Measure
  static final ConsentContentClass Measure = ConsentContentClass._(
    value: 'Measure',
  );

  /// MeasureReport
  static final ConsentContentClass MeasureReport = ConsentContentClass._(
    value: 'MeasureReport',
  );

  /// Media
  static final ConsentContentClass Media = ConsentContentClass._(
    value: 'Media',
  );

  /// Medication
  static final ConsentContentClass Medication = ConsentContentClass._(
    value: 'Medication',
  );

  /// MedicationAdministration
  static final ConsentContentClass MedicationAdministration =
      ConsentContentClass._(
    value: 'MedicationAdministration',
  );

  /// MedicationDispense
  static final ConsentContentClass MedicationDispense = ConsentContentClass._(
    value: 'MedicationDispense',
  );

  /// MedicationKnowledge
  static final ConsentContentClass MedicationKnowledge = ConsentContentClass._(
    value: 'MedicationKnowledge',
  );

  /// MedicationRequest
  static final ConsentContentClass MedicationRequest = ConsentContentClass._(
    value: 'MedicationRequest',
  );

  /// MedicationStatement
  static final ConsentContentClass MedicationStatement = ConsentContentClass._(
    value: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final ConsentContentClass MedicinalProductDefinition =
      ConsentContentClass._(
    value: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final ConsentContentClass MessageDefinition = ConsentContentClass._(
    value: 'MessageDefinition',
  );

  /// MessageHeader
  static final ConsentContentClass MessageHeader = ConsentContentClass._(
    value: 'MessageHeader',
  );

  /// MolecularSequence
  static final ConsentContentClass MolecularSequence = ConsentContentClass._(
    value: 'MolecularSequence',
  );

  /// NamingSystem
  static final ConsentContentClass NamingSystem = ConsentContentClass._(
    value: 'NamingSystem',
  );

  /// NutritionOrder
  static final ConsentContentClass NutritionOrder = ConsentContentClass._(
    value: 'NutritionOrder',
  );

  /// NutritionProduct
  static final ConsentContentClass NutritionProduct = ConsentContentClass._(
    value: 'NutritionProduct',
  );

  /// Observation
  static final ConsentContentClass Observation = ConsentContentClass._(
    value: 'Observation',
  );

  /// ObservationDefinition
  static final ConsentContentClass ObservationDefinition =
      ConsentContentClass._(
    value: 'ObservationDefinition',
  );

  /// OperationDefinition
  static final ConsentContentClass OperationDefinition = ConsentContentClass._(
    value: 'OperationDefinition',
  );

  /// OperationOutcome
  static final ConsentContentClass OperationOutcome = ConsentContentClass._(
    value: 'OperationOutcome',
  );

  /// Organization
  static final ConsentContentClass Organization = ConsentContentClass._(
    value: 'Organization',
  );

  /// OrganizationAffiliation
  static final ConsentContentClass OrganizationAffiliation =
      ConsentContentClass._(
    value: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final ConsentContentClass PackagedProductDefinition =
      ConsentContentClass._(
    value: 'PackagedProductDefinition',
  );

  /// Patient
  static final ConsentContentClass Patient = ConsentContentClass._(
    value: 'Patient',
  );

  /// PaymentNotice
  static final ConsentContentClass PaymentNotice = ConsentContentClass._(
    value: 'PaymentNotice',
  );

  /// PaymentReconciliation
  static final ConsentContentClass PaymentReconciliation =
      ConsentContentClass._(
    value: 'PaymentReconciliation',
  );

  /// Person
  static final ConsentContentClass Person = ConsentContentClass._(
    value: 'Person',
  );

  /// PlanDefinition
  static final ConsentContentClass PlanDefinition = ConsentContentClass._(
    value: 'PlanDefinition',
  );

  /// Practitioner
  static final ConsentContentClass Practitioner = ConsentContentClass._(
    value: 'Practitioner',
  );

  /// PractitionerRole
  static final ConsentContentClass PractitionerRole = ConsentContentClass._(
    value: 'PractitionerRole',
  );

  /// Procedure
  static final ConsentContentClass Procedure = ConsentContentClass._(
    value: 'Procedure',
  );

  /// Provenance
  static final ConsentContentClass Provenance = ConsentContentClass._(
    value: 'Provenance',
  );

  /// Questionnaire
  static final ConsentContentClass Questionnaire = ConsentContentClass._(
    value: 'Questionnaire',
  );

  /// QuestionnaireResponse
  static final ConsentContentClass QuestionnaireResponse =
      ConsentContentClass._(
    value: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final ConsentContentClass RegulatedAuthorization =
      ConsentContentClass._(
    value: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final ConsentContentClass RelatedPerson = ConsentContentClass._(
    value: 'RelatedPerson',
  );

  /// RequestGroup
  static final ConsentContentClass RequestGroup = ConsentContentClass._(
    value: 'RequestGroup',
  );

  /// ResearchDefinition
  static final ConsentContentClass ResearchDefinition = ConsentContentClass._(
    value: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final ConsentContentClass ResearchElementDefinition =
      ConsentContentClass._(
    value: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final ConsentContentClass ResearchStudy = ConsentContentClass._(
    value: 'ResearchStudy',
  );

  /// ResearchSubject
  static final ConsentContentClass ResearchSubject = ConsentContentClass._(
    value: 'ResearchSubject',
  );

  /// RiskAssessment
  static final ConsentContentClass RiskAssessment = ConsentContentClass._(
    value: 'RiskAssessment',
  );

  /// Schedule
  static final ConsentContentClass Schedule = ConsentContentClass._(
    value: 'Schedule',
  );

  /// SearchParameter
  static final ConsentContentClass SearchParameter = ConsentContentClass._(
    value: 'SearchParameter',
  );

  /// ServiceRequest
  static final ConsentContentClass ServiceRequest = ConsentContentClass._(
    value: 'ServiceRequest',
  );

  /// Slot
  static final ConsentContentClass Slot = ConsentContentClass._(
    value: 'Slot',
  );

  /// Specimen
  static final ConsentContentClass Specimen = ConsentContentClass._(
    value: 'Specimen',
  );

  /// SpecimenDefinition
  static final ConsentContentClass SpecimenDefinition = ConsentContentClass._(
    value: 'SpecimenDefinition',
  );

  /// StructureDefinition
  static final ConsentContentClass StructureDefinition = ConsentContentClass._(
    value: 'StructureDefinition',
  );

  /// StructureMap
  static final ConsentContentClass StructureMap = ConsentContentClass._(
    value: 'StructureMap',
  );

  /// Subscription
  static final ConsentContentClass Subscription = ConsentContentClass._(
    value: 'Subscription',
  );

  /// SubscriptionStatus
  static final ConsentContentClass SubscriptionStatus = ConsentContentClass._(
    value: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final ConsentContentClass SubscriptionTopic = ConsentContentClass._(
    value: 'SubscriptionTopic',
  );

  /// Substance
  static final ConsentContentClass Substance = ConsentContentClass._(
    value: 'Substance',
  );

  /// SubstanceDefinition
  static final ConsentContentClass SubstanceDefinition = ConsentContentClass._(
    value: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final ConsentContentClass SupplyDelivery = ConsentContentClass._(
    value: 'SupplyDelivery',
  );

  /// SupplyRequest
  static final ConsentContentClass SupplyRequest = ConsentContentClass._(
    value: 'SupplyRequest',
  );

  /// Task
  static final ConsentContentClass Task = ConsentContentClass._(
    value: 'Task',
  );

  /// TerminologyCapabilities
  static final ConsentContentClass TerminologyCapabilities =
      ConsentContentClass._(
    value: 'TerminologyCapabilities',
  );

  /// TestReport
  static final ConsentContentClass TestReport = ConsentContentClass._(
    value: 'TestReport',
  );

  /// TestScript
  static final ConsentContentClass TestScript = ConsentContentClass._(
    value: 'TestScript',
  );

  /// ValueSet
  static final ConsentContentClass ValueSet = ConsentContentClass._(
    value: 'ValueSet',
  );

  /// VerificationResult
  static final ConsentContentClass VerificationResult = ConsentContentClass._(
    value: 'VerificationResult',
  );

  /// VisionPrescription
  static final ConsentContentClass VisionPrescription = ConsentContentClass._(
    value: 'VisionPrescription',
  );

  /// Parameters
  static final ConsentContentClass Parameters = ConsentContentClass._(
    value: 'Parameters',
  );

  /// http___hl7_org_fhir_StructureDefinition_lipidprofile
  static final ConsentContentClass
      http___hl7_org_fhir_StructureDefinition_lipidprofile =
      ConsentContentClass._(
    value: 'http://hl7.org/fhir/StructureDefinition/lipidprofile',
  );

  /// application_hl7_cda_xml
  static final ConsentContentClass application_hl7_cda_xml =
      ConsentContentClass._(
    value: 'application/hl7-cda+xml',
  );

  /// For instances where an Element is present but not value

  static final ConsentContentClass elementOnly =
      ConsentContentClass._(value: '');

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

  /// Clones the current instance
  @override
  ConsentContentClass clone() => ConsentContentClass._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConsentContentClass withElement(Element? newElement) {
    return ConsentContentClass._(value: value, element: newElement);
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
  ConsentContentClass copyWith({
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
    return ConsentContentClass._(
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
