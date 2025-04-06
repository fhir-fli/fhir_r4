// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Resource types defined as part of FHIR that can be represented as
/// in-line definitions of a care plan activity.
class CarePlanActivityKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CarePlanActivityKind._({
    required super.valueString,
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
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return CarePlanActivityKind._(
      valueString: valueString,
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
      CarePlanActivityKind._(valueString: '');

  /// Factory constructor to create [CarePlanActivityKind]
  /// from JSON.
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
    return CarePlanActivityKind._(
      valueString: value,
      element: element,
    );
  }

  /// Resource
  static final CarePlanActivityKind Resource = CarePlanActivityKind._(
    valueString: 'Resource',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// Binary
  static final CarePlanActivityKind Binary = CarePlanActivityKind._(
    valueString: 'Binary',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Binary'.toFhirString,
  );

  /// Bundle
  static final CarePlanActivityKind Bundle = CarePlanActivityKind._(
    valueString: 'Bundle',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bundle'.toFhirString,
  );

  /// DomainResource
  static final CarePlanActivityKind DomainResource = CarePlanActivityKind._(
    valueString: 'DomainResource',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DomainResource'.toFhirString,
  );

  /// Account
  static final CarePlanActivityKind Account = CarePlanActivityKind._(
    valueString: 'Account',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Account'.toFhirString,
  );

  /// ActivityDefinition
  static final CarePlanActivityKind ActivityDefinition = CarePlanActivityKind._(
    valueString: 'ActivityDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ActivityDefinition'.toFhirString,
  );

  /// AdministrableProductDefinition
  static final CarePlanActivityKind AdministrableProductDefinition =
      CarePlanActivityKind._(
    valueString: 'AdministrableProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdministrableProductDefinition'.toFhirString,
  );

  /// AdverseEvent
  static final CarePlanActivityKind AdverseEvent = CarePlanActivityKind._(
    valueString: 'AdverseEvent',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AdverseEvent'.toFhirString,
  );

  /// AllergyIntolerance
  static final CarePlanActivityKind AllergyIntolerance = CarePlanActivityKind._(
    valueString: 'AllergyIntolerance',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AllergyIntolerance'.toFhirString,
  );

  /// Appointment
  static final CarePlanActivityKind Appointment = CarePlanActivityKind._(
    valueString: 'Appointment',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appointment'.toFhirString,
  );

  /// AppointmentResponse
  static final CarePlanActivityKind AppointmentResponse =
      CarePlanActivityKind._(
    valueString: 'AppointmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AppointmentResponse'.toFhirString,
  );

  /// AuditEvent
  static final CarePlanActivityKind AuditEvent = CarePlanActivityKind._(
    valueString: 'AuditEvent',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AuditEvent'.toFhirString,
  );

  /// Basic
  static final CarePlanActivityKind Basic = CarePlanActivityKind._(
    valueString: 'Basic',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Basic'.toFhirString,
  );

  /// BiologicallyDerivedProduct
  static final CarePlanActivityKind BiologicallyDerivedProduct =
      CarePlanActivityKind._(
    valueString: 'BiologicallyDerivedProduct',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicallyDerivedProduct'.toFhirString,
  );

  /// BodyStructure
  static final CarePlanActivityKind BodyStructure = CarePlanActivityKind._(
    valueString: 'BodyStructure',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BodyStructure'.toFhirString,
  );

  /// CapabilityStatement
  static final CarePlanActivityKind CapabilityStatement =
      CarePlanActivityKind._(
    valueString: 'CapabilityStatement',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CapabilityStatement'.toFhirString,
  );

  /// CarePlan
  static final CarePlanActivityKind CarePlan = CarePlanActivityKind._(
    valueString: 'CarePlan',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CarePlan'.toFhirString,
  );

  /// CareTeam
  static final CarePlanActivityKind CareTeam = CarePlanActivityKind._(
    valueString: 'CareTeam',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CareTeam'.toFhirString,
  );

  /// CatalogEntry
  static final CarePlanActivityKind CatalogEntry = CarePlanActivityKind._(
    valueString: 'CatalogEntry',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CatalogEntry'.toFhirString,
  );

  /// ChargeItem
  static final CarePlanActivityKind ChargeItem = CarePlanActivityKind._(
    valueString: 'ChargeItem',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItem'.toFhirString,
  );

  /// ChargeItemDefinition
  static final CarePlanActivityKind ChargeItemDefinition =
      CarePlanActivityKind._(
    valueString: 'ChargeItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ChargeItemDefinition'.toFhirString,
  );

  /// Citation
  static final CarePlanActivityKind Citation = CarePlanActivityKind._(
    valueString: 'Citation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Citation'.toFhirString,
  );

  /// Claim
  static final CarePlanActivityKind Claim = CarePlanActivityKind._(
    valueString: 'Claim',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Claim'.toFhirString,
  );

  /// ClaimResponse
  static final CarePlanActivityKind ClaimResponse = CarePlanActivityKind._(
    valueString: 'ClaimResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClaimResponse'.toFhirString,
  );

  /// ClinicalImpression
  static final CarePlanActivityKind ClinicalImpression = CarePlanActivityKind._(
    valueString: 'ClinicalImpression',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalImpression'.toFhirString,
  );

  /// ClinicalUseDefinition
  static final CarePlanActivityKind ClinicalUseDefinition =
      CarePlanActivityKind._(
    valueString: 'ClinicalUseDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ClinicalUseDefinition'.toFhirString,
  );

  /// CodeSystem
  static final CarePlanActivityKind CodeSystem = CarePlanActivityKind._(
    valueString: 'CodeSystem',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CodeSystem'.toFhirString,
  );

  /// Communication
  static final CarePlanActivityKind Communication = CarePlanActivityKind._(
    valueString: 'Communication',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Communication'.toFhirString,
  );

  /// CommunicationRequest
  static final CarePlanActivityKind CommunicationRequest =
      CarePlanActivityKind._(
    valueString: 'CommunicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CommunicationRequest'.toFhirString,
  );

  /// CompartmentDefinition
  static final CarePlanActivityKind CompartmentDefinition =
      CarePlanActivityKind._(
    valueString: 'CompartmentDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CompartmentDefinition'.toFhirString,
  );

  /// Composition
  static final CarePlanActivityKind Composition = CarePlanActivityKind._(
    valueString: 'Composition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composition'.toFhirString,
  );

  /// ConceptMap
  static final CarePlanActivityKind ConceptMap = CarePlanActivityKind._(
    valueString: 'ConceptMap',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ConceptMap'.toFhirString,
  );

  /// Condition
  static final CarePlanActivityKind Condition = CarePlanActivityKind._(
    valueString: 'Condition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Condition'.toFhirString,
  );

  /// Consent
  static final CarePlanActivityKind Consent = CarePlanActivityKind._(
    valueString: 'Consent',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Consent'.toFhirString,
  );

  /// Contract
  static final CarePlanActivityKind Contract = CarePlanActivityKind._(
    valueString: 'Contract',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contract'.toFhirString,
  );

  /// Coverage
  static final CarePlanActivityKind Coverage = CarePlanActivityKind._(
    valueString: 'Coverage',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coverage'.toFhirString,
  );

  /// CoverageEligibilityRequest
  static final CarePlanActivityKind CoverageEligibilityRequest =
      CarePlanActivityKind._(
    valueString: 'CoverageEligibilityRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityRequest'.toFhirString,
  );

  /// CoverageEligibilityResponse
  static final CarePlanActivityKind CoverageEligibilityResponse =
      CarePlanActivityKind._(
    valueString: 'CoverageEligibilityResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CoverageEligibilityResponse'.toFhirString,
  );

  /// DetectedIssue
  static final CarePlanActivityKind DetectedIssue = CarePlanActivityKind._(
    valueString: 'DetectedIssue',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DetectedIssue'.toFhirString,
  );

  /// Device
  static final CarePlanActivityKind Device = CarePlanActivityKind._(
    valueString: 'Device',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// DeviceDefinition
  static final CarePlanActivityKind DeviceDefinition = CarePlanActivityKind._(
    valueString: 'DeviceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceDefinition'.toFhirString,
  );

  /// DeviceMetric
  static final CarePlanActivityKind DeviceMetric = CarePlanActivityKind._(
    valueString: 'DeviceMetric',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceMetric'.toFhirString,
  );

  /// DeviceRequest
  static final CarePlanActivityKind DeviceRequest = CarePlanActivityKind._(
    valueString: 'DeviceRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceRequest'.toFhirString,
  );

  /// DeviceUseStatement
  static final CarePlanActivityKind DeviceUseStatement = CarePlanActivityKind._(
    valueString: 'DeviceUseStatement',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DeviceUseStatement'.toFhirString,
  );

  /// DiagnosticReport
  static final CarePlanActivityKind DiagnosticReport = CarePlanActivityKind._(
    valueString: 'DiagnosticReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DiagnosticReport'.toFhirString,
  );

  /// DocumentManifest
  static final CarePlanActivityKind DocumentManifest = CarePlanActivityKind._(
    valueString: 'DocumentManifest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentManifest'.toFhirString,
  );

  /// DocumentReference
  static final CarePlanActivityKind DocumentReference = CarePlanActivityKind._(
    valueString: 'DocumentReference',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DocumentReference'.toFhirString,
  );

  /// Encounter
  static final CarePlanActivityKind Encounter = CarePlanActivityKind._(
    valueString: 'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Encounter'.toFhirString,
  );

  /// Endpoint
  static final CarePlanActivityKind Endpoint = CarePlanActivityKind._(
    valueString: 'Endpoint',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Endpoint'.toFhirString,
  );

  /// EnrollmentRequest
  static final CarePlanActivityKind EnrollmentRequest = CarePlanActivityKind._(
    valueString: 'EnrollmentRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentRequest'.toFhirString,
  );

  /// EnrollmentResponse
  static final CarePlanActivityKind EnrollmentResponse = CarePlanActivityKind._(
    valueString: 'EnrollmentResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EnrollmentResponse'.toFhirString,
  );

  /// EpisodeOfCare
  static final CarePlanActivityKind EpisodeOfCare = CarePlanActivityKind._(
    valueString: 'EpisodeOfCare',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EpisodeOfCare'.toFhirString,
  );

  /// EventDefinition
  static final CarePlanActivityKind EventDefinition = CarePlanActivityKind._(
    valueString: 'EventDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EventDefinition'.toFhirString,
  );

  /// Evidence
  static final CarePlanActivityKind Evidence = CarePlanActivityKind._(
    valueString: 'Evidence',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evidence'.toFhirString,
  );

  /// EvidenceReport
  static final CarePlanActivityKind EvidenceReport = CarePlanActivityKind._(
    valueString: 'EvidenceReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceReport'.toFhirString,
  );

  /// EvidenceVariable
  static final CarePlanActivityKind EvidenceVariable = CarePlanActivityKind._(
    valueString: 'EvidenceVariable',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EvidenceVariable'.toFhirString,
  );

  /// ExampleScenario
  static final CarePlanActivityKind ExampleScenario = CarePlanActivityKind._(
    valueString: 'ExampleScenario',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExampleScenario'.toFhirString,
  );

  /// ExplanationOfBenefit
  static final CarePlanActivityKind ExplanationOfBenefit =
      CarePlanActivityKind._(
    valueString: 'ExplanationOfBenefit',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ExplanationOfBenefit'.toFhirString,
  );

  /// FamilyMemberHistory
  static final CarePlanActivityKind FamilyMemberHistory =
      CarePlanActivityKind._(
    valueString: 'FamilyMemberHistory',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FamilyMemberHistory'.toFhirString,
  );

  /// Flag
  static final CarePlanActivityKind Flag = CarePlanActivityKind._(
    valueString: 'Flag',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Flag'.toFhirString,
  );

  /// Goal
  static final CarePlanActivityKind Goal = CarePlanActivityKind._(
    valueString: 'Goal',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Goal'.toFhirString,
  );

  /// GraphDefinition
  static final CarePlanActivityKind GraphDefinition = CarePlanActivityKind._(
    valueString: 'GraphDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GraphDefinition'.toFhirString,
  );

  /// Group
  static final CarePlanActivityKind Group = CarePlanActivityKind._(
    valueString: 'Group',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Group'.toFhirString,
  );

  /// GuidanceResponse
  static final CarePlanActivityKind GuidanceResponse = CarePlanActivityKind._(
    valueString: 'GuidanceResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GuidanceResponse'.toFhirString,
  );

  /// HealthcareService
  static final CarePlanActivityKind HealthcareService = CarePlanActivityKind._(
    valueString: 'HealthcareService',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HealthcareService'.toFhirString,
  );

  /// ImagingStudy
  static final CarePlanActivityKind ImagingStudy = CarePlanActivityKind._(
    valueString: 'ImagingStudy',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImagingStudy'.toFhirString,
  );

  /// Immunization
  static final CarePlanActivityKind Immunization = CarePlanActivityKind._(
    valueString: 'Immunization',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Immunization'.toFhirString,
  );

  /// ImmunizationEvaluation
  static final CarePlanActivityKind ImmunizationEvaluation =
      CarePlanActivityKind._(
    valueString: 'ImmunizationEvaluation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationEvaluation'.toFhirString,
  );

  /// ImmunizationRecommendation
  static final CarePlanActivityKind ImmunizationRecommendation =
      CarePlanActivityKind._(
    valueString: 'ImmunizationRecommendation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImmunizationRecommendation'.toFhirString,
  );

  /// ImplementationGuide
  static final CarePlanActivityKind ImplementationGuide =
      CarePlanActivityKind._(
    valueString: 'ImplementationGuide',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImplementationGuide'.toFhirString,
  );

  /// Ingredient
  static final CarePlanActivityKind Ingredient = CarePlanActivityKind._(
    valueString: 'Ingredient',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ingredient'.toFhirString,
  );

  /// InsurancePlan
  static final CarePlanActivityKind InsurancePlan = CarePlanActivityKind._(
    valueString: 'InsurancePlan',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'InsurancePlan'.toFhirString,
  );

  /// Invoice
  static final CarePlanActivityKind Invoice = CarePlanActivityKind._(
    valueString: 'Invoice',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Invoice'.toFhirString,
  );

  /// Library
  static final CarePlanActivityKind Library = CarePlanActivityKind._(
    valueString: 'Library',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Library'.toFhirString,
  );

  /// Linkage
  static final CarePlanActivityKind Linkage = CarePlanActivityKind._(
    valueString: 'Linkage',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Linkage'.toFhirString,
  );

  /// List_
  static final CarePlanActivityKind List_ = CarePlanActivityKind._(
    valueString: 'List',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'List'.toFhirString,
  );

  /// Location
  static final CarePlanActivityKind Location = CarePlanActivityKind._(
    valueString: 'Location',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Location'.toFhirString,
  );

  /// ManufacturedItemDefinition
  static final CarePlanActivityKind ManufacturedItemDefinition =
      CarePlanActivityKind._(
    valueString: 'ManufacturedItemDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ManufacturedItemDefinition'.toFhirString,
  );

  /// Measure
  static final CarePlanActivityKind Measure = CarePlanActivityKind._(
    valueString: 'Measure',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measure'.toFhirString,
  );

  /// MeasureReport
  static final CarePlanActivityKind MeasureReport = CarePlanActivityKind._(
    valueString: 'MeasureReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MeasureReport'.toFhirString,
  );

  /// Media
  static final CarePlanActivityKind Media = CarePlanActivityKind._(
    valueString: 'Media',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Media'.toFhirString,
  );

  /// Medication
  static final CarePlanActivityKind Medication = CarePlanActivityKind._(
    valueString: 'Medication',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// MedicationAdministration
  static final CarePlanActivityKind MedicationAdministration =
      CarePlanActivityKind._(
    valueString: 'MedicationAdministration',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationAdministration'.toFhirString,
  );

  /// MedicationDispense
  static final CarePlanActivityKind MedicationDispense = CarePlanActivityKind._(
    valueString: 'MedicationDispense',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationDispense'.toFhirString,
  );

  /// MedicationKnowledge
  static final CarePlanActivityKind MedicationKnowledge =
      CarePlanActivityKind._(
    valueString: 'MedicationKnowledge',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationKnowledge'.toFhirString,
  );

  /// MedicationRequest
  static final CarePlanActivityKind MedicationRequest = CarePlanActivityKind._(
    valueString: 'MedicationRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationRequest'.toFhirString,
  );

  /// MedicationStatement
  static final CarePlanActivityKind MedicationStatement =
      CarePlanActivityKind._(
    valueString: 'MedicationStatement',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicationStatement'.toFhirString,
  );

  /// MedicinalProductDefinition
  static final CarePlanActivityKind MedicinalProductDefinition =
      CarePlanActivityKind._(
    valueString: 'MedicinalProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MedicinalProductDefinition'.toFhirString,
  );

  /// MessageDefinition
  static final CarePlanActivityKind MessageDefinition = CarePlanActivityKind._(
    valueString: 'MessageDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageDefinition'.toFhirString,
  );

  /// MessageHeader
  static final CarePlanActivityKind MessageHeader = CarePlanActivityKind._(
    valueString: 'MessageHeader',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MessageHeader'.toFhirString,
  );

  /// MolecularSequence
  static final CarePlanActivityKind MolecularSequence = CarePlanActivityKind._(
    valueString: 'MolecularSequence',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MolecularSequence'.toFhirString,
  );

  /// NamingSystem
  static final CarePlanActivityKind NamingSystem = CarePlanActivityKind._(
    valueString: 'NamingSystem',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NamingSystem'.toFhirString,
  );

  /// NutritionOrder
  static final CarePlanActivityKind NutritionOrder = CarePlanActivityKind._(
    valueString: 'NutritionOrder',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionOrder'.toFhirString,
  );

  /// NutritionProduct
  static final CarePlanActivityKind NutritionProduct = CarePlanActivityKind._(
    valueString: 'NutritionProduct',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NutritionProduct'.toFhirString,
  );

  /// Observation
  static final CarePlanActivityKind Observation = CarePlanActivityKind._(
    valueString: 'Observation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Observation'.toFhirString,
  );

  /// ObservationDefinition
  static final CarePlanActivityKind ObservationDefinition =
      CarePlanActivityKind._(
    valueString: 'ObservationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ObservationDefinition'.toFhirString,
  );

  /// OperationDefinition
  static final CarePlanActivityKind OperationDefinition =
      CarePlanActivityKind._(
    valueString: 'OperationDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationDefinition'.toFhirString,
  );

  /// OperationOutcome
  static final CarePlanActivityKind OperationOutcome = CarePlanActivityKind._(
    valueString: 'OperationOutcome',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OperationOutcome'.toFhirString,
  );

  /// Organization
  static final CarePlanActivityKind Organization = CarePlanActivityKind._(
    valueString: 'Organization',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organization'.toFhirString,
  );

  /// OrganizationAffiliation
  static final CarePlanActivityKind OrganizationAffiliation =
      CarePlanActivityKind._(
    valueString: 'OrganizationAffiliation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OrganizationAffiliation'.toFhirString,
  );

  /// PackagedProductDefinition
  static final CarePlanActivityKind PackagedProductDefinition =
      CarePlanActivityKind._(
    valueString: 'PackagedProductDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PackagedProductDefinition'.toFhirString,
  );

  /// Patient
  static final CarePlanActivityKind Patient = CarePlanActivityKind._(
    valueString: 'Patient',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// PaymentNotice
  static final CarePlanActivityKind PaymentNotice = CarePlanActivityKind._(
    valueString: 'PaymentNotice',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentNotice'.toFhirString,
  );

  /// PaymentReconciliation
  static final CarePlanActivityKind PaymentReconciliation =
      CarePlanActivityKind._(
    valueString: 'PaymentReconciliation',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PaymentReconciliation'.toFhirString,
  );

  /// Person
  static final CarePlanActivityKind Person = CarePlanActivityKind._(
    valueString: 'Person',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// PlanDefinition
  static final CarePlanActivityKind PlanDefinition = CarePlanActivityKind._(
    valueString: 'PlanDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PlanDefinition'.toFhirString,
  );

  /// Practitioner
  static final CarePlanActivityKind Practitioner = CarePlanActivityKind._(
    valueString: 'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// PractitionerRole
  static final CarePlanActivityKind PractitionerRole = CarePlanActivityKind._(
    valueString: 'PractitionerRole',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PractitionerRole'.toFhirString,
  );

  /// Procedure
  static final CarePlanActivityKind Procedure = CarePlanActivityKind._(
    valueString: 'Procedure',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Procedure'.toFhirString,
  );

  /// Provenance
  static final CarePlanActivityKind Provenance = CarePlanActivityKind._(
    valueString: 'Provenance',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Provenance'.toFhirString,
  );

  /// Questionnaire
  static final CarePlanActivityKind Questionnaire = CarePlanActivityKind._(
    valueString: 'Questionnaire',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Questionnaire'.toFhirString,
  );

  /// QuestionnaireResponse
  static final CarePlanActivityKind QuestionnaireResponse =
      CarePlanActivityKind._(
    valueString: 'QuestionnaireResponse',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'QuestionnaireResponse'.toFhirString,
  );

  /// RegulatedAuthorization
  static final CarePlanActivityKind RegulatedAuthorization =
      CarePlanActivityKind._(
    valueString: 'RegulatedAuthorization',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RegulatedAuthorization'.toFhirString,
  );

  /// RelatedPerson
  static final CarePlanActivityKind RelatedPerson = CarePlanActivityKind._(
    valueString: 'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedPerson'.toFhirString,
  );

  /// RequestGroup
  static final CarePlanActivityKind RequestGroup = CarePlanActivityKind._(
    valueString: 'RequestGroup',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RequestGroup'.toFhirString,
  );

  /// ResearchDefinition
  static final CarePlanActivityKind ResearchDefinition = CarePlanActivityKind._(
    valueString: 'ResearchDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchDefinition'.toFhirString,
  );

  /// ResearchElementDefinition
  static final CarePlanActivityKind ResearchElementDefinition =
      CarePlanActivityKind._(
    valueString: 'ResearchElementDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchElementDefinition'.toFhirString,
  );

  /// ResearchStudy
  static final CarePlanActivityKind ResearchStudy = CarePlanActivityKind._(
    valueString: 'ResearchStudy',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchStudy'.toFhirString,
  );

  /// ResearchSubject
  static final CarePlanActivityKind ResearchSubject = CarePlanActivityKind._(
    valueString: 'ResearchSubject',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ResearchSubject'.toFhirString,
  );

  /// RiskAssessment
  static final CarePlanActivityKind RiskAssessment = CarePlanActivityKind._(
    valueString: 'RiskAssessment',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RiskAssessment'.toFhirString,
  );

  /// Schedule
  static final CarePlanActivityKind Schedule = CarePlanActivityKind._(
    valueString: 'Schedule',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Schedule'.toFhirString,
  );

  /// SearchParameter
  static final CarePlanActivityKind SearchParameter = CarePlanActivityKind._(
    valueString: 'SearchParameter',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SearchParameter'.toFhirString,
  );

  /// ServiceRequest
  static final CarePlanActivityKind ServiceRequest = CarePlanActivityKind._(
    valueString: 'ServiceRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ServiceRequest'.toFhirString,
  );

  /// Slot
  static final CarePlanActivityKind Slot = CarePlanActivityKind._(
    valueString: 'Slot',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Slot'.toFhirString,
  );

  /// Specimen
  static final CarePlanActivityKind Specimen = CarePlanActivityKind._(
    valueString: 'Specimen',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Specimen'.toFhirString,
  );

  /// SpecimenDefinition
  static final CarePlanActivityKind SpecimenDefinition = CarePlanActivityKind._(
    valueString: 'SpecimenDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SpecimenDefinition'.toFhirString,
  );

  /// StructureDefinition
  static final CarePlanActivityKind StructureDefinition =
      CarePlanActivityKind._(
    valueString: 'StructureDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureDefinition'.toFhirString,
  );

  /// StructureMap
  static final CarePlanActivityKind StructureMap = CarePlanActivityKind._(
    valueString: 'StructureMap',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'StructureMap'.toFhirString,
  );

  /// Subscription
  static final CarePlanActivityKind Subscription = CarePlanActivityKind._(
    valueString: 'Subscription',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subscription'.toFhirString,
  );

  /// SubscriptionStatus
  static final CarePlanActivityKind SubscriptionStatus = CarePlanActivityKind._(
    valueString: 'SubscriptionStatus',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionStatus'.toFhirString,
  );

  /// SubscriptionTopic
  static final CarePlanActivityKind SubscriptionTopic = CarePlanActivityKind._(
    valueString: 'SubscriptionTopic',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubscriptionTopic'.toFhirString,
  );

  /// Substance
  static final CarePlanActivityKind Substance = CarePlanActivityKind._(
    valueString: 'Substance',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Substance'.toFhirString,
  );

  /// SubstanceDefinition
  static final CarePlanActivityKind SubstanceDefinition =
      CarePlanActivityKind._(
    valueString: 'SubstanceDefinition',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SubstanceDefinition'.toFhirString,
  );

  /// SupplyDelivery
  static final CarePlanActivityKind SupplyDelivery = CarePlanActivityKind._(
    valueString: 'SupplyDelivery',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyDelivery'.toFhirString,
  );

  /// SupplyRequest
  static final CarePlanActivityKind SupplyRequest = CarePlanActivityKind._(
    valueString: 'SupplyRequest',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SupplyRequest'.toFhirString,
  );

  /// Task
  static final CarePlanActivityKind Task = CarePlanActivityKind._(
    valueString: 'Task',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Task'.toFhirString,
  );

  /// TerminologyCapabilities
  static final CarePlanActivityKind TerminologyCapabilities =
      CarePlanActivityKind._(
    valueString: 'TerminologyCapabilities',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TerminologyCapabilities'.toFhirString,
  );

  /// TestReport
  static final CarePlanActivityKind TestReport = CarePlanActivityKind._(
    valueString: 'TestReport',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestReport'.toFhirString,
  );

  /// TestScript
  static final CarePlanActivityKind TestScript = CarePlanActivityKind._(
    valueString: 'TestScript',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TestScript'.toFhirString,
  );

  /// ValueSet
  static final CarePlanActivityKind ValueSet = CarePlanActivityKind._(
    valueString: 'ValueSet',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ValueSet'.toFhirString,
  );

  /// VerificationResult
  static final CarePlanActivityKind VerificationResult = CarePlanActivityKind._(
    valueString: 'VerificationResult',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VerificationResult'.toFhirString,
  );

  /// VisionPrescription
  static final CarePlanActivityKind VisionPrescription = CarePlanActivityKind._(
    valueString: 'VisionPrescription',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VisionPrescription'.toFhirString,
  );

  /// Parameters
  static final CarePlanActivityKind Parameters = CarePlanActivityKind._(
    valueString: 'Parameters',
    system: 'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Parameters'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CarePlanActivityKind elementOnly =
      CarePlanActivityKind._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityKind withElement(Element? newElement) {
    return CarePlanActivityKind._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  CarePlanActivityKind copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for CarePlanActivityKind: $newValue',
      );
    }
    return CarePlanActivityKind._(
      valueString: newValue ?? valueString,
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
