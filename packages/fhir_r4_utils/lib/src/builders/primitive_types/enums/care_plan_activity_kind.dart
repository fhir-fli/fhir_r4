// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Resource types defined as part of FHIR that can be represented as
/// in-line definitions of a care plan activity.
class CarePlanActivityKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CarePlanActivityKindBuilder._({
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
  factory CarePlanActivityKindBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return CarePlanActivityKindBuilder._(
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

  /// Create empty [CarePlanActivityKindBuilder] with element only
  factory CarePlanActivityKindBuilder.empty() =>
      CarePlanActivityKindBuilder._(validatedValue: '');

  /// Factory constructor to create [CarePlanActivityKindBuilder]
  /// from JSON.
  factory CarePlanActivityKindBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CarePlanActivityKindBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CarePlanActivityKindBuilder cannot be constructed from JSON.',
      );
    }
    return CarePlanActivityKindBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// Resource
  static CarePlanActivityKindBuilder Resource = CarePlanActivityKindBuilder._(
    validatedValue: 'Resource',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resource'.toFhirStringBuilder,
  );

  /// Binary
  static CarePlanActivityKindBuilder Binary = CarePlanActivityKindBuilder._(
    validatedValue: 'Binary',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Binary'.toFhirStringBuilder,
  );

  /// Bundle
  static CarePlanActivityKindBuilder Bundle = CarePlanActivityKindBuilder._(
    validatedValue: 'Bundle',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Bundle'.toFhirStringBuilder,
  );

  /// DomainResource
  static CarePlanActivityKindBuilder DomainResource =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DomainResource',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DomainResource'.toFhirStringBuilder,
  );

  /// Account
  static CarePlanActivityKindBuilder Account = CarePlanActivityKindBuilder._(
    validatedValue: 'Account',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Account'.toFhirStringBuilder,
  );

  /// ActivityDefinition
  static CarePlanActivityKindBuilder ActivityDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ActivityDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ActivityDefinition'.toFhirStringBuilder,
  );

  /// AdministrableProductDefinition
  static CarePlanActivityKindBuilder AdministrableProductDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'AdministrableProductDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AdministrableProductDefinition'.toFhirStringBuilder,
  );

  /// AdverseEvent
  static CarePlanActivityKindBuilder AdverseEvent =
      CarePlanActivityKindBuilder._(
    validatedValue: 'AdverseEvent',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AdverseEvent'.toFhirStringBuilder,
  );

  /// AllergyIntolerance
  static CarePlanActivityKindBuilder AllergyIntolerance =
      CarePlanActivityKindBuilder._(
    validatedValue: 'AllergyIntolerance',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AllergyIntolerance'.toFhirStringBuilder,
  );

  /// Appointment
  static CarePlanActivityKindBuilder Appointment =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Appointment',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appointment'.toFhirStringBuilder,
  );

  /// AppointmentResponse
  static CarePlanActivityKindBuilder AppointmentResponse =
      CarePlanActivityKindBuilder._(
    validatedValue: 'AppointmentResponse',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AppointmentResponse'.toFhirStringBuilder,
  );

  /// AuditEvent
  static CarePlanActivityKindBuilder AuditEvent = CarePlanActivityKindBuilder._(
    validatedValue: 'AuditEvent',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AuditEvent'.toFhirStringBuilder,
  );

  /// Basic
  static CarePlanActivityKindBuilder Basic = CarePlanActivityKindBuilder._(
    validatedValue: 'Basic',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Basic'.toFhirStringBuilder,
  );

  /// BiologicallyDerivedProduct
  static CarePlanActivityKindBuilder BiologicallyDerivedProduct =
      CarePlanActivityKindBuilder._(
    validatedValue: 'BiologicallyDerivedProduct',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BiologicallyDerivedProduct'.toFhirStringBuilder,
  );

  /// BodyStructure
  static CarePlanActivityKindBuilder BodyStructure =
      CarePlanActivityKindBuilder._(
    validatedValue: 'BodyStructure',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BodyStructure'.toFhirStringBuilder,
  );

  /// CapabilityStatement
  static CarePlanActivityKindBuilder CapabilityStatement =
      CarePlanActivityKindBuilder._(
    validatedValue: 'CapabilityStatement',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CapabilityStatement'.toFhirStringBuilder,
  );

  /// CarePlan
  static CarePlanActivityKindBuilder CarePlan = CarePlanActivityKindBuilder._(
    validatedValue: 'CarePlan',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CarePlan'.toFhirStringBuilder,
  );

  /// CareTeam
  static CarePlanActivityKindBuilder CareTeam = CarePlanActivityKindBuilder._(
    validatedValue: 'CareTeam',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CareTeam'.toFhirStringBuilder,
  );

  /// CatalogEntry
  static CarePlanActivityKindBuilder CatalogEntry =
      CarePlanActivityKindBuilder._(
    validatedValue: 'CatalogEntry',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CatalogEntry'.toFhirStringBuilder,
  );

  /// ChargeItem
  static CarePlanActivityKindBuilder ChargeItem = CarePlanActivityKindBuilder._(
    validatedValue: 'ChargeItem',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ChargeItem'.toFhirStringBuilder,
  );

  /// ChargeItemDefinition
  static CarePlanActivityKindBuilder ChargeItemDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ChargeItemDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ChargeItemDefinition'.toFhirStringBuilder,
  );

  /// Citation
  static CarePlanActivityKindBuilder Citation = CarePlanActivityKindBuilder._(
    validatedValue: 'Citation',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Citation'.toFhirStringBuilder,
  );

  /// Claim
  static CarePlanActivityKindBuilder Claim = CarePlanActivityKindBuilder._(
    validatedValue: 'Claim',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Claim'.toFhirStringBuilder,
  );

  /// ClaimResponse
  static CarePlanActivityKindBuilder ClaimResponse =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ClaimResponse',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClaimResponse'.toFhirStringBuilder,
  );

  /// ClinicalImpression
  static CarePlanActivityKindBuilder ClinicalImpression =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ClinicalImpression',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClinicalImpression'.toFhirStringBuilder,
  );

  /// ClinicalUseDefinition
  static CarePlanActivityKindBuilder ClinicalUseDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ClinicalUseDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ClinicalUseDefinition'.toFhirStringBuilder,
  );

  /// CodeSystem
  static CarePlanActivityKindBuilder CodeSystem = CarePlanActivityKindBuilder._(
    validatedValue: 'CodeSystem',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CodeSystem'.toFhirStringBuilder,
  );

  /// Communication
  static CarePlanActivityKindBuilder Communication =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Communication',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Communication'.toFhirStringBuilder,
  );

  /// CommunicationRequest
  static CarePlanActivityKindBuilder CommunicationRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'CommunicationRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CommunicationRequest'.toFhirStringBuilder,
  );

  /// CompartmentDefinition
  static CarePlanActivityKindBuilder CompartmentDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'CompartmentDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CompartmentDefinition'.toFhirStringBuilder,
  );

  /// Composition
  static CarePlanActivityKindBuilder Composition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Composition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Composition'.toFhirStringBuilder,
  );

  /// ConceptMap
  static CarePlanActivityKindBuilder ConceptMap = CarePlanActivityKindBuilder._(
    validatedValue: 'ConceptMap',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ConceptMap'.toFhirStringBuilder,
  );

  /// Condition
  static CarePlanActivityKindBuilder Condition = CarePlanActivityKindBuilder._(
    validatedValue: 'Condition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Condition'.toFhirStringBuilder,
  );

  /// Consent
  static CarePlanActivityKindBuilder Consent = CarePlanActivityKindBuilder._(
    validatedValue: 'Consent',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Consent'.toFhirStringBuilder,
  );

  /// Contract
  static CarePlanActivityKindBuilder Contract = CarePlanActivityKindBuilder._(
    validatedValue: 'Contract',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contract'.toFhirStringBuilder,
  );

  /// Coverage
  static CarePlanActivityKindBuilder Coverage = CarePlanActivityKindBuilder._(
    validatedValue: 'Coverage',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coverage'.toFhirStringBuilder,
  );

  /// CoverageEligibilityRequest
  static CarePlanActivityKindBuilder CoverageEligibilityRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'CoverageEligibilityRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CoverageEligibilityRequest'.toFhirStringBuilder,
  );

  /// CoverageEligibilityResponse
  static CarePlanActivityKindBuilder CoverageEligibilityResponse =
      CarePlanActivityKindBuilder._(
    validatedValue: 'CoverageEligibilityResponse',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CoverageEligibilityResponse'.toFhirStringBuilder,
  );

  /// DetectedIssue
  static CarePlanActivityKindBuilder DetectedIssue =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DetectedIssue',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DetectedIssue'.toFhirStringBuilder,
  );

  /// Device
  static CarePlanActivityKindBuilder Device = CarePlanActivityKindBuilder._(
    validatedValue: 'Device',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Device'.toFhirStringBuilder,
  );

  /// DeviceDefinition
  static CarePlanActivityKindBuilder DeviceDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DeviceDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceDefinition'.toFhirStringBuilder,
  );

  /// DeviceMetric
  static CarePlanActivityKindBuilder DeviceMetric =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DeviceMetric',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceMetric'.toFhirStringBuilder,
  );

  /// DeviceRequest
  static CarePlanActivityKindBuilder DeviceRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DeviceRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceRequest'.toFhirStringBuilder,
  );

  /// DeviceUseStatement
  static CarePlanActivityKindBuilder DeviceUseStatement =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DeviceUseStatement',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DeviceUseStatement'.toFhirStringBuilder,
  );

  /// DiagnosticReport
  static CarePlanActivityKindBuilder DiagnosticReport =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DiagnosticReport',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DiagnosticReport'.toFhirStringBuilder,
  );

  /// DocumentManifest
  static CarePlanActivityKindBuilder DocumentManifest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DocumentManifest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DocumentManifest'.toFhirStringBuilder,
  );

  /// DocumentReference
  static CarePlanActivityKindBuilder DocumentReference =
      CarePlanActivityKindBuilder._(
    validatedValue: 'DocumentReference',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DocumentReference'.toFhirStringBuilder,
  );

  /// Encounter
  static CarePlanActivityKindBuilder Encounter = CarePlanActivityKindBuilder._(
    validatedValue: 'Encounter',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Encounter'.toFhirStringBuilder,
  );

  /// Endpoint
  static CarePlanActivityKindBuilder Endpoint = CarePlanActivityKindBuilder._(
    validatedValue: 'Endpoint',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Endpoint'.toFhirStringBuilder,
  );

  /// EnrollmentRequest
  static CarePlanActivityKindBuilder EnrollmentRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'EnrollmentRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentRequest'.toFhirStringBuilder,
  );

  /// EnrollmentResponse
  static CarePlanActivityKindBuilder EnrollmentResponse =
      CarePlanActivityKindBuilder._(
    validatedValue: 'EnrollmentResponse',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EnrollmentResponse'.toFhirStringBuilder,
  );

  /// EpisodeOfCare
  static CarePlanActivityKindBuilder EpisodeOfCare =
      CarePlanActivityKindBuilder._(
    validatedValue: 'EpisodeOfCare',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EpisodeOfCare'.toFhirStringBuilder,
  );

  /// EventDefinition
  static CarePlanActivityKindBuilder EventDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'EventDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EventDefinition'.toFhirStringBuilder,
  );

  /// Evidence
  static CarePlanActivityKindBuilder Evidence = CarePlanActivityKindBuilder._(
    validatedValue: 'Evidence',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Evidence'.toFhirStringBuilder,
  );

  /// EvidenceReport
  static CarePlanActivityKindBuilder EvidenceReport =
      CarePlanActivityKindBuilder._(
    validatedValue: 'EvidenceReport',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EvidenceReport'.toFhirStringBuilder,
  );

  /// EvidenceVariable
  static CarePlanActivityKindBuilder EvidenceVariable =
      CarePlanActivityKindBuilder._(
    validatedValue: 'EvidenceVariable',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EvidenceVariable'.toFhirStringBuilder,
  );

  /// ExampleScenario
  static CarePlanActivityKindBuilder ExampleScenario =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ExampleScenario',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ExampleScenario'.toFhirStringBuilder,
  );

  /// ExplanationOfBenefit
  static CarePlanActivityKindBuilder ExplanationOfBenefit =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ExplanationOfBenefit',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ExplanationOfBenefit'.toFhirStringBuilder,
  );

  /// FamilyMemberHistory
  static CarePlanActivityKindBuilder FamilyMemberHistory =
      CarePlanActivityKindBuilder._(
    validatedValue: 'FamilyMemberHistory',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FamilyMemberHistory'.toFhirStringBuilder,
  );

  /// Flag
  static CarePlanActivityKindBuilder Flag = CarePlanActivityKindBuilder._(
    validatedValue: 'Flag',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Flag'.toFhirStringBuilder,
  );

  /// Goal
  static CarePlanActivityKindBuilder Goal = CarePlanActivityKindBuilder._(
    validatedValue: 'Goal',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Goal'.toFhirStringBuilder,
  );

  /// GraphDefinition
  static CarePlanActivityKindBuilder GraphDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'GraphDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GraphDefinition'.toFhirStringBuilder,
  );

  /// Group
  static CarePlanActivityKindBuilder Group = CarePlanActivityKindBuilder._(
    validatedValue: 'Group',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Group'.toFhirStringBuilder,
  );

  /// GuidanceResponse
  static CarePlanActivityKindBuilder GuidanceResponse =
      CarePlanActivityKindBuilder._(
    validatedValue: 'GuidanceResponse',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GuidanceResponse'.toFhirStringBuilder,
  );

  /// HealthcareService
  static CarePlanActivityKindBuilder HealthcareService =
      CarePlanActivityKindBuilder._(
    validatedValue: 'HealthcareService',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'HealthcareService'.toFhirStringBuilder,
  );

  /// ImagingStudy
  static CarePlanActivityKindBuilder ImagingStudy =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ImagingStudy',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImagingStudy'.toFhirStringBuilder,
  );

  /// Immunization
  static CarePlanActivityKindBuilder Immunization =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Immunization',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Immunization'.toFhirStringBuilder,
  );

  /// ImmunizationEvaluation
  static CarePlanActivityKindBuilder ImmunizationEvaluation =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ImmunizationEvaluation',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationEvaluation'.toFhirStringBuilder,
  );

  /// ImmunizationRecommendation
  static CarePlanActivityKindBuilder ImmunizationRecommendation =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ImmunizationRecommendation',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImmunizationRecommendation'.toFhirStringBuilder,
  );

  /// ImplementationGuide
  static CarePlanActivityKindBuilder ImplementationGuide =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ImplementationGuide',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImplementationGuide'.toFhirStringBuilder,
  );

  /// Ingredient
  static CarePlanActivityKindBuilder Ingredient = CarePlanActivityKindBuilder._(
    validatedValue: 'Ingredient',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ingredient'.toFhirStringBuilder,
  );

  /// InsurancePlan
  static CarePlanActivityKindBuilder InsurancePlan =
      CarePlanActivityKindBuilder._(
    validatedValue: 'InsurancePlan',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'InsurancePlan'.toFhirStringBuilder,
  );

  /// Invoice
  static CarePlanActivityKindBuilder Invoice = CarePlanActivityKindBuilder._(
    validatedValue: 'Invoice',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Invoice'.toFhirStringBuilder,
  );

  /// Library
  static CarePlanActivityKindBuilder Library = CarePlanActivityKindBuilder._(
    validatedValue: 'Library',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Library'.toFhirStringBuilder,
  );

  /// Linkage
  static CarePlanActivityKindBuilder Linkage = CarePlanActivityKindBuilder._(
    validatedValue: 'Linkage',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Linkage'.toFhirStringBuilder,
  );

  /// List_
  static CarePlanActivityKindBuilder List_ = CarePlanActivityKindBuilder._(
    validatedValue: 'List',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'List'.toFhirStringBuilder,
  );

  /// Location
  static CarePlanActivityKindBuilder Location = CarePlanActivityKindBuilder._(
    validatedValue: 'Location',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Location'.toFhirStringBuilder,
  );

  /// ManufacturedItemDefinition
  static CarePlanActivityKindBuilder ManufacturedItemDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ManufacturedItemDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ManufacturedItemDefinition'.toFhirStringBuilder,
  );

  /// Measure
  static CarePlanActivityKindBuilder Measure = CarePlanActivityKindBuilder._(
    validatedValue: 'Measure',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Measure'.toFhirStringBuilder,
  );

  /// MeasureReport
  static CarePlanActivityKindBuilder MeasureReport =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MeasureReport',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MeasureReport'.toFhirStringBuilder,
  );

  /// Media
  static CarePlanActivityKindBuilder Media = CarePlanActivityKindBuilder._(
    validatedValue: 'Media',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Media'.toFhirStringBuilder,
  );

  /// Medication
  static CarePlanActivityKindBuilder Medication = CarePlanActivityKindBuilder._(
    validatedValue: 'Medication',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Medication'.toFhirStringBuilder,
  );

  /// MedicationAdministration
  static CarePlanActivityKindBuilder MedicationAdministration =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MedicationAdministration',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationAdministration'.toFhirStringBuilder,
  );

  /// MedicationDispense
  static CarePlanActivityKindBuilder MedicationDispense =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MedicationDispense',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationDispense'.toFhirStringBuilder,
  );

  /// MedicationKnowledge
  static CarePlanActivityKindBuilder MedicationKnowledge =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MedicationKnowledge',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationKnowledge'.toFhirStringBuilder,
  );

  /// MedicationRequest
  static CarePlanActivityKindBuilder MedicationRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MedicationRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationRequest'.toFhirStringBuilder,
  );

  /// MedicationStatement
  static CarePlanActivityKindBuilder MedicationStatement =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MedicationStatement',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicationStatement'.toFhirStringBuilder,
  );

  /// MedicinalProductDefinition
  static CarePlanActivityKindBuilder MedicinalProductDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MedicinalProductDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MedicinalProductDefinition'.toFhirStringBuilder,
  );

  /// MessageDefinition
  static CarePlanActivityKindBuilder MessageDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MessageDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MessageDefinition'.toFhirStringBuilder,
  );

  /// MessageHeader
  static CarePlanActivityKindBuilder MessageHeader =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MessageHeader',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MessageHeader'.toFhirStringBuilder,
  );

  /// MolecularSequence
  static CarePlanActivityKindBuilder MolecularSequence =
      CarePlanActivityKindBuilder._(
    validatedValue: 'MolecularSequence',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MolecularSequence'.toFhirStringBuilder,
  );

  /// NamingSystem
  static CarePlanActivityKindBuilder NamingSystem =
      CarePlanActivityKindBuilder._(
    validatedValue: 'NamingSystem',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NamingSystem'.toFhirStringBuilder,
  );

  /// NutritionOrder
  static CarePlanActivityKindBuilder NutritionOrder =
      CarePlanActivityKindBuilder._(
    validatedValue: 'NutritionOrder',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionOrder'.toFhirStringBuilder,
  );

  /// NutritionProduct
  static CarePlanActivityKindBuilder NutritionProduct =
      CarePlanActivityKindBuilder._(
    validatedValue: 'NutritionProduct',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NutritionProduct'.toFhirStringBuilder,
  );

  /// Observation
  static CarePlanActivityKindBuilder Observation =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Observation',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Observation'.toFhirStringBuilder,
  );

  /// ObservationDefinition
  static CarePlanActivityKindBuilder ObservationDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ObservationDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ObservationDefinition'.toFhirStringBuilder,
  );

  /// OperationDefinition
  static CarePlanActivityKindBuilder OperationDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'OperationDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OperationDefinition'.toFhirStringBuilder,
  );

  /// OperationOutcome
  static CarePlanActivityKindBuilder OperationOutcome =
      CarePlanActivityKindBuilder._(
    validatedValue: 'OperationOutcome',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OperationOutcome'.toFhirStringBuilder,
  );

  /// Organization
  static CarePlanActivityKindBuilder Organization =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Organization',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Organization'.toFhirStringBuilder,
  );

  /// OrganizationAffiliation
  static CarePlanActivityKindBuilder OrganizationAffiliation =
      CarePlanActivityKindBuilder._(
    validatedValue: 'OrganizationAffiliation',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OrganizationAffiliation'.toFhirStringBuilder,
  );

  /// PackagedProductDefinition
  static CarePlanActivityKindBuilder PackagedProductDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'PackagedProductDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PackagedProductDefinition'.toFhirStringBuilder,
  );

  /// Patient
  static CarePlanActivityKindBuilder Patient = CarePlanActivityKindBuilder._(
    validatedValue: 'Patient',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Patient'.toFhirStringBuilder,
  );

  /// PaymentNotice
  static CarePlanActivityKindBuilder PaymentNotice =
      CarePlanActivityKindBuilder._(
    validatedValue: 'PaymentNotice',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PaymentNotice'.toFhirStringBuilder,
  );

  /// PaymentReconciliation
  static CarePlanActivityKindBuilder PaymentReconciliation =
      CarePlanActivityKindBuilder._(
    validatedValue: 'PaymentReconciliation',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PaymentReconciliation'.toFhirStringBuilder,
  );

  /// Person
  static CarePlanActivityKindBuilder Person = CarePlanActivityKindBuilder._(
    validatedValue: 'Person',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Person'.toFhirStringBuilder,
  );

  /// PlanDefinition
  static CarePlanActivityKindBuilder PlanDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'PlanDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PlanDefinition'.toFhirStringBuilder,
  );

  /// Practitioner
  static CarePlanActivityKindBuilder Practitioner =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Practitioner',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Practitioner'.toFhirStringBuilder,
  );

  /// PractitionerRole
  static CarePlanActivityKindBuilder PractitionerRole =
      CarePlanActivityKindBuilder._(
    validatedValue: 'PractitionerRole',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PractitionerRole'.toFhirStringBuilder,
  );

  /// Procedure
  static CarePlanActivityKindBuilder Procedure = CarePlanActivityKindBuilder._(
    validatedValue: 'Procedure',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Procedure'.toFhirStringBuilder,
  );

  /// Provenance
  static CarePlanActivityKindBuilder Provenance = CarePlanActivityKindBuilder._(
    validatedValue: 'Provenance',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Provenance'.toFhirStringBuilder,
  );

  /// Questionnaire
  static CarePlanActivityKindBuilder Questionnaire =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Questionnaire',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Questionnaire'.toFhirStringBuilder,
  );

  /// QuestionnaireResponse
  static CarePlanActivityKindBuilder QuestionnaireResponse =
      CarePlanActivityKindBuilder._(
    validatedValue: 'QuestionnaireResponse',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'QuestionnaireResponse'.toFhirStringBuilder,
  );

  /// RegulatedAuthorization
  static CarePlanActivityKindBuilder RegulatedAuthorization =
      CarePlanActivityKindBuilder._(
    validatedValue: 'RegulatedAuthorization',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RegulatedAuthorization'.toFhirStringBuilder,
  );

  /// RelatedPerson
  static CarePlanActivityKindBuilder RelatedPerson =
      CarePlanActivityKindBuilder._(
    validatedValue: 'RelatedPerson',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RelatedPerson'.toFhirStringBuilder,
  );

  /// RequestGroup
  static CarePlanActivityKindBuilder RequestGroup =
      CarePlanActivityKindBuilder._(
    validatedValue: 'RequestGroup',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RequestGroup'.toFhirStringBuilder,
  );

  /// ResearchDefinition
  static CarePlanActivityKindBuilder ResearchDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ResearchDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchDefinition'.toFhirStringBuilder,
  );

  /// ResearchElementDefinition
  static CarePlanActivityKindBuilder ResearchElementDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ResearchElementDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchElementDefinition'.toFhirStringBuilder,
  );

  /// ResearchStudy
  static CarePlanActivityKindBuilder ResearchStudy =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ResearchStudy',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchStudy'.toFhirStringBuilder,
  );

  /// ResearchSubject
  static CarePlanActivityKindBuilder ResearchSubject =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ResearchSubject',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ResearchSubject'.toFhirStringBuilder,
  );

  /// RiskAssessment
  static CarePlanActivityKindBuilder RiskAssessment =
      CarePlanActivityKindBuilder._(
    validatedValue: 'RiskAssessment',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RiskAssessment'.toFhirStringBuilder,
  );

  /// Schedule
  static CarePlanActivityKindBuilder Schedule = CarePlanActivityKindBuilder._(
    validatedValue: 'Schedule',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Schedule'.toFhirStringBuilder,
  );

  /// SearchParameter
  static CarePlanActivityKindBuilder SearchParameter =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SearchParameter',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SearchParameter'.toFhirStringBuilder,
  );

  /// ServiceRequest
  static CarePlanActivityKindBuilder ServiceRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'ServiceRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ServiceRequest'.toFhirStringBuilder,
  );

  /// Slot
  static CarePlanActivityKindBuilder Slot = CarePlanActivityKindBuilder._(
    validatedValue: 'Slot',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Slot'.toFhirStringBuilder,
  );

  /// Specimen
  static CarePlanActivityKindBuilder Specimen = CarePlanActivityKindBuilder._(
    validatedValue: 'Specimen',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Specimen'.toFhirStringBuilder,
  );

  /// SpecimenDefinition
  static CarePlanActivityKindBuilder SpecimenDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SpecimenDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SpecimenDefinition'.toFhirStringBuilder,
  );

  /// StructureDefinition
  static CarePlanActivityKindBuilder StructureDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'StructureDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'StructureDefinition'.toFhirStringBuilder,
  );

  /// StructureMap
  static CarePlanActivityKindBuilder StructureMap =
      CarePlanActivityKindBuilder._(
    validatedValue: 'StructureMap',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'StructureMap'.toFhirStringBuilder,
  );

  /// Subscription
  static CarePlanActivityKindBuilder Subscription =
      CarePlanActivityKindBuilder._(
    validatedValue: 'Subscription',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Subscription'.toFhirStringBuilder,
  );

  /// SubscriptionStatus
  static CarePlanActivityKindBuilder SubscriptionStatus =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SubscriptionStatus',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubscriptionStatus'.toFhirStringBuilder,
  );

  /// SubscriptionTopic
  static CarePlanActivityKindBuilder SubscriptionTopic =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SubscriptionTopic',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubscriptionTopic'.toFhirStringBuilder,
  );

  /// Substance
  static CarePlanActivityKindBuilder Substance = CarePlanActivityKindBuilder._(
    validatedValue: 'Substance',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Substance'.toFhirStringBuilder,
  );

  /// SubstanceDefinition
  static CarePlanActivityKindBuilder SubstanceDefinition =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SubstanceDefinition',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SubstanceDefinition'.toFhirStringBuilder,
  );

  /// SupplyDelivery
  static CarePlanActivityKindBuilder SupplyDelivery =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SupplyDelivery',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyDelivery'.toFhirStringBuilder,
  );

  /// SupplyRequest
  static CarePlanActivityKindBuilder SupplyRequest =
      CarePlanActivityKindBuilder._(
    validatedValue: 'SupplyRequest',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SupplyRequest'.toFhirStringBuilder,
  );

  /// Task
  static CarePlanActivityKindBuilder Task = CarePlanActivityKindBuilder._(
    validatedValue: 'Task',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Task'.toFhirStringBuilder,
  );

  /// TerminologyCapabilities
  static CarePlanActivityKindBuilder TerminologyCapabilities =
      CarePlanActivityKindBuilder._(
    validatedValue: 'TerminologyCapabilities',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TerminologyCapabilities'.toFhirStringBuilder,
  );

  /// TestReport
  static CarePlanActivityKindBuilder TestReport = CarePlanActivityKindBuilder._(
    validatedValue: 'TestReport',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TestReport'.toFhirStringBuilder,
  );

  /// TestScript
  static CarePlanActivityKindBuilder TestScript = CarePlanActivityKindBuilder._(
    validatedValue: 'TestScript',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TestScript'.toFhirStringBuilder,
  );

  /// ValueSet
  static CarePlanActivityKindBuilder ValueSet = CarePlanActivityKindBuilder._(
    validatedValue: 'ValueSet',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ValueSet'.toFhirStringBuilder,
  );

  /// VerificationResult
  static CarePlanActivityKindBuilder VerificationResult =
      CarePlanActivityKindBuilder._(
    validatedValue: 'VerificationResult',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VerificationResult'.toFhirStringBuilder,
  );

  /// VisionPrescription
  static CarePlanActivityKindBuilder VisionPrescription =
      CarePlanActivityKindBuilder._(
    validatedValue: 'VisionPrescription',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VisionPrescription'.toFhirStringBuilder,
  );

  /// Parameters
  static CarePlanActivityKindBuilder Parameters = CarePlanActivityKindBuilder._(
    validatedValue: 'Parameters',
    system:
        'http://hl7.org/fhir/ValueSet/care-plan-activity-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Parameters'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CarePlanActivityKindBuilder elementOnly =
      CarePlanActivityKindBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<CarePlanActivityKindBuilder> values = [
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
  CarePlanActivityKindBuilder clone() => CarePlanActivityKindBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CarePlanActivityKindBuilder withElement(ElementBuilder? newElement) {
    return CarePlanActivityKindBuilder._(
      validatedValue: value,
      element: newElement,
    );
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
  CarePlanActivityKindBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return CarePlanActivityKindBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
