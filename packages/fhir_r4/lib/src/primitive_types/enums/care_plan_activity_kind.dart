// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Resource types defined as part of FHIR that can be represented as
/// in-line definitions of a care plan activity.
class CarePlanActivityKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CarePlanActivityKind._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CarePlanActivityKind(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return CarePlanActivityKind._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [CarePlanActivityKind] with element only
  factory CarePlanActivityKind.empty() =>
      CarePlanActivityKind._(validatedValue: '');

  /// Factory constructor to create [CarePlanActivityKind] from JSON.
  factory CarePlanActivityKind.fromJson(Map<String, dynamic> json) {
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
    return CarePlanActivityKind._(validatedValue: value, element: element);
  }

  /// Resource
  static final CarePlanActivityKind Resource = CarePlanActivityKind._(
    validatedValue: 'Resource',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// Binary
  static final CarePlanActivityKind Binary = CarePlanActivityKind._(
    validatedValue: 'Binary',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Binary'.toFhirString,
  );

  /// Bundle
  static final CarePlanActivityKind Bundle = CarePlanActivityKind._(
    validatedValue: 'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bundle'.toFhirString,
  );

  /// DomainResource
  static final CarePlanActivityKind DomainResource = CarePlanActivityKind._(
    validatedValue: 'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DomainResource'.toFhirString,
  );

  /// Account
  static final CarePlanActivityKind Account = CarePlanActivityKind._(
    validatedValue: 'Account',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Account'.toFhirString,
  );

  /// ActivityDefinition
  static final CarePlanActivityKind ActivityDefinition = CarePlanActivityKind._(
    validatedValue: 'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ActivityDefinition'.toFhirString,
  );

  /// AdministrableProductDefinition
  static final CarePlanActivityKind AdministrableProductDefinition =
      CarePlanActivityKind._(
    validatedValue: 'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdministrableProductDefinition'.toFhirString,
  );

  /// AdverseEvent
  static final CarePlanActivityKind AdverseEvent = CarePlanActivityKind._(
    validatedValue: 'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdverseEvent'.toFhirString,
  );

  /// AllergyIntolerance
  static final CarePlanActivityKind AllergyIntolerance = CarePlanActivityKind._(
    validatedValue: 'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AllergyIntolerance'.toFhirString,
  );

  /// Appointment
  static final CarePlanActivityKind Appointment = CarePlanActivityKind._(
    validatedValue: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appointment'.toFhirString,
  );

  /// AppointmentResponse
  static final CarePlanActivityKind AppointmentResponse =
      CarePlanActivityKind._(
    validatedValue: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AppointmentResponse'.toFhirString,
  );

  /// AuditEvent
  static final CarePlanActivityKind AuditEvent = CarePlanActivityKind._(
    validatedValue: 'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AuditEvent'.toFhirString,
  );

  /// Basic
  static final CarePlanActivityKind Basic = CarePlanActivityKind._(
    validatedValue: 'Basic',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Basic'.toFhirString,
  );

  /// BiologicallyDerivedProduct
  static final CarePlanActivityKind BiologicallyDerivedProduct =
      CarePlanActivityKind._(
    validatedValue: 'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicallyDerivedProduct'.toFhirString,
  );

  /// BodyStructure
  static final CarePlanActivityKind BodyStructure = CarePlanActivityKind._(
    validatedValue: 'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BodyStructure'.toFhirString,
  );

  /// CapabilityStatement
  static final CarePlanActivityKind CapabilityStatement =
      CarePlanActivityKind._(
    validatedValue: 'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CapabilityStatement'.toFhirString,
  );

  /// CarePlan
  static final CarePlanActivityKind CarePlan = CarePlanActivityKind._(
    validatedValue: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CarePlan'.toFhirString,
  );

  /// CareTeam
  static final CarePlanActivityKind CareTeam = CarePlanActivityKind._(
    validatedValue: 'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CareTeam'.toFhirString,
  );

  /// CatalogEntry
  static final CarePlanActivityKind CatalogEntry = CarePlanActivityKind._(
    validatedValue: 'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CatalogEntry'.toFhirString,
  );

  /// ChargeItem
  static final CarePlanActivityKind ChargeItem = CarePlanActivityKind._(
    validatedValue: 'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItem'.toFhirString,
  );

  /// ChargeItemDefinition
  static final CarePlanActivityKind ChargeItemDefinition =
      CarePlanActivityKind._(
    validatedValue: 'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItemDefinition'.toFhirString,
  );

  /// Citation
  static final CarePlanActivityKind Citation = CarePlanActivityKind._(
    validatedValue: 'Citation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Citation'.toFhirString,
  );

  /// Claim
  static final CarePlanActivityKind Claim = CarePlanActivityKind._(
    validatedValue: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// ClaimResponse
  static final CarePlanActivityKind ClaimResponse = CarePlanActivityKind._(
    validatedValue: 'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClaimResponse'.toFhirString,
  );

  /// ClinicalImpression
  static final CarePlanActivityKind ClinicalImpression = CarePlanActivityKind._(
    validatedValue: 'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalImpression'.toFhirString,
  );

  /// ClinicalUseDefinition
  static final CarePlanActivityKind ClinicalUseDefinition =
      CarePlanActivityKind._(
    validatedValue: 'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalUseDefinition'.toFhirString,
  );

  /// CodeSystem
  static final CarePlanActivityKind CodeSystem = CarePlanActivityKind._(
    validatedValue: 'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeSystem'.toFhirString,
  );

  /// Communication
  static final CarePlanActivityKind Communication = CarePlanActivityKind._(
    validatedValue: 'Communication',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Communication'.toFhirString,
  );

  /// CommunicationRequest
  static final CarePlanActivityKind CommunicationRequest =
      CarePlanActivityKind._(
    validatedValue: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CommunicationRequest'.toFhirString,
  );

  /// CompartmentDefinition
  static final CarePlanActivityKind CompartmentDefinition =
      CarePlanActivityKind._(
    validatedValue: 'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CompartmentDefinition'.toFhirString,
  );

  /// Composition
  static final CarePlanActivityKind Composition = CarePlanActivityKind._(
    validatedValue: 'Composition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composition'.toFhirString,
  );

  /// ConceptMap
  static final CarePlanActivityKind ConceptMap = CarePlanActivityKind._(
    validatedValue: 'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ConceptMap'.toFhirString,
  );

  /// Condition
  static final CarePlanActivityKind Condition = CarePlanActivityKind._(
    validatedValue: 'Condition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Condition'.toFhirString,
  );

  /// Consent
  static final CarePlanActivityKind Consent = CarePlanActivityKind._(
    validatedValue: 'Consent',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Consent'.toFhirString,
  );

  /// Contract
  static final CarePlanActivityKind Contract = CarePlanActivityKind._(
    validatedValue: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contract'.toFhirString,
  );

  /// Coverage
  static final CarePlanActivityKind Coverage = CarePlanActivityKind._(
    validatedValue: 'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage'.toFhirString,
  );

  /// CoverageEligibilityRequest
  static final CarePlanActivityKind CoverageEligibilityRequest =
      CarePlanActivityKind._(
    validatedValue: 'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityRequest'.toFhirString,
  );

  /// CoverageEligibilityResponse
  static final CarePlanActivityKind CoverageEligibilityResponse =
      CarePlanActivityKind._(
    validatedValue: 'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityResponse'.toFhirString,
  );

  /// DetectedIssue
  static final CarePlanActivityKind DetectedIssue = CarePlanActivityKind._(
    validatedValue: 'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DetectedIssue'.toFhirString,
  );

  /// Device
  static final CarePlanActivityKind Device = CarePlanActivityKind._(
    validatedValue: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// DeviceDefinition
  static final CarePlanActivityKind DeviceDefinition = CarePlanActivityKind._(
    validatedValue: 'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceDefinition'.toFhirString,
  );

  /// DeviceMetric
  static final CarePlanActivityKind DeviceMetric = CarePlanActivityKind._(
    validatedValue: 'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceMetric'.toFhirString,
  );

  /// DeviceRequest
  static final CarePlanActivityKind DeviceRequest = CarePlanActivityKind._(
    validatedValue: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceRequest'.toFhirString,
  );

  /// DeviceUseStatement
  static final CarePlanActivityKind DeviceUseStatement = CarePlanActivityKind._(
    validatedValue: 'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceUseStatement'.toFhirString,
  );

  /// DiagnosticReport
  static final CarePlanActivityKind DiagnosticReport = CarePlanActivityKind._(
    validatedValue: 'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DiagnosticReport'.toFhirString,
  );

  /// DocumentManifest
  static final CarePlanActivityKind DocumentManifest = CarePlanActivityKind._(
    validatedValue: 'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentManifest'.toFhirString,
  );

  /// DocumentReference
  static final CarePlanActivityKind DocumentReference = CarePlanActivityKind._(
    validatedValue: 'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentReference'.toFhirString,
  );

  /// Encounter
  static final CarePlanActivityKind Encounter = CarePlanActivityKind._(
    validatedValue: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Encounter'.toFhirString,
  );

  /// Endpoint
  static final CarePlanActivityKind Endpoint = CarePlanActivityKind._(
    validatedValue: 'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Endpoint'.toFhirString,
  );

  /// EnrollmentRequest
  static final CarePlanActivityKind EnrollmentRequest = CarePlanActivityKind._(
    validatedValue: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentRequest'.toFhirString,
  );

  /// EnrollmentResponse
  static final CarePlanActivityKind EnrollmentResponse = CarePlanActivityKind._(
    validatedValue: 'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentResponse'.toFhirString,
  );

  /// EpisodeOfCare
  static final CarePlanActivityKind EpisodeOfCare = CarePlanActivityKind._(
    validatedValue: 'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EpisodeOfCare'.toFhirString,
  );

  /// EventDefinition
  static final CarePlanActivityKind EventDefinition = CarePlanActivityKind._(
    validatedValue: 'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EventDefinition'.toFhirString,
  );

  /// Evidence
  static final CarePlanActivityKind Evidence = CarePlanActivityKind._(
    validatedValue: 'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evidence'.toFhirString,
  );

  /// EvidenceReport
  static final CarePlanActivityKind EvidenceReport = CarePlanActivityKind._(
    validatedValue: 'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceReport'.toFhirString,
  );

  /// EvidenceVariable
  static final CarePlanActivityKind EvidenceVariable = CarePlanActivityKind._(
    validatedValue: 'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceVariable'.toFhirString,
  );

  /// ExampleScenario
  static final CarePlanActivityKind ExampleScenario = CarePlanActivityKind._(
    validatedValue: 'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExampleScenario'.toFhirString,
  );

  /// ExplanationOfBenefit
  static final CarePlanActivityKind ExplanationOfBenefit =
      CarePlanActivityKind._(
    validatedValue: 'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExplanationOfBenefit'.toFhirString,
  );

  /// FamilyMemberHistory
  static final CarePlanActivityKind FamilyMemberHistory =
      CarePlanActivityKind._(
    validatedValue: 'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FamilyMemberHistory'.toFhirString,
  );

  /// Flag
  static final CarePlanActivityKind Flag = CarePlanActivityKind._(
    validatedValue: 'Flag',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Flag'.toFhirString,
  );

  /// Goal
  static final CarePlanActivityKind Goal = CarePlanActivityKind._(
    validatedValue: 'Goal',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Goal'.toFhirString,
  );

  /// GraphDefinition
  static final CarePlanActivityKind GraphDefinition = CarePlanActivityKind._(
    validatedValue: 'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GraphDefinition'.toFhirString,
  );

  /// Group
  static final CarePlanActivityKind Group = CarePlanActivityKind._(
    validatedValue: 'Group',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Group'.toFhirString,
  );

  /// GuidanceResponse
  static final CarePlanActivityKind GuidanceResponse = CarePlanActivityKind._(
    validatedValue: 'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GuidanceResponse'.toFhirString,
  );

  /// HealthcareService
  static final CarePlanActivityKind HealthcareService = CarePlanActivityKind._(
    validatedValue: 'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HealthcareService'.toFhirString,
  );

  /// ImagingStudy
  static final CarePlanActivityKind ImagingStudy = CarePlanActivityKind._(
    validatedValue: 'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImagingStudy'.toFhirString,
  );

  /// Immunization
  static final CarePlanActivityKind Immunization = CarePlanActivityKind._(
    validatedValue: 'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Immunization'.toFhirString,
  );

  /// ImmunizationEvaluation
  static final CarePlanActivityKind ImmunizationEvaluation =
      CarePlanActivityKind._(
    validatedValue: 'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationEvaluation'.toFhirString,
  );

  /// ImmunizationRecommendation
  static final CarePlanActivityKind ImmunizationRecommendation =
      CarePlanActivityKind._(
    validatedValue: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationRecommendation'.toFhirString,
  );

  /// ImplementationGuide
  static final CarePlanActivityKind ImplementationGuide =
      CarePlanActivityKind._(
    validatedValue: 'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImplementationGuide'.toFhirString,
  );

  /// Ingredient
  static final CarePlanActivityKind Ingredient = CarePlanActivityKind._(
    validatedValue: 'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ingredient'.toFhirString,
  );

  /// InsurancePlan
  static final CarePlanActivityKind InsurancePlan = CarePlanActivityKind._(
    validatedValue: 'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'InsurancePlan'.toFhirString,
  );

  /// Invoice
  static final CarePlanActivityKind Invoice = CarePlanActivityKind._(
    validatedValue: 'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invoice'.toFhirString,
  );

  /// Library
  static final CarePlanActivityKind Library = CarePlanActivityKind._(
    validatedValue: 'Library',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Library'.toFhirString,
  );

  /// Linkage
  static final CarePlanActivityKind Linkage = CarePlanActivityKind._(
    validatedValue: 'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Linkage'.toFhirString,
  );

  /// List_
  static final CarePlanActivityKind List_ = CarePlanActivityKind._(
    validatedValue: 'List',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'List'.toFhirString,
  );

  /// Location
  static final CarePlanActivityKind Location = CarePlanActivityKind._(
    validatedValue: 'Location',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Location'.toFhirString,
  );

  /// ManufacturedItemDefinition
  static final CarePlanActivityKind ManufacturedItemDefinition =
      CarePlanActivityKind._(
    validatedValue: 'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ManufacturedItemDefinition'.toFhirString,
  );

  /// Measure
  static final CarePlanActivityKind Measure = CarePlanActivityKind._(
    validatedValue: 'Measure',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measure'.toFhirString,
  );

  /// MeasureReport
  static final CarePlanActivityKind MeasureReport = CarePlanActivityKind._(
    validatedValue: 'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MeasureReport'.toFhirString,
  );

  /// Media
  static final CarePlanActivityKind Media = CarePlanActivityKind._(
    validatedValue: 'Media',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Media'.toFhirString,
  );

  /// Medication
  static final CarePlanActivityKind Medication = CarePlanActivityKind._(
    validatedValue: 'Medication',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// MedicationAdministration
  static final CarePlanActivityKind MedicationAdministration =
      CarePlanActivityKind._(
    validatedValue: 'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationAdministration'.toFhirString,
  );

  /// MedicationDispense
  static final CarePlanActivityKind MedicationDispense = CarePlanActivityKind._(
    validatedValue: 'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationDispense'.toFhirString,
  );

  /// MedicationKnowledge
  static final CarePlanActivityKind MedicationKnowledge =
      CarePlanActivityKind._(
    validatedValue: 'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationKnowledge'.toFhirString,
  );

  /// MedicationRequest
  static final CarePlanActivityKind MedicationRequest = CarePlanActivityKind._(
    validatedValue: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationRequest'.toFhirString,
  );

  /// MedicationStatement
  static final CarePlanActivityKind MedicationStatement =
      CarePlanActivityKind._(
    validatedValue: 'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationStatement'.toFhirString,
  );

  /// MedicinalProductDefinition
  static final CarePlanActivityKind MedicinalProductDefinition =
      CarePlanActivityKind._(
    validatedValue: 'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicinalProductDefinition'.toFhirString,
  );

  /// MessageDefinition
  static final CarePlanActivityKind MessageDefinition = CarePlanActivityKind._(
    validatedValue: 'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageDefinition'.toFhirString,
  );

  /// MessageHeader
  static final CarePlanActivityKind MessageHeader = CarePlanActivityKind._(
    validatedValue: 'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageHeader'.toFhirString,
  );

  /// MolecularSequence
  static final CarePlanActivityKind MolecularSequence = CarePlanActivityKind._(
    validatedValue: 'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MolecularSequence'.toFhirString,
  );

  /// NamingSystem
  static final CarePlanActivityKind NamingSystem = CarePlanActivityKind._(
    validatedValue: 'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NamingSystem'.toFhirString,
  );

  /// NutritionOrder
  static final CarePlanActivityKind NutritionOrder = CarePlanActivityKind._(
    validatedValue: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionOrder'.toFhirString,
  );

  /// NutritionProduct
  static final CarePlanActivityKind NutritionProduct = CarePlanActivityKind._(
    validatedValue: 'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionProduct'.toFhirString,
  );

  /// Observation
  static final CarePlanActivityKind Observation = CarePlanActivityKind._(
    validatedValue: 'Observation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Observation'.toFhirString,
  );

  /// ObservationDefinition
  static final CarePlanActivityKind ObservationDefinition =
      CarePlanActivityKind._(
    validatedValue: 'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ObservationDefinition'.toFhirString,
  );

  /// OperationDefinition
  static final CarePlanActivityKind OperationDefinition =
      CarePlanActivityKind._(
    validatedValue: 'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationDefinition'.toFhirString,
  );

  /// OperationOutcome
  static final CarePlanActivityKind OperationOutcome = CarePlanActivityKind._(
    validatedValue: 'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationOutcome'.toFhirString,
  );

  /// Organization
  static final CarePlanActivityKind Organization = CarePlanActivityKind._(
    validatedValue: 'Organization',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organization'.toFhirString,
  );

  /// OrganizationAffiliation
  static final CarePlanActivityKind OrganizationAffiliation =
      CarePlanActivityKind._(
    validatedValue: 'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OrganizationAffiliation'.toFhirString,
  );

  /// PackagedProductDefinition
  static final CarePlanActivityKind PackagedProductDefinition =
      CarePlanActivityKind._(
    validatedValue: 'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PackagedProductDefinition'.toFhirString,
  );

  /// Patient
  static final CarePlanActivityKind Patient = CarePlanActivityKind._(
    validatedValue: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// PaymentNotice
  static final CarePlanActivityKind PaymentNotice = CarePlanActivityKind._(
    validatedValue: 'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentNotice'.toFhirString,
  );

  /// PaymentReconciliation
  static final CarePlanActivityKind PaymentReconciliation =
      CarePlanActivityKind._(
    validatedValue: 'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentReconciliation'.toFhirString,
  );

  /// Person
  static final CarePlanActivityKind Person = CarePlanActivityKind._(
    validatedValue: 'Person',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// PlanDefinition
  static final CarePlanActivityKind PlanDefinition = CarePlanActivityKind._(
    validatedValue: 'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PlanDefinition'.toFhirString,
  );

  /// Practitioner
  static final CarePlanActivityKind Practitioner = CarePlanActivityKind._(
    validatedValue: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// PractitionerRole
  static final CarePlanActivityKind PractitionerRole = CarePlanActivityKind._(
    validatedValue: 'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PractitionerRole'.toFhirString,
  );

  /// Procedure
  static final CarePlanActivityKind Procedure = CarePlanActivityKind._(
    validatedValue: 'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Procedure'.toFhirString,
  );

  /// Provenance
  static final CarePlanActivityKind Provenance = CarePlanActivityKind._(
    validatedValue: 'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Provenance'.toFhirString,
  );

  /// Questionnaire
  static final CarePlanActivityKind Questionnaire = CarePlanActivityKind._(
    validatedValue: 'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Questionnaire'.toFhirString,
  );

  /// QuestionnaireResponse
  static final CarePlanActivityKind QuestionnaireResponse =
      CarePlanActivityKind._(
    validatedValue: 'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'QuestionnaireResponse'.toFhirString,
  );

  /// RegulatedAuthorization
  static final CarePlanActivityKind RegulatedAuthorization =
      CarePlanActivityKind._(
    validatedValue: 'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RegulatedAuthorization'.toFhirString,
  );

  /// RelatedPerson
  static final CarePlanActivityKind RelatedPerson = CarePlanActivityKind._(
    validatedValue: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedPerson'.toFhirString,
  );

  /// RequestGroup
  static final CarePlanActivityKind RequestGroup = CarePlanActivityKind._(
    validatedValue: 'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RequestGroup'.toFhirString,
  );

  /// ResearchDefinition
  static final CarePlanActivityKind ResearchDefinition = CarePlanActivityKind._(
    validatedValue: 'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchDefinition'.toFhirString,
  );

  /// ResearchElementDefinition
  static final CarePlanActivityKind ResearchElementDefinition =
      CarePlanActivityKind._(
    validatedValue: 'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchElementDefinition'.toFhirString,
  );

  /// ResearchStudy
  static final CarePlanActivityKind ResearchStudy = CarePlanActivityKind._(
    validatedValue: 'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchStudy'.toFhirString,
  );

  /// ResearchSubject
  static final CarePlanActivityKind ResearchSubject = CarePlanActivityKind._(
    validatedValue: 'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchSubject'.toFhirString,
  );

  /// RiskAssessment
  static final CarePlanActivityKind RiskAssessment = CarePlanActivityKind._(
    validatedValue: 'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RiskAssessment'.toFhirString,
  );

  /// Schedule
  static final CarePlanActivityKind Schedule = CarePlanActivityKind._(
    validatedValue: 'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Schedule'.toFhirString,
  );

  /// SearchParameter
  static final CarePlanActivityKind SearchParameter = CarePlanActivityKind._(
    validatedValue: 'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SearchParameter'.toFhirString,
  );

  /// ServiceRequest
  static final CarePlanActivityKind ServiceRequest = CarePlanActivityKind._(
    validatedValue: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ServiceRequest'.toFhirString,
  );

  /// Slot
  static final CarePlanActivityKind Slot = CarePlanActivityKind._(
    validatedValue: 'Slot',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Slot'.toFhirString,
  );

  /// Specimen
  static final CarePlanActivityKind Specimen = CarePlanActivityKind._(
    validatedValue: 'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specimen'.toFhirString,
  );

  /// SpecimenDefinition
  static final CarePlanActivityKind SpecimenDefinition = CarePlanActivityKind._(
    validatedValue: 'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SpecimenDefinition'.toFhirString,
  );

  /// StructureDefinition
  static final CarePlanActivityKind StructureDefinition =
      CarePlanActivityKind._(
    validatedValue: 'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureDefinition'.toFhirString,
  );

  /// StructureMap
  static final CarePlanActivityKind StructureMap = CarePlanActivityKind._(
    validatedValue: 'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureMap'.toFhirString,
  );

  /// Subscription
  static final CarePlanActivityKind Subscription = CarePlanActivityKind._(
    validatedValue: 'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subscription'.toFhirString,
  );

  /// SubscriptionStatus
  static final CarePlanActivityKind SubscriptionStatus = CarePlanActivityKind._(
    validatedValue: 'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionStatus'.toFhirString,
  );

  /// SubscriptionTopic
  static final CarePlanActivityKind SubscriptionTopic = CarePlanActivityKind._(
    validatedValue: 'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionTopic'.toFhirString,
  );

  /// Substance
  static final CarePlanActivityKind Substance = CarePlanActivityKind._(
    validatedValue: 'Substance',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Substance'.toFhirString,
  );

  /// SubstanceDefinition
  static final CarePlanActivityKind SubstanceDefinition =
      CarePlanActivityKind._(
    validatedValue: 'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubstanceDefinition'.toFhirString,
  );

  /// SupplyDelivery
  static final CarePlanActivityKind SupplyDelivery = CarePlanActivityKind._(
    validatedValue: 'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyDelivery'.toFhirString,
  );

  /// SupplyRequest
  static final CarePlanActivityKind SupplyRequest = CarePlanActivityKind._(
    validatedValue: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyRequest'.toFhirString,
  );

  /// Task
  static final CarePlanActivityKind Task = CarePlanActivityKind._(
    validatedValue: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Task'.toFhirString,
  );

  /// TerminologyCapabilities
  static final CarePlanActivityKind TerminologyCapabilities =
      CarePlanActivityKind._(
    validatedValue: 'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TerminologyCapabilities'.toFhirString,
  );

  /// TestReport
  static final CarePlanActivityKind TestReport = CarePlanActivityKind._(
    validatedValue: 'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestReport'.toFhirString,
  );

  /// TestScript
  static final CarePlanActivityKind TestScript = CarePlanActivityKind._(
    validatedValue: 'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestScript'.toFhirString,
  );

  /// ValueSet
  static final CarePlanActivityKind ValueSet = CarePlanActivityKind._(
    validatedValue: 'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ValueSet'.toFhirString,
  );

  /// VerificationResult
  static final CarePlanActivityKind VerificationResult = CarePlanActivityKind._(
    validatedValue: 'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VerificationResult'.toFhirString,
  );

  /// VisionPrescription
  static final CarePlanActivityKind VisionPrescription = CarePlanActivityKind._(
    validatedValue: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VisionPrescription'.toFhirString,
  );

  /// Parameters
  static final CarePlanActivityKind Parameters = CarePlanActivityKind._(
    validatedValue: 'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Parameters'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CarePlanActivityKind elementOnly =
      CarePlanActivityKind._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityKind withElement(Element? newElement) {
    return CarePlanActivityKind._(validatedValue: value, element: newElement);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CarePlanActivityKind._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
