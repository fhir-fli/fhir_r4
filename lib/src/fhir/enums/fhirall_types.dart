// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Abstract Types, Data Types and Resource Types.
@collection
class FHIRAllTypes {
  /// Constructor for internal use (like enum)
  FHIRAllTypes({this.fhirCode, this.element})
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

  /// FHIRAllTypes values
  /// Address
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Address = FHIRAllTypes(
    fhirCode: 'Address',
  );

  /// Age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Age = FHIRAllTypes(
    fhirCode: 'Age',
  );

  /// Annotation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Annotation = FHIRAllTypes(
    fhirCode: 'Annotation',
  );

  /// Attachment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Attachment = FHIRAllTypes(
    fhirCode: 'Attachment',
  );

  /// BackboneElement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes BackboneElement = FHIRAllTypes(
    fhirCode: 'BackboneElement',
  );

  /// CodeableConcept
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CodeableConcept = FHIRAllTypes(
    fhirCode: 'CodeableConcept',
  );

  /// CodeableReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CodeableReference = FHIRAllTypes(
    fhirCode: 'CodeableReference',
  );

  /// Coding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Coding = FHIRAllTypes(
    fhirCode: 'Coding',
  );

  /// ContactDetail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ContactDetail = FHIRAllTypes(
    fhirCode: 'ContactDetail',
  );

  /// ContactPoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ContactPoint = FHIRAllTypes(
    fhirCode: 'ContactPoint',
  );

  /// Contributor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Contributor = FHIRAllTypes(
    fhirCode: 'Contributor',
  );

  /// Count
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Count = FHIRAllTypes(
    fhirCode: 'Count',
  );

  /// DataRequirement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DataRequirement = FHIRAllTypes(
    fhirCode: 'DataRequirement',
  );

  /// Distance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Distance = FHIRAllTypes(
    fhirCode: 'Distance',
  );

  /// Dosage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Dosage = FHIRAllTypes(
    fhirCode: 'Dosage',
  );

  /// Duration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Duration = FHIRAllTypes(
    fhirCode: 'Duration',
  );

  /// Element_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Element_ = FHIRAllTypes(
    fhirCode: 'Element',
  );

  /// ElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ElementDefinition = FHIRAllTypes(
    fhirCode: 'ElementDefinition',
  );

  /// Expression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Expression = FHIRAllTypes(
    fhirCode: 'Expression',
  );

  /// Extension
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Extension = FHIRAllTypes(
    fhirCode: 'Extension',
  );

  /// HumanName
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes HumanName = FHIRAllTypes(
    fhirCode: 'HumanName',
  );

  /// Identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Identifier = FHIRAllTypes(
    fhirCode: 'Identifier',
  );

  /// MarketingStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MarketingStatus = FHIRAllTypes(
    fhirCode: 'MarketingStatus',
  );

  /// Meta
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Meta = FHIRAllTypes(
    fhirCode: 'Meta',
  );

  /// Money
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Money = FHIRAllTypes(
    fhirCode: 'Money',
  );

  /// MoneyQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MoneyQuantity = FHIRAllTypes(
    fhirCode: 'MoneyQuantity',
  );

  /// Narrative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Narrative = FHIRAllTypes(
    fhirCode: 'Narrative',
  );

  /// ParameterDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ParameterDefinition = FHIRAllTypes(
    fhirCode: 'ParameterDefinition',
  );

  /// Period
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Period = FHIRAllTypes(
    fhirCode: 'Period',
  );

  /// Population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Population = FHIRAllTypes(
    fhirCode: 'Population',
  );

  /// ProdCharacteristic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ProdCharacteristic = FHIRAllTypes(
    fhirCode: 'ProdCharacteristic',
  );

  /// ProductShelfLife
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ProductShelfLife = FHIRAllTypes(
    fhirCode: 'ProductShelfLife',
  );

  /// Quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Quantity = FHIRAllTypes(
    fhirCode: 'Quantity',
  );

  /// Range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Range = FHIRAllTypes(
    fhirCode: 'Range',
  );

  /// Ratio
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Ratio = FHIRAllTypes(
    fhirCode: 'Ratio',
  );

  /// RatioRange
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes RatioRange = FHIRAllTypes(
    fhirCode: 'RatioRange',
  );

  /// Reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Reference = FHIRAllTypes(
    fhirCode: 'Reference',
  );

  /// RelatedArtifact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes RelatedArtifact = FHIRAllTypes(
    fhirCode: 'RelatedArtifact',
  );

  /// SampledData
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SampledData = FHIRAllTypes(
    fhirCode: 'SampledData',
  );

  /// Signature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Signature = FHIRAllTypes(
    fhirCode: 'Signature',
  );

  /// SimpleQuantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SimpleQuantity = FHIRAllTypes(
    fhirCode: 'SimpleQuantity',
  );

  /// Timing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Timing = FHIRAllTypes(
    fhirCode: 'Timing',
  );

  /// TriggerDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes TriggerDefinition = FHIRAllTypes(
    fhirCode: 'TriggerDefinition',
  );

  /// UsageContext
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes UsageContext = FHIRAllTypes(
    fhirCode: 'UsageContext',
  );

  /// base64Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes base64Binary = FHIRAllTypes(
    fhirCode: 'base64Binary',
  );

  /// boolean
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes boolean = FHIRAllTypes(
    fhirCode: 'boolean',
  );

  /// canonical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes canonical = FHIRAllTypes(
    fhirCode: 'canonical',
  );

  /// code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes code = FHIRAllTypes(
    fhirCode: 'code',
  );

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes date = FHIRAllTypes(
    fhirCode: 'date',
  );

  /// dateTime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes dateTime = FHIRAllTypes(
    fhirCode: 'dateTime',
  );

  /// decimal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes decimal = FHIRAllTypes(
    fhirCode: 'decimal',
  );

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes id = FHIRAllTypes(
    fhirCode: 'id',
  );

  /// instant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes instant = FHIRAllTypes(
    fhirCode: 'instant',
  );

  /// integer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes integer = FHIRAllTypes(
    fhirCode: 'integer',
  );

  /// markdown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes markdown = FHIRAllTypes(
    fhirCode: 'markdown',
  );

  /// oid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes oid = FHIRAllTypes(
    fhirCode: 'oid',
  );

  /// positiveInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes positiveInt = FHIRAllTypes(
    fhirCode: 'positiveInt',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes string = FHIRAllTypes(
    fhirCode: 'string',
  );

  /// time
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes time = FHIRAllTypes(
    fhirCode: 'time',
  );

  /// unsignedInt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes unsignedInt = FHIRAllTypes(
    fhirCode: 'unsignedInt',
  );

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes uri = FHIRAllTypes(
    fhirCode: 'uri',
  );

  /// url
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes url = FHIRAllTypes(
    fhirCode: 'url',
  );

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes uuid = FHIRAllTypes(
    fhirCode: 'uuid',
  );

  /// xhtml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes xhtml = FHIRAllTypes(
    fhirCode: 'xhtml',
  );

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Resource = FHIRAllTypes(
    fhirCode: 'Resource',
  );

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Binary = FHIRAllTypes(
    fhirCode: 'Binary',
  );

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Bundle = FHIRAllTypes(
    fhirCode: 'Bundle',
  );

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DomainResource = FHIRAllTypes(
    fhirCode: 'DomainResource',
  );

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Account = FHIRAllTypes(
    fhirCode: 'Account',
  );

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ActivityDefinition = FHIRAllTypes(
    fhirCode: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes AdministrableProductDefinition = FHIRAllTypes(
    fhirCode: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes AdverseEvent = FHIRAllTypes(
    fhirCode: 'AdverseEvent',
  );

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes AllergyIntolerance = FHIRAllTypes(
    fhirCode: 'AllergyIntolerance',
  );

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Appointment = FHIRAllTypes(
    fhirCode: 'Appointment',
  );

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes AppointmentResponse = FHIRAllTypes(
    fhirCode: 'AppointmentResponse',
  );

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes AuditEvent = FHIRAllTypes(
    fhirCode: 'AuditEvent',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Basic = FHIRAllTypes(
    fhirCode: 'Basic',
  );

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes BiologicallyDerivedProduct = FHIRAllTypes(
    fhirCode: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes BodyStructure = FHIRAllTypes(
    fhirCode: 'BodyStructure',
  );

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CapabilityStatement = FHIRAllTypes(
    fhirCode: 'CapabilityStatement',
  );

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CarePlan = FHIRAllTypes(
    fhirCode: 'CarePlan',
  );

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CareTeam = FHIRAllTypes(
    fhirCode: 'CareTeam',
  );

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CatalogEntry = FHIRAllTypes(
    fhirCode: 'CatalogEntry',
  );

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ChargeItem = FHIRAllTypes(
    fhirCode: 'ChargeItem',
  );

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ChargeItemDefinition = FHIRAllTypes(
    fhirCode: 'ChargeItemDefinition',
  );

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Citation = FHIRAllTypes(
    fhirCode: 'Citation',
  );

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Claim = FHIRAllTypes(
    fhirCode: 'Claim',
  );

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ClaimResponse = FHIRAllTypes(
    fhirCode: 'ClaimResponse',
  );

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ClinicalImpression = FHIRAllTypes(
    fhirCode: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ClinicalUseDefinition = FHIRAllTypes(
    fhirCode: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CodeSystem = FHIRAllTypes(
    fhirCode: 'CodeSystem',
  );

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Communication = FHIRAllTypes(
    fhirCode: 'Communication',
  );

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CommunicationRequest = FHIRAllTypes(
    fhirCode: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CompartmentDefinition = FHIRAllTypes(
    fhirCode: 'CompartmentDefinition',
  );

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Composition = FHIRAllTypes(
    fhirCode: 'Composition',
  );

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ConceptMap = FHIRAllTypes(
    fhirCode: 'ConceptMap',
  );

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Condition = FHIRAllTypes(
    fhirCode: 'Condition',
  );

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Consent = FHIRAllTypes(
    fhirCode: 'Consent',
  );

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Contract = FHIRAllTypes(
    fhirCode: 'Contract',
  );

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Coverage = FHIRAllTypes(
    fhirCode: 'Coverage',
  );

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CoverageEligibilityRequest = FHIRAllTypes(
    fhirCode: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes CoverageEligibilityResponse = FHIRAllTypes(
    fhirCode: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DetectedIssue = FHIRAllTypes(
    fhirCode: 'DetectedIssue',
  );

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Device = FHIRAllTypes(
    fhirCode: 'Device',
  );

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DeviceDefinition = FHIRAllTypes(
    fhirCode: 'DeviceDefinition',
  );

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DeviceMetric = FHIRAllTypes(
    fhirCode: 'DeviceMetric',
  );

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DeviceRequest = FHIRAllTypes(
    fhirCode: 'DeviceRequest',
  );

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DeviceUseStatement = FHIRAllTypes(
    fhirCode: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DiagnosticReport = FHIRAllTypes(
    fhirCode: 'DiagnosticReport',
  );

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DocumentManifest = FHIRAllTypes(
    fhirCode: 'DocumentManifest',
  );

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes DocumentReference = FHIRAllTypes(
    fhirCode: 'DocumentReference',
  );

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Encounter = FHIRAllTypes(
    fhirCode: 'Encounter',
  );

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Endpoint = FHIRAllTypes(
    fhirCode: 'Endpoint',
  );

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes EnrollmentRequest = FHIRAllTypes(
    fhirCode: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes EnrollmentResponse = FHIRAllTypes(
    fhirCode: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes EpisodeOfCare = FHIRAllTypes(
    fhirCode: 'EpisodeOfCare',
  );

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes EventDefinition = FHIRAllTypes(
    fhirCode: 'EventDefinition',
  );

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Evidence = FHIRAllTypes(
    fhirCode: 'Evidence',
  );

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes EvidenceReport = FHIRAllTypes(
    fhirCode: 'EvidenceReport',
  );

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes EvidenceVariable = FHIRAllTypes(
    fhirCode: 'EvidenceVariable',
  );

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ExampleScenario = FHIRAllTypes(
    fhirCode: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ExplanationOfBenefit = FHIRAllTypes(
    fhirCode: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes FamilyMemberHistory = FHIRAllTypes(
    fhirCode: 'FamilyMemberHistory',
  );

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Flag = FHIRAllTypes(
    fhirCode: 'Flag',
  );

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Goal = FHIRAllTypes(
    fhirCode: 'Goal',
  );

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes GraphDefinition = FHIRAllTypes(
    fhirCode: 'GraphDefinition',
  );

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Group = FHIRAllTypes(
    fhirCode: 'Group',
  );

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes GuidanceResponse = FHIRAllTypes(
    fhirCode: 'GuidanceResponse',
  );

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes HealthcareService = FHIRAllTypes(
    fhirCode: 'HealthcareService',
  );

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ImagingStudy = FHIRAllTypes(
    fhirCode: 'ImagingStudy',
  );

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Immunization = FHIRAllTypes(
    fhirCode: 'Immunization',
  );

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ImmunizationEvaluation = FHIRAllTypes(
    fhirCode: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ImmunizationRecommendation = FHIRAllTypes(
    fhirCode: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ImplementationGuide = FHIRAllTypes(
    fhirCode: 'ImplementationGuide',
  );

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Ingredient = FHIRAllTypes(
    fhirCode: 'Ingredient',
  );

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes InsurancePlan = FHIRAllTypes(
    fhirCode: 'InsurancePlan',
  );

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Invoice = FHIRAllTypes(
    fhirCode: 'Invoice',
  );

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Library = FHIRAllTypes(
    fhirCode: 'Library',
  );

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Linkage = FHIRAllTypes(
    fhirCode: 'Linkage',
  );

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes List_ = FHIRAllTypes(
    fhirCode: 'List',
  );

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Location = FHIRAllTypes(
    fhirCode: 'Location',
  );

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ManufacturedItemDefinition = FHIRAllTypes(
    fhirCode: 'ManufacturedItemDefinition',
  );

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Measure = FHIRAllTypes(
    fhirCode: 'Measure',
  );

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MeasureReport = FHIRAllTypes(
    fhirCode: 'MeasureReport',
  );

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Media = FHIRAllTypes(
    fhirCode: 'Media',
  );

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Medication = FHIRAllTypes(
    fhirCode: 'Medication',
  );

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MedicationAdministration = FHIRAllTypes(
    fhirCode: 'MedicationAdministration',
  );

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MedicationDispense = FHIRAllTypes(
    fhirCode: 'MedicationDispense',
  );

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MedicationKnowledge = FHIRAllTypes(
    fhirCode: 'MedicationKnowledge',
  );

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MedicationRequest = FHIRAllTypes(
    fhirCode: 'MedicationRequest',
  );

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MedicationStatement = FHIRAllTypes(
    fhirCode: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MedicinalProductDefinition = FHIRAllTypes(
    fhirCode: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MessageDefinition = FHIRAllTypes(
    fhirCode: 'MessageDefinition',
  );

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MessageHeader = FHIRAllTypes(
    fhirCode: 'MessageHeader',
  );

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes MolecularSequence = FHIRAllTypes(
    fhirCode: 'MolecularSequence',
  );

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes NamingSystem = FHIRAllTypes(
    fhirCode: 'NamingSystem',
  );

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes NutritionOrder = FHIRAllTypes(
    fhirCode: 'NutritionOrder',
  );

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes NutritionProduct = FHIRAllTypes(
    fhirCode: 'NutritionProduct',
  );

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Observation = FHIRAllTypes(
    fhirCode: 'Observation',
  );

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ObservationDefinition = FHIRAllTypes(
    fhirCode: 'ObservationDefinition',
  );

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes OperationDefinition = FHIRAllTypes(
    fhirCode: 'OperationDefinition',
  );

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes OperationOutcome = FHIRAllTypes(
    fhirCode: 'OperationOutcome',
  );

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Organization = FHIRAllTypes(
    fhirCode: 'Organization',
  );

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes OrganizationAffiliation = FHIRAllTypes(
    fhirCode: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes PackagedProductDefinition = FHIRAllTypes(
    fhirCode: 'PackagedProductDefinition',
  );

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Patient = FHIRAllTypes(
    fhirCode: 'Patient',
  );

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes PaymentNotice = FHIRAllTypes(
    fhirCode: 'PaymentNotice',
  );

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes PaymentReconciliation = FHIRAllTypes(
    fhirCode: 'PaymentReconciliation',
  );

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Person = FHIRAllTypes(
    fhirCode: 'Person',
  );

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes PlanDefinition = FHIRAllTypes(
    fhirCode: 'PlanDefinition',
  );

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Practitioner = FHIRAllTypes(
    fhirCode: 'Practitioner',
  );

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes PractitionerRole = FHIRAllTypes(
    fhirCode: 'PractitionerRole',
  );

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Procedure = FHIRAllTypes(
    fhirCode: 'Procedure',
  );

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Provenance = FHIRAllTypes(
    fhirCode: 'Provenance',
  );

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Questionnaire = FHIRAllTypes(
    fhirCode: 'Questionnaire',
  );

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes QuestionnaireResponse = FHIRAllTypes(
    fhirCode: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes RegulatedAuthorization = FHIRAllTypes(
    fhirCode: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes RelatedPerson = FHIRAllTypes(
    fhirCode: 'RelatedPerson',
  );

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes RequestGroup = FHIRAllTypes(
    fhirCode: 'RequestGroup',
  );

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ResearchDefinition = FHIRAllTypes(
    fhirCode: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ResearchElementDefinition = FHIRAllTypes(
    fhirCode: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ResearchStudy = FHIRAllTypes(
    fhirCode: 'ResearchStudy',
  );

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ResearchSubject = FHIRAllTypes(
    fhirCode: 'ResearchSubject',
  );

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes RiskAssessment = FHIRAllTypes(
    fhirCode: 'RiskAssessment',
  );

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Schedule = FHIRAllTypes(
    fhirCode: 'Schedule',
  );

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SearchParameter = FHIRAllTypes(
    fhirCode: 'SearchParameter',
  );

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ServiceRequest = FHIRAllTypes(
    fhirCode: 'ServiceRequest',
  );

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Slot = FHIRAllTypes(
    fhirCode: 'Slot',
  );

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Specimen = FHIRAllTypes(
    fhirCode: 'Specimen',
  );

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SpecimenDefinition = FHIRAllTypes(
    fhirCode: 'SpecimenDefinition',
  );

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes StructureDefinition = FHIRAllTypes(
    fhirCode: 'StructureDefinition',
  );

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes StructureMap = FHIRAllTypes(
    fhirCode: 'StructureMap',
  );

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Subscription = FHIRAllTypes(
    fhirCode: 'Subscription',
  );

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SubscriptionStatus = FHIRAllTypes(
    fhirCode: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SubscriptionTopic = FHIRAllTypes(
    fhirCode: 'SubscriptionTopic',
  );

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Substance = FHIRAllTypes(
    fhirCode: 'Substance',
  );

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SubstanceDefinition = FHIRAllTypes(
    fhirCode: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SupplyDelivery = FHIRAllTypes(
    fhirCode: 'SupplyDelivery',
  );

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes SupplyRequest = FHIRAllTypes(
    fhirCode: 'SupplyRequest',
  );

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Task = FHIRAllTypes(
    fhirCode: 'Task',
  );

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes TerminologyCapabilities = FHIRAllTypes(
    fhirCode: 'TerminologyCapabilities',
  );

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes TestReport = FHIRAllTypes(
    fhirCode: 'TestReport',
  );

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes TestScript = FHIRAllTypes(
    fhirCode: 'TestScript',
  );

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes ValueSet = FHIRAllTypes(
    fhirCode: 'ValueSet',
  );

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes VerificationResult = FHIRAllTypes(
    fhirCode: 'VerificationResult',
  );

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes VisionPrescription = FHIRAllTypes(
    fhirCode: 'VisionPrescription',
  );

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Parameters = FHIRAllTypes(
    fhirCode: 'Parameters',
  );

  /// Type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Type = FHIRAllTypes(
    fhirCode: 'Type',
  );

  /// Any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRAllTypes Any = FHIRAllTypes(
    fhirCode: 'Any',
  );

  /// For instances where an Element is present but not value

  static final FHIRAllTypes elementOnly = FHIRAllTypes();

  /// List of all enum-like values
  static final List<FHIRAllTypes> values = [
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
    Type,
    Any,
  ];

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FHIRAllTypes] from JSON.
  static FHIRAllTypes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypes.elementOnly.withElement(element);
    }
    return FHIRAllTypes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRAllTypes.$fhirCode';
}
