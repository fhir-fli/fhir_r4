// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the FHIR resource types, along with some other important content class codes
class ConsentContentClass extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentContentClass._(super.value, [super.element]);

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
    return ConsentContentClass._(value, element);
  }

  /// Resource
  static final ConsentContentClass Resource = ConsentContentClass._(
    'Resource',
  );

  /// Binary
  static final ConsentContentClass Binary = ConsentContentClass._(
    'Binary',
  );

  /// Bundle
  static final ConsentContentClass Bundle = ConsentContentClass._(
    'Bundle',
  );

  /// DomainResource
  static final ConsentContentClass DomainResource = ConsentContentClass._(
    'DomainResource',
  );

  /// Account
  static final ConsentContentClass Account = ConsentContentClass._(
    'Account',
  );

  /// ActivityDefinition
  static final ConsentContentClass ActivityDefinition = ConsentContentClass._(
    'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final ConsentContentClass AdministrableProductDefinition =
      ConsentContentClass._(
    'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final ConsentContentClass AdverseEvent = ConsentContentClass._(
    'AdverseEvent',
  );

  /// AllergyIntolerance
  static final ConsentContentClass AllergyIntolerance = ConsentContentClass._(
    'AllergyIntolerance',
  );

  /// Appointment
  static final ConsentContentClass Appointment = ConsentContentClass._(
    'Appointment',
  );

  /// AppointmentResponse
  static final ConsentContentClass AppointmentResponse = ConsentContentClass._(
    'AppointmentResponse',
  );

  /// AuditEvent
  static final ConsentContentClass AuditEvent = ConsentContentClass._(
    'AuditEvent',
  );

  /// Basic
  static final ConsentContentClass Basic = ConsentContentClass._(
    'Basic',
  );

  /// BiologicallyDerivedProduct
  static final ConsentContentClass BiologicallyDerivedProduct =
      ConsentContentClass._(
    'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final ConsentContentClass BodyStructure = ConsentContentClass._(
    'BodyStructure',
  );

  /// CapabilityStatement
  static final ConsentContentClass CapabilityStatement = ConsentContentClass._(
    'CapabilityStatement',
  );

  /// CarePlan
  static final ConsentContentClass CarePlan = ConsentContentClass._(
    'CarePlan',
  );

  /// CareTeam
  static final ConsentContentClass CareTeam = ConsentContentClass._(
    'CareTeam',
  );

  /// CatalogEntry
  static final ConsentContentClass CatalogEntry = ConsentContentClass._(
    'CatalogEntry',
  );

  /// ChargeItem
  static final ConsentContentClass ChargeItem = ConsentContentClass._(
    'ChargeItem',
  );

  /// ChargeItemDefinition
  static final ConsentContentClass ChargeItemDefinition = ConsentContentClass._(
    'ChargeItemDefinition',
  );

  /// Citation
  static final ConsentContentClass Citation = ConsentContentClass._(
    'Citation',
  );

  /// Claim
  static final ConsentContentClass Claim = ConsentContentClass._(
    'Claim',
  );

  /// ClaimResponse
  static final ConsentContentClass ClaimResponse = ConsentContentClass._(
    'ClaimResponse',
  );

  /// ClinicalImpression
  static final ConsentContentClass ClinicalImpression = ConsentContentClass._(
    'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final ConsentContentClass ClinicalUseDefinition =
      ConsentContentClass._(
    'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final ConsentContentClass CodeSystem = ConsentContentClass._(
    'CodeSystem',
  );

  /// Communication
  static final ConsentContentClass Communication = ConsentContentClass._(
    'Communication',
  );

  /// CommunicationRequest
  static final ConsentContentClass CommunicationRequest = ConsentContentClass._(
    'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final ConsentContentClass CompartmentDefinition =
      ConsentContentClass._(
    'CompartmentDefinition',
  );

  /// Composition
  static final ConsentContentClass Composition = ConsentContentClass._(
    'Composition',
  );

  /// ConceptMap
  static final ConsentContentClass ConceptMap = ConsentContentClass._(
    'ConceptMap',
  );

  /// Condition
  static final ConsentContentClass Condition = ConsentContentClass._(
    'Condition',
  );

  /// Consent
  static final ConsentContentClass Consent = ConsentContentClass._(
    'Consent',
  );

  /// Contract
  static final ConsentContentClass Contract = ConsentContentClass._(
    'Contract',
  );

  /// Coverage
  static final ConsentContentClass Coverage = ConsentContentClass._(
    'Coverage',
  );

  /// CoverageEligibilityRequest
  static final ConsentContentClass CoverageEligibilityRequest =
      ConsentContentClass._(
    'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final ConsentContentClass CoverageEligibilityResponse =
      ConsentContentClass._(
    'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final ConsentContentClass DetectedIssue = ConsentContentClass._(
    'DetectedIssue',
  );

  /// Device
  static final ConsentContentClass Device = ConsentContentClass._(
    'Device',
  );

  /// DeviceDefinition
  static final ConsentContentClass DeviceDefinition = ConsentContentClass._(
    'DeviceDefinition',
  );

  /// DeviceMetric
  static final ConsentContentClass DeviceMetric = ConsentContentClass._(
    'DeviceMetric',
  );

  /// DeviceRequest
  static final ConsentContentClass DeviceRequest = ConsentContentClass._(
    'DeviceRequest',
  );

  /// DeviceUseStatement
  static final ConsentContentClass DeviceUseStatement = ConsentContentClass._(
    'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final ConsentContentClass DiagnosticReport = ConsentContentClass._(
    'DiagnosticReport',
  );

  /// DocumentManifest
  static final ConsentContentClass DocumentManifest = ConsentContentClass._(
    'DocumentManifest',
  );

  /// DocumentReference
  static final ConsentContentClass DocumentReference = ConsentContentClass._(
    'DocumentReference',
  );

  /// Encounter
  static final ConsentContentClass Encounter = ConsentContentClass._(
    'Encounter',
  );

  /// Endpoint
  static final ConsentContentClass Endpoint = ConsentContentClass._(
    'Endpoint',
  );

  /// EnrollmentRequest
  static final ConsentContentClass EnrollmentRequest = ConsentContentClass._(
    'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final ConsentContentClass EnrollmentResponse = ConsentContentClass._(
    'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final ConsentContentClass EpisodeOfCare = ConsentContentClass._(
    'EpisodeOfCare',
  );

  /// EventDefinition
  static final ConsentContentClass EventDefinition = ConsentContentClass._(
    'EventDefinition',
  );

  /// Evidence
  static final ConsentContentClass Evidence = ConsentContentClass._(
    'Evidence',
  );

  /// EvidenceReport
  static final ConsentContentClass EvidenceReport = ConsentContentClass._(
    'EvidenceReport',
  );

  /// EvidenceVariable
  static final ConsentContentClass EvidenceVariable = ConsentContentClass._(
    'EvidenceVariable',
  );

  /// ExampleScenario
  static final ConsentContentClass ExampleScenario = ConsentContentClass._(
    'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final ConsentContentClass ExplanationOfBenefit = ConsentContentClass._(
    'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final ConsentContentClass FamilyMemberHistory = ConsentContentClass._(
    'FamilyMemberHistory',
  );

  /// Flag
  static final ConsentContentClass Flag = ConsentContentClass._(
    'Flag',
  );

  /// Goal
  static final ConsentContentClass Goal = ConsentContentClass._(
    'Goal',
  );

  /// GraphDefinition
  static final ConsentContentClass GraphDefinition = ConsentContentClass._(
    'GraphDefinition',
  );

  /// Group
  static final ConsentContentClass Group = ConsentContentClass._(
    'Group',
  );

  /// GuidanceResponse
  static final ConsentContentClass GuidanceResponse = ConsentContentClass._(
    'GuidanceResponse',
  );

  /// HealthcareService
  static final ConsentContentClass HealthcareService = ConsentContentClass._(
    'HealthcareService',
  );

  /// ImagingStudy
  static final ConsentContentClass ImagingStudy = ConsentContentClass._(
    'ImagingStudy',
  );

  /// Immunization
  static final ConsentContentClass Immunization = ConsentContentClass._(
    'Immunization',
  );

  /// ImmunizationEvaluation
  static final ConsentContentClass ImmunizationEvaluation =
      ConsentContentClass._(
    'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final ConsentContentClass ImmunizationRecommendation =
      ConsentContentClass._(
    'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final ConsentContentClass ImplementationGuide = ConsentContentClass._(
    'ImplementationGuide',
  );

  /// Ingredient
  static final ConsentContentClass Ingredient = ConsentContentClass._(
    'Ingredient',
  );

  /// InsurancePlan
  static final ConsentContentClass InsurancePlan = ConsentContentClass._(
    'InsurancePlan',
  );

  /// Invoice
  static final ConsentContentClass Invoice = ConsentContentClass._(
    'Invoice',
  );

  /// Library
  static final ConsentContentClass Library = ConsentContentClass._(
    'Library',
  );

  /// Linkage
  static final ConsentContentClass Linkage = ConsentContentClass._(
    'Linkage',
  );

  /// List_
  static final ConsentContentClass List_ = ConsentContentClass._(
    'List',
  );

  /// Location
  static final ConsentContentClass Location = ConsentContentClass._(
    'Location',
  );

  /// ManufacturedItemDefinition
  static final ConsentContentClass ManufacturedItemDefinition =
      ConsentContentClass._(
    'ManufacturedItemDefinition',
  );

  /// Measure
  static final ConsentContentClass Measure = ConsentContentClass._(
    'Measure',
  );

  /// MeasureReport
  static final ConsentContentClass MeasureReport = ConsentContentClass._(
    'MeasureReport',
  );

  /// Media
  static final ConsentContentClass Media = ConsentContentClass._(
    'Media',
  );

  /// Medication
  static final ConsentContentClass Medication = ConsentContentClass._(
    'Medication',
  );

  /// MedicationAdministration
  static final ConsentContentClass MedicationAdministration =
      ConsentContentClass._(
    'MedicationAdministration',
  );

  /// MedicationDispense
  static final ConsentContentClass MedicationDispense = ConsentContentClass._(
    'MedicationDispense',
  );

  /// MedicationKnowledge
  static final ConsentContentClass MedicationKnowledge = ConsentContentClass._(
    'MedicationKnowledge',
  );

  /// MedicationRequest
  static final ConsentContentClass MedicationRequest = ConsentContentClass._(
    'MedicationRequest',
  );

  /// MedicationStatement
  static final ConsentContentClass MedicationStatement = ConsentContentClass._(
    'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final ConsentContentClass MedicinalProductDefinition =
      ConsentContentClass._(
    'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final ConsentContentClass MessageDefinition = ConsentContentClass._(
    'MessageDefinition',
  );

  /// MessageHeader
  static final ConsentContentClass MessageHeader = ConsentContentClass._(
    'MessageHeader',
  );

  /// MolecularSequence
  static final ConsentContentClass MolecularSequence = ConsentContentClass._(
    'MolecularSequence',
  );

  /// NamingSystem
  static final ConsentContentClass NamingSystem = ConsentContentClass._(
    'NamingSystem',
  );

  /// NutritionOrder
  static final ConsentContentClass NutritionOrder = ConsentContentClass._(
    'NutritionOrder',
  );

  /// NutritionProduct
  static final ConsentContentClass NutritionProduct = ConsentContentClass._(
    'NutritionProduct',
  );

  /// Observation
  static final ConsentContentClass Observation = ConsentContentClass._(
    'Observation',
  );

  /// ObservationDefinition
  static final ConsentContentClass ObservationDefinition =
      ConsentContentClass._(
    'ObservationDefinition',
  );

  /// OperationDefinition
  static final ConsentContentClass OperationDefinition = ConsentContentClass._(
    'OperationDefinition',
  );

  /// OperationOutcome
  static final ConsentContentClass OperationOutcome = ConsentContentClass._(
    'OperationOutcome',
  );

  /// Organization
  static final ConsentContentClass Organization = ConsentContentClass._(
    'Organization',
  );

  /// OrganizationAffiliation
  static final ConsentContentClass OrganizationAffiliation =
      ConsentContentClass._(
    'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final ConsentContentClass PackagedProductDefinition =
      ConsentContentClass._(
    'PackagedProductDefinition',
  );

  /// Patient
  static final ConsentContentClass Patient = ConsentContentClass._(
    'Patient',
  );

  /// PaymentNotice
  static final ConsentContentClass PaymentNotice = ConsentContentClass._(
    'PaymentNotice',
  );

  /// PaymentReconciliation
  static final ConsentContentClass PaymentReconciliation =
      ConsentContentClass._(
    'PaymentReconciliation',
  );

  /// Person
  static final ConsentContentClass Person = ConsentContentClass._(
    'Person',
  );

  /// PlanDefinition
  static final ConsentContentClass PlanDefinition = ConsentContentClass._(
    'PlanDefinition',
  );

  /// Practitioner
  static final ConsentContentClass Practitioner = ConsentContentClass._(
    'Practitioner',
  );

  /// PractitionerRole
  static final ConsentContentClass PractitionerRole = ConsentContentClass._(
    'PractitionerRole',
  );

  /// Procedure
  static final ConsentContentClass Procedure = ConsentContentClass._(
    'Procedure',
  );

  /// Provenance
  static final ConsentContentClass Provenance = ConsentContentClass._(
    'Provenance',
  );

  /// Questionnaire
  static final ConsentContentClass Questionnaire = ConsentContentClass._(
    'Questionnaire',
  );

  /// QuestionnaireResponse
  static final ConsentContentClass QuestionnaireResponse =
      ConsentContentClass._(
    'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final ConsentContentClass RegulatedAuthorization =
      ConsentContentClass._(
    'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final ConsentContentClass RelatedPerson = ConsentContentClass._(
    'RelatedPerson',
  );

  /// RequestGroup
  static final ConsentContentClass RequestGroup = ConsentContentClass._(
    'RequestGroup',
  );

  /// ResearchDefinition
  static final ConsentContentClass ResearchDefinition = ConsentContentClass._(
    'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final ConsentContentClass ResearchElementDefinition =
      ConsentContentClass._(
    'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final ConsentContentClass ResearchStudy = ConsentContentClass._(
    'ResearchStudy',
  );

  /// ResearchSubject
  static final ConsentContentClass ResearchSubject = ConsentContentClass._(
    'ResearchSubject',
  );

  /// RiskAssessment
  static final ConsentContentClass RiskAssessment = ConsentContentClass._(
    'RiskAssessment',
  );

  /// Schedule
  static final ConsentContentClass Schedule = ConsentContentClass._(
    'Schedule',
  );

  /// SearchParameter
  static final ConsentContentClass SearchParameter = ConsentContentClass._(
    'SearchParameter',
  );

  /// ServiceRequest
  static final ConsentContentClass ServiceRequest = ConsentContentClass._(
    'ServiceRequest',
  );

  /// Slot
  static final ConsentContentClass Slot = ConsentContentClass._(
    'Slot',
  );

  /// Specimen
  static final ConsentContentClass Specimen = ConsentContentClass._(
    'Specimen',
  );

  /// SpecimenDefinition
  static final ConsentContentClass SpecimenDefinition = ConsentContentClass._(
    'SpecimenDefinition',
  );

  /// StructureDefinition
  static final ConsentContentClass StructureDefinition = ConsentContentClass._(
    'StructureDefinition',
  );

  /// StructureMap
  static final ConsentContentClass StructureMap = ConsentContentClass._(
    'StructureMap',
  );

  /// Subscription
  static final ConsentContentClass Subscription = ConsentContentClass._(
    'Subscription',
  );

  /// SubscriptionStatus
  static final ConsentContentClass SubscriptionStatus = ConsentContentClass._(
    'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final ConsentContentClass SubscriptionTopic = ConsentContentClass._(
    'SubscriptionTopic',
  );

  /// Substance
  static final ConsentContentClass Substance = ConsentContentClass._(
    'Substance',
  );

  /// SubstanceDefinition
  static final ConsentContentClass SubstanceDefinition = ConsentContentClass._(
    'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final ConsentContentClass SupplyDelivery = ConsentContentClass._(
    'SupplyDelivery',
  );

  /// SupplyRequest
  static final ConsentContentClass SupplyRequest = ConsentContentClass._(
    'SupplyRequest',
  );

  /// Task
  static final ConsentContentClass Task = ConsentContentClass._(
    'Task',
  );

  /// TerminologyCapabilities
  static final ConsentContentClass TerminologyCapabilities =
      ConsentContentClass._(
    'TerminologyCapabilities',
  );

  /// TestReport
  static final ConsentContentClass TestReport = ConsentContentClass._(
    'TestReport',
  );

  /// TestScript
  static final ConsentContentClass TestScript = ConsentContentClass._(
    'TestScript',
  );

  /// ValueSet
  static final ConsentContentClass ValueSet = ConsentContentClass._(
    'ValueSet',
  );

  /// VerificationResult
  static final ConsentContentClass VerificationResult = ConsentContentClass._(
    'VerificationResult',
  );

  /// VisionPrescription
  static final ConsentContentClass VisionPrescription = ConsentContentClass._(
    'VisionPrescription',
  );

  /// Parameters
  static final ConsentContentClass Parameters = ConsentContentClass._(
    'Parameters',
  );

  /// http___hl7_org_fhir_StructureDefinition_lipidprofile
  static final ConsentContentClass
      http___hl7_org_fhir_StructureDefinition_lipidprofile =
      ConsentContentClass._(
    'http://hl7.org/fhir/StructureDefinition/lipidprofile',
  );

  /// application_hl7_cda_xml
  static final ConsentContentClass application_hl7_cda_xml =
      ConsentContentClass._(
    'application/hl7-cda+xml',
  );

  /// For instances where an Element is present but not value

  static final ConsentContentClass elementOnly = ConsentContentClass._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ConsentContentClass setElement(
    String name,
    dynamic elementValue,
  ) {
    return ConsentContentClass._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ConsentContentClass withElement(Element? newElement) {
    return ConsentContentClass._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ConsentContentClass._(
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
