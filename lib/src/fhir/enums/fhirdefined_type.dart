// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Data Types and Resource Types.
@collection
class FHIRDefinedType {
  /// Constructor for internal use (like enum)
  FHIRDefinedType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FHIRDefinedType values
  /// Address
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Address = FHIRDefinedType(
    fhirCode: 'Address',
  );

  /// Age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Age = FHIRDefinedType(
    fhirCode: 'Age',
  );

  /// Annotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Annotation = FHIRDefinedType(
    fhirCode: 'Annotation',
  );

  /// Attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Attachment = FHIRDefinedType(
    fhirCode: 'Attachment',
  );

  /// BackboneElement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType BackboneElement = FHIRDefinedType(
    fhirCode: 'BackboneElement',
  );

  /// CodeableConcept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CodeableConcept = FHIRDefinedType(
    fhirCode: 'CodeableConcept',
  );

  /// CodeableReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CodeableReference = FHIRDefinedType(
    fhirCode: 'CodeableReference',
  );

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Coding = FHIRDefinedType(
    fhirCode: 'Coding',
  );

  /// ContactDetail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ContactDetail = FHIRDefinedType(
    fhirCode: 'ContactDetail',
  );

  /// ContactPoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ContactPoint = FHIRDefinedType(
    fhirCode: 'ContactPoint',
  );

  /// Contributor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Contributor = FHIRDefinedType(
    fhirCode: 'Contributor',
  );

  /// Count
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Count = FHIRDefinedType(
    fhirCode: 'Count',
  );

  /// DataRequirement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DataRequirement = FHIRDefinedType(
    fhirCode: 'DataRequirement',
  );

  /// Distance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Distance = FHIRDefinedType(
    fhirCode: 'Distance',
  );

  /// Dosage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Dosage = FHIRDefinedType(
    fhirCode: 'Dosage',
  );

  /// Duration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Duration = FHIRDefinedType(
    fhirCode: 'Duration',
  );

  /// Element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Element_ = FHIRDefinedType(
    fhirCode: 'Element',
  );

  /// ElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ElementDefinition = FHIRDefinedType(
    fhirCode: 'ElementDefinition',
  );

  /// Expression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Expression = FHIRDefinedType(
    fhirCode: 'Expression',
  );

  /// Extension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Extension = FHIRDefinedType(
    fhirCode: 'Extension',
  );

  /// HumanName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType HumanName = FHIRDefinedType(
    fhirCode: 'HumanName',
  );

  /// Identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Identifier = FHIRDefinedType(
    fhirCode: 'Identifier',
  );

  /// MarketingStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MarketingStatus = FHIRDefinedType(
    fhirCode: 'MarketingStatus',
  );

  /// Meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Meta = FHIRDefinedType(
    fhirCode: 'Meta',
  );

  /// Money
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Money = FHIRDefinedType(
    fhirCode: 'Money',
  );

  /// MoneyQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MoneyQuantity = FHIRDefinedType(
    fhirCode: 'MoneyQuantity',
  );

  /// Narrative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Narrative = FHIRDefinedType(
    fhirCode: 'Narrative',
  );

  /// ParameterDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ParameterDefinition = FHIRDefinedType(
    fhirCode: 'ParameterDefinition',
  );

  /// Period
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Period = FHIRDefinedType(
    fhirCode: 'Period',
  );

  /// Population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Population = FHIRDefinedType(
    fhirCode: 'Population',
  );

  /// ProdCharacteristic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ProdCharacteristic = FHIRDefinedType(
    fhirCode: 'ProdCharacteristic',
  );

  /// ProductShelfLife
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ProductShelfLife = FHIRDefinedType(
    fhirCode: 'ProductShelfLife',
  );

  /// Quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Quantity = FHIRDefinedType(
    fhirCode: 'Quantity',
  );

  /// Range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Range = FHIRDefinedType(
    fhirCode: 'Range',
  );

  /// Ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Ratio = FHIRDefinedType(
    fhirCode: 'Ratio',
  );

  /// RatioRange
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType RatioRange = FHIRDefinedType(
    fhirCode: 'RatioRange',
  );

  /// Reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Reference = FHIRDefinedType(
    fhirCode: 'Reference',
  );

  /// RelatedArtifact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType RelatedArtifact = FHIRDefinedType(
    fhirCode: 'RelatedArtifact',
  );

  /// SampledData
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SampledData = FHIRDefinedType(
    fhirCode: 'SampledData',
  );

  /// Signature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Signature = FHIRDefinedType(
    fhirCode: 'Signature',
  );

  /// SimpleQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SimpleQuantity = FHIRDefinedType(
    fhirCode: 'SimpleQuantity',
  );

  /// Timing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Timing = FHIRDefinedType(
    fhirCode: 'Timing',
  );

  /// TriggerDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType TriggerDefinition = FHIRDefinedType(
    fhirCode: 'TriggerDefinition',
  );

  /// UsageContext
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType UsageContext = FHIRDefinedType(
    fhirCode: 'UsageContext',
  );

  /// base64Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType base64Binary = FHIRDefinedType(
    fhirCode: 'base64Binary',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType boolean = FHIRDefinedType(
    fhirCode: 'boolean',
  );

  /// canonical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType canonical = FHIRDefinedType(
    fhirCode: 'canonical',
  );

  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType code = FHIRDefinedType(
    fhirCode: 'code',
  );

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType date = FHIRDefinedType(
    fhirCode: 'date',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType dateTime = FHIRDefinedType(
    fhirCode: 'dateTime',
  );

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType decimal = FHIRDefinedType(
    fhirCode: 'decimal',
  );

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType id = FHIRDefinedType(
    fhirCode: 'id',
  );

  /// instant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType instant = FHIRDefinedType(
    fhirCode: 'instant',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType integer = FHIRDefinedType(
    fhirCode: 'integer',
  );

  /// markdown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType markdown = FHIRDefinedType(
    fhirCode: 'markdown',
  );

  /// oid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType oid = FHIRDefinedType(
    fhirCode: 'oid',
  );

  /// positiveInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType positiveInt = FHIRDefinedType(
    fhirCode: 'positiveInt',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType string = FHIRDefinedType(
    fhirCode: 'string',
  );

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType time = FHIRDefinedType(
    fhirCode: 'time',
  );

  /// unsignedInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType unsignedInt = FHIRDefinedType(
    fhirCode: 'unsignedInt',
  );

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType uri = FHIRDefinedType(
    fhirCode: 'uri',
  );

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType url = FHIRDefinedType(
    fhirCode: 'url',
  );

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType uuid = FHIRDefinedType(
    fhirCode: 'uuid',
  );

  /// xhtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType xhtml = FHIRDefinedType(
    fhirCode: 'xhtml',
  );

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Resource = FHIRDefinedType(
    fhirCode: 'Resource',
  );

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Binary = FHIRDefinedType(
    fhirCode: 'Binary',
  );

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Bundle = FHIRDefinedType(
    fhirCode: 'Bundle',
  );

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DomainResource = FHIRDefinedType(
    fhirCode: 'DomainResource',
  );

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Account = FHIRDefinedType(
    fhirCode: 'Account',
  );

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ActivityDefinition = FHIRDefinedType(
    fhirCode: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType AdministrableProductDefinition = FHIRDefinedType(
    fhirCode: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType AdverseEvent = FHIRDefinedType(
    fhirCode: 'AdverseEvent',
  );

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType AllergyIntolerance = FHIRDefinedType(
    fhirCode: 'AllergyIntolerance',
  );

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Appointment = FHIRDefinedType(
    fhirCode: 'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType AppointmentResponse = FHIRDefinedType(
    fhirCode: 'AppointmentResponse',
  );

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType AuditEvent = FHIRDefinedType(
    fhirCode: 'AuditEvent',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Basic = FHIRDefinedType(
    fhirCode: 'Basic',
  );

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType BiologicallyDerivedProduct = FHIRDefinedType(
    fhirCode: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType BodyStructure = FHIRDefinedType(
    fhirCode: 'BodyStructure',
  );

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CapabilityStatement = FHIRDefinedType(
    fhirCode: 'CapabilityStatement',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CarePlan = FHIRDefinedType(
    fhirCode: 'CarePlan',
  );

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CareTeam = FHIRDefinedType(
    fhirCode: 'CareTeam',
  );

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CatalogEntry = FHIRDefinedType(
    fhirCode: 'CatalogEntry',
  );

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ChargeItem = FHIRDefinedType(
    fhirCode: 'ChargeItem',
  );

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ChargeItemDefinition = FHIRDefinedType(
    fhirCode: 'ChargeItemDefinition',
  );

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Citation = FHIRDefinedType(
    fhirCode: 'Citation',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Claim = FHIRDefinedType(
    fhirCode: 'Claim',
  );

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ClaimResponse = FHIRDefinedType(
    fhirCode: 'ClaimResponse',
  );

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ClinicalImpression = FHIRDefinedType(
    fhirCode: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ClinicalUseDefinition = FHIRDefinedType(
    fhirCode: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CodeSystem = FHIRDefinedType(
    fhirCode: 'CodeSystem',
  );

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Communication = FHIRDefinedType(
    fhirCode: 'Communication',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CommunicationRequest = FHIRDefinedType(
    fhirCode: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CompartmentDefinition = FHIRDefinedType(
    fhirCode: 'CompartmentDefinition',
  );

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Composition = FHIRDefinedType(
    fhirCode: 'Composition',
  );

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ConceptMap = FHIRDefinedType(
    fhirCode: 'ConceptMap',
  );

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Condition = FHIRDefinedType(
    fhirCode: 'Condition',
  );

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Consent = FHIRDefinedType(
    fhirCode: 'Consent',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Contract = FHIRDefinedType(
    fhirCode: 'Contract',
  );

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Coverage = FHIRDefinedType(
    fhirCode: 'Coverage',
  );

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CoverageEligibilityRequest = FHIRDefinedType(
    fhirCode: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType CoverageEligibilityResponse = FHIRDefinedType(
    fhirCode: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DetectedIssue = FHIRDefinedType(
    fhirCode: 'DetectedIssue',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Device = FHIRDefinedType(
    fhirCode: 'Device',
  );

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DeviceDefinition = FHIRDefinedType(
    fhirCode: 'DeviceDefinition',
  );

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DeviceMetric = FHIRDefinedType(
    fhirCode: 'DeviceMetric',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DeviceRequest = FHIRDefinedType(
    fhirCode: 'DeviceRequest',
  );

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DeviceUseStatement = FHIRDefinedType(
    fhirCode: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DiagnosticReport = FHIRDefinedType(
    fhirCode: 'DiagnosticReport',
  );

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DocumentManifest = FHIRDefinedType(
    fhirCode: 'DocumentManifest',
  );

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType DocumentReference = FHIRDefinedType(
    fhirCode: 'DocumentReference',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Encounter = FHIRDefinedType(
    fhirCode: 'Encounter',
  );

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Endpoint = FHIRDefinedType(
    fhirCode: 'Endpoint',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType EnrollmentRequest = FHIRDefinedType(
    fhirCode: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType EnrollmentResponse = FHIRDefinedType(
    fhirCode: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType EpisodeOfCare = FHIRDefinedType(
    fhirCode: 'EpisodeOfCare',
  );

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType EventDefinition = FHIRDefinedType(
    fhirCode: 'EventDefinition',
  );

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Evidence = FHIRDefinedType(
    fhirCode: 'Evidence',
  );

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType EvidenceReport = FHIRDefinedType(
    fhirCode: 'EvidenceReport',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType EvidenceVariable = FHIRDefinedType(
    fhirCode: 'EvidenceVariable',
  );

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ExampleScenario = FHIRDefinedType(
    fhirCode: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ExplanationOfBenefit = FHIRDefinedType(
    fhirCode: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType FamilyMemberHistory = FHIRDefinedType(
    fhirCode: 'FamilyMemberHistory',
  );

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Flag = FHIRDefinedType(
    fhirCode: 'Flag',
  );

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Goal = FHIRDefinedType(
    fhirCode: 'Goal',
  );

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType GraphDefinition = FHIRDefinedType(
    fhirCode: 'GraphDefinition',
  );

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Group = FHIRDefinedType(
    fhirCode: 'Group',
  );

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType GuidanceResponse = FHIRDefinedType(
    fhirCode: 'GuidanceResponse',
  );

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType HealthcareService = FHIRDefinedType(
    fhirCode: 'HealthcareService',
  );

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ImagingStudy = FHIRDefinedType(
    fhirCode: 'ImagingStudy',
  );

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Immunization = FHIRDefinedType(
    fhirCode: 'Immunization',
  );

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ImmunizationEvaluation = FHIRDefinedType(
    fhirCode: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ImmunizationRecommendation = FHIRDefinedType(
    fhirCode: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ImplementationGuide = FHIRDefinedType(
    fhirCode: 'ImplementationGuide',
  );

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Ingredient = FHIRDefinedType(
    fhirCode: 'Ingredient',
  );

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType InsurancePlan = FHIRDefinedType(
    fhirCode: 'InsurancePlan',
  );

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Invoice = FHIRDefinedType(
    fhirCode: 'Invoice',
  );

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Library = FHIRDefinedType(
    fhirCode: 'Library',
  );

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Linkage = FHIRDefinedType(
    fhirCode: 'Linkage',
  );

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType List_ = FHIRDefinedType(
    fhirCode: 'List',
  );

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Location = FHIRDefinedType(
    fhirCode: 'Location',
  );

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ManufacturedItemDefinition = FHIRDefinedType(
    fhirCode: 'ManufacturedItemDefinition',
  );

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Measure = FHIRDefinedType(
    fhirCode: 'Measure',
  );

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MeasureReport = FHIRDefinedType(
    fhirCode: 'MeasureReport',
  );

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Media = FHIRDefinedType(
    fhirCode: 'Media',
  );

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Medication = FHIRDefinedType(
    fhirCode: 'Medication',
  );

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MedicationAdministration = FHIRDefinedType(
    fhirCode: 'MedicationAdministration',
  );

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MedicationDispense = FHIRDefinedType(
    fhirCode: 'MedicationDispense',
  );

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MedicationKnowledge = FHIRDefinedType(
    fhirCode: 'MedicationKnowledge',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MedicationRequest = FHIRDefinedType(
    fhirCode: 'MedicationRequest',
  );

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MedicationStatement = FHIRDefinedType(
    fhirCode: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MedicinalProductDefinition = FHIRDefinedType(
    fhirCode: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MessageDefinition = FHIRDefinedType(
    fhirCode: 'MessageDefinition',
  );

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MessageHeader = FHIRDefinedType(
    fhirCode: 'MessageHeader',
  );

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType MolecularSequence = FHIRDefinedType(
    fhirCode: 'MolecularSequence',
  );

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType NamingSystem = FHIRDefinedType(
    fhirCode: 'NamingSystem',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType NutritionOrder = FHIRDefinedType(
    fhirCode: 'NutritionOrder',
  );

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType NutritionProduct = FHIRDefinedType(
    fhirCode: 'NutritionProduct',
  );

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Observation = FHIRDefinedType(
    fhirCode: 'Observation',
  );

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ObservationDefinition = FHIRDefinedType(
    fhirCode: 'ObservationDefinition',
  );

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType OperationDefinition = FHIRDefinedType(
    fhirCode: 'OperationDefinition',
  );

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType OperationOutcome = FHIRDefinedType(
    fhirCode: 'OperationOutcome',
  );

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Organization = FHIRDefinedType(
    fhirCode: 'Organization',
  );

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType OrganizationAffiliation = FHIRDefinedType(
    fhirCode: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType PackagedProductDefinition = FHIRDefinedType(
    fhirCode: 'PackagedProductDefinition',
  );

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Patient = FHIRDefinedType(
    fhirCode: 'Patient',
  );

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType PaymentNotice = FHIRDefinedType(
    fhirCode: 'PaymentNotice',
  );

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType PaymentReconciliation = FHIRDefinedType(
    fhirCode: 'PaymentReconciliation',
  );

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Person = FHIRDefinedType(
    fhirCode: 'Person',
  );

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType PlanDefinition = FHIRDefinedType(
    fhirCode: 'PlanDefinition',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Practitioner = FHIRDefinedType(
    fhirCode: 'Practitioner',
  );

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType PractitionerRole = FHIRDefinedType(
    fhirCode: 'PractitionerRole',
  );

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Procedure = FHIRDefinedType(
    fhirCode: 'Procedure',
  );

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Provenance = FHIRDefinedType(
    fhirCode: 'Provenance',
  );

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Questionnaire = FHIRDefinedType(
    fhirCode: 'Questionnaire',
  );

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType QuestionnaireResponse = FHIRDefinedType(
    fhirCode: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType RegulatedAuthorization = FHIRDefinedType(
    fhirCode: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType RelatedPerson = FHIRDefinedType(
    fhirCode: 'RelatedPerson',
  );

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType RequestGroup = FHIRDefinedType(
    fhirCode: 'RequestGroup',
  );

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ResearchDefinition = FHIRDefinedType(
    fhirCode: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ResearchElementDefinition = FHIRDefinedType(
    fhirCode: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ResearchStudy = FHIRDefinedType(
    fhirCode: 'ResearchStudy',
  );

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ResearchSubject = FHIRDefinedType(
    fhirCode: 'ResearchSubject',
  );

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType RiskAssessment = FHIRDefinedType(
    fhirCode: 'RiskAssessment',
  );

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Schedule = FHIRDefinedType(
    fhirCode: 'Schedule',
  );

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SearchParameter = FHIRDefinedType(
    fhirCode: 'SearchParameter',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ServiceRequest = FHIRDefinedType(
    fhirCode: 'ServiceRequest',
  );

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Slot = FHIRDefinedType(
    fhirCode: 'Slot',
  );

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Specimen = FHIRDefinedType(
    fhirCode: 'Specimen',
  );

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SpecimenDefinition = FHIRDefinedType(
    fhirCode: 'SpecimenDefinition',
  );

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType StructureDefinition = FHIRDefinedType(
    fhirCode: 'StructureDefinition',
  );

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType StructureMap = FHIRDefinedType(
    fhirCode: 'StructureMap',
  );

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Subscription = FHIRDefinedType(
    fhirCode: 'Subscription',
  );

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SubscriptionStatus = FHIRDefinedType(
    fhirCode: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SubscriptionTopic = FHIRDefinedType(
    fhirCode: 'SubscriptionTopic',
  );

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Substance = FHIRDefinedType(
    fhirCode: 'Substance',
  );

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SubstanceDefinition = FHIRDefinedType(
    fhirCode: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SupplyDelivery = FHIRDefinedType(
    fhirCode: 'SupplyDelivery',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType SupplyRequest = FHIRDefinedType(
    fhirCode: 'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Task = FHIRDefinedType(
    fhirCode: 'Task',
  );

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType TerminologyCapabilities = FHIRDefinedType(
    fhirCode: 'TerminologyCapabilities',
  );

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType TestReport = FHIRDefinedType(
    fhirCode: 'TestReport',
  );

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType TestScript = FHIRDefinedType(
    fhirCode: 'TestScript',
  );

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType ValueSet = FHIRDefinedType(
    fhirCode: 'ValueSet',
  );

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType VerificationResult = FHIRDefinedType(
    fhirCode: 'VerificationResult',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType VisionPrescription = FHIRDefinedType(
    fhirCode: 'VisionPrescription',
  );

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRDefinedType Parameters = FHIRDefinedType(
    fhirCode: 'Parameters',
  );

  /// For instances where an Element is present but not value

  static final FHIRDefinedType elementOnly = FHIRDefinedType();

  /// List of all enum-like values
  static final List<FHIRDefinedType> values = [
    Address,
    Age,
    Annotation,
    Attachment,
    BackboneElement,
    CodeableConcept,
    CodeableReference,
    Coding,
    ContactDetail,
    ContactPoint,
    Contributor,
    Count,
    DataRequirement,
    Distance,
    Dosage,
    Duration,
    Element_,
    ElementDefinition,
    Expression,
    Extension,
    HumanName,
    Identifier,
    MarketingStatus,
    Meta,
    Money,
    MoneyQuantity,
    Narrative,
    ParameterDefinition,
    Period,
    Population,
    ProdCharacteristic,
    ProductShelfLife,
    Quantity,
    Range,
    Ratio,
    RatioRange,
    Reference,
    RelatedArtifact,
    SampledData,
    Signature,
    SimpleQuantity,
    Timing,
    TriggerDefinition,
    UsageContext,
    base64Binary,
    boolean,
    canonical,
    code,
    date,
    dateTime,
    decimal,
    id,
    instant,
    integer,
    markdown,
    oid,
    positiveInt,
    string,
    time,
    unsignedInt,
    uri,
    url,
    uuid,
    xhtml,
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

  /// Returns the enum value with an element attached
  FHIRDefinedType withElement(Element? newElement) {
    return FHIRDefinedType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FHIRDefinedType] from JSON.
  static FHIRDefinedType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDefinedType.elementOnly.withElement(element);
    }
    return FHIRDefinedType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRDefinedType.$fhirCode';
}
