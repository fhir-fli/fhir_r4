import 'package:json_annotation/json_annotation.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Data Types and Resource Types.
enum FHIRDefinedType {
  /// Display: Address
  /// Definition: An address expressed using postal conventions (as opposed to GPS or other location definition formats).  This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery.  There are a variety of postal address formats defined around the world.
  @JsonValue('Address')
  Address,

  /// Display: Age
  /// Definition: A duration of time during which an organism (or a process) has existed.
  @JsonValue('Age')
  Age,

  /// Display: Annotation
  /// Definition: A  text note which also  contains information about who made the statement and when.
  @JsonValue('Annotation')
  Annotation,

  /// Display: Attachment
  /// Definition: For referring to data content defined in other formats.
  @JsonValue('Attachment')
  Attachment,

  /// Display: BackboneElement
  /// Definition: Base definition for all elements that are defined inside a resource - but not those in a data type.
  @JsonValue('BackboneElement')
  BackboneElement,

  /// Display: CodeableConcept
  /// Definition: A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
  @JsonValue('CodeableConcept')
  CodeableConcept,

  /// Display: CodeableReference
  /// Definition: A reference to a resource (by instance), or instead, a reference to a concept defined in a terminology or ontology (by class).
  @JsonValue('CodeableReference')
  CodeableReference,

  /// Display: Coding
  /// Definition: A reference to a code defined by a terminology system.
  @JsonValue('Coding')
  Coding,

  /// Display: ContactDetail
  /// Definition: Specifies contact information for a person or organization.
  @JsonValue('ContactDetail')
  ContactDetail,

  /// Display: ContactPoint
  /// Definition: Details for all kinds of technology mediated contact points for a person or organization, including telephone, email, etc.
  @JsonValue('ContactPoint')
  ContactPoint,

  /// Display: Contributor
  /// Definition: A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
  @JsonValue('Contributor')
  Contributor,

  /// Display: Count
  /// Definition: A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
  @JsonValue('Count')
  Count,

  /// Display: DataRequirement
  /// Definition: Describes a required data item for evaluation in terms of the type of data, and optional code or date-based filters of the data.
  @JsonValue('DataRequirement')
  DataRequirement,

  /// Display: Distance
  /// Definition: A length - a value with a unit that is a physical distance.
  @JsonValue('Distance')
  Distance,

  /// Display: Dosage
  /// Definition: Indicates how the medication is/was taken or should be taken by the patient.
  @JsonValue('Dosage')
  Dosage,

  /// Display: Duration
  /// Definition: A length of time.
  @JsonValue('Duration')
  Duration,

  /// Display: Element
  /// Definition: Base definition for all elements in a resource.
  @JsonValue('Element')
  Element,

  /// Display: ElementDefinition
  /// Definition: Captures constraints on each element within the resource, profile, or extension.
  @JsonValue('ElementDefinition')
  ElementDefinition,

  /// Display: Expression
  /// Definition: A expression that is evaluated in a specified context and returns a value. The context of use of the expression must specify the context in which the expression is evaluated, and how the result of the expression is used.
  @JsonValue('Expression')
  Expression,

  /// Display: Extension
  /// Definition: Optional Extension Element - found in all resources.
  @JsonValue('Extension')
  Extension,

  /// Display: HumanName
  /// Definition: A human's name with the ability to identify parts and usage.
  @JsonValue('HumanName')
  HumanName,

  /// Display: Identifier
  /// Definition: An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
  @JsonValue('Identifier')
  Identifier,

  /// Display: MarketingStatus
  /// Definition: The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
  @JsonValue('MarketingStatus')
  MarketingStatus,

  /// Display: Meta
  /// Definition: The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
  @JsonValue('Meta')
  Meta,

  /// Display: Money
  /// Definition: An amount of economic utility in some recognized currency.
  @JsonValue('Money')
  Money,

  /// Display: MoneyQuantity
  @JsonValue('MoneyQuantity')
  MoneyQuantity,

  /// Display: Narrative
  /// Definition: A human-readable summary of the resource conveying the essential clinical and business information for the resource.
  @JsonValue('Narrative')
  Narrative,

  /// Display: ParameterDefinition
  /// Definition: The parameters to the module. This collection specifies both the input and output parameters. Input parameters are provided by the caller as part of the $evaluate operation. Output parameters are included in the GuidanceResponse.
  @JsonValue('ParameterDefinition')
  ParameterDefinition,

  /// Display: Period
  /// Definition: A time period defined by a start and end date and optionally time.
  @JsonValue('Period')
  Period,

  /// Display: Population
  /// Definition: A populatioof people with some set of grouping criteria.
  @JsonValue('Population')
  Population,

  /// Display: ProdCharacteristic
  /// Definition: The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
  @JsonValue('ProdCharacteristic')
  ProdCharacteristic,

  /// Display: ProductShelfLife
  /// Definition: The shelf-life and storage information for a medicinal product item or container can be described using this class.
  @JsonValue('ProductShelfLife')
  ProductShelfLife,

  /// Display: Quantity
  /// Definition: A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
  @JsonValue('Quantity')
  Quantity,

  /// Display: Range
  /// Definition: A set of ordered Quantities defined by a low and high limit.
  @JsonValue('Range')
  Range,

  /// Display: Ratio
  /// Definition: A relationship of two Quantity values - expressed as a numerator and a denominator.
  @JsonValue('Ratio')
  Ratio,

  /// Display: RatioRange
  /// Definition: A range of ratios expressed as a low and high numerator and a denominator.
  @JsonValue('RatioRange')
  RatioRange,

  /// Display: Reference
  /// Definition: A reference from one resource to another.
  @JsonValue('Reference')
  Reference,

  /// Display: RelatedArtifact
  /// Definition: Related artifacts such as additional documentation, justification, or bibliographic references.
  @JsonValue('RelatedArtifact')
  RelatedArtifact,

  /// Display: SampledData
  /// Definition: A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the data.
  @JsonValue('SampledData')
  SampledData,

  /// Display: Signature
  /// Definition: A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing a hand-written signature, or a signature ceremony Different signature approaches have different utilities.
  @JsonValue('Signature')
  Signature,

  /// Display: SimpleQuantity
  @JsonValue('SimpleQuantity')
  SimpleQuantity,

  /// Display: Timing
  /// Definition: Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
  @JsonValue('Timing')
  Timing,

  /// Display: TriggerDefinition
  /// Definition: A description of a triggering event. Triggering events can be named events, data events, or periodic, as determined by the type element.
  @JsonValue('TriggerDefinition')
  TriggerDefinition,

  /// Display: UsageContext
  /// Definition: Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or categorize an artifact. This metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of care (e.g., venue, care setting, provider of care).
  @JsonValue('UsageContext')
  UsageContext,

  /// Display: base64Binary
  /// Definition: A stream of bytes
  @JsonValue('base64Binary')
  base64Binary,

  /// Display: boolean
  /// Definition: Value of "true" or "false"
  @JsonValue('boolean')
  boolean,

  /// Display: canonical
  /// Definition: A URI that is a reference to a canonical URL on a FHIR resource
  @JsonValue('canonical')
  canonical,

  /// Display: code
  /// Definition: A string which has at least one character and no leading or trailing whitespace and where there is no whitespace other than single spaces in the contents
  @JsonValue('code')
  code,

  /// Display: date
  /// Definition: A date or partial date (e.g. just year or year + month). There is no time zone. The format is a union of the schema types gYear, gYearMonth and date.  Dates SHALL be valid dates.
  @JsonValue('date')
  date,

  /// Display: dateTime
  /// Definition: A date, date-time or partial date (e.g. just year or year + month).  If hours and minutes are specified, a time zone SHALL be populated. The format is a union of the schema types gYear, gYearMonth, date and dateTime. Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored.                 Dates SHALL be valid dates.
  @JsonValue('dateTime')
  dateTime,

  /// Display: decimal
  /// Definition: A rational number with implicit precision
  @JsonValue('decimal')
  decimal,

  /// Display: id
  /// Definition: Any combination of letters, numerals, "-" and ".", with a length limit of 64 characters.  (This might be an integer, an unprefixed OID, UUID or any other identifier pattern that meets these constraints.)  Ids are case-insensitive.
  @JsonValue('id')
  id,

  /// Display: instant
  /// Definition: An instant in time - known at least to the second
  @JsonValue('instant')
  instant,

  /// Display: integer
  /// Definition: A whole number
  @JsonValue('integer')
  integer,

  /// Display: markdown
  /// Definition: A string that may contain Github Flavored Markdown syntax for optional processing by a mark down presentation engine
  @JsonValue('markdown')
  markdown,

  /// Display: oid
  /// Definition: An OID represented as a URI
  @JsonValue('oid')
  oid,

  /// Display: positiveInt
  /// Definition: An integer with a value that is positive (e.g. >0)
  @JsonValue('positiveInt')
  positiveInt,

  /// Display: string
  /// Definition: A sequence of Unicode characters
  @JsonValue('string')
  string,

  /// Display: time
  /// Definition: A time during the day, with no date specified
  @JsonValue('time')
  time,

  /// Display: unsignedInt
  /// Definition: An integer with a value that is not negative (e.g. >= 0)
  @JsonValue('unsignedInt')
  unsignedInt,

  /// Display: uri
  /// Definition: String of characters used to identify a name or a resource
  @JsonValue('uri')
  uri,

  /// Display: url
  /// Definition: A URI that is a literal reference
  @JsonValue('url')
  url,

  /// Display: uuid
  /// Definition: A UUID, represented as a URI
  @JsonValue('uuid')
  uuid,

  /// Display: XHTML
  /// Definition: XHTML format, as defined by W3C, but restricted usage (mainly, no active content)
  @JsonValue('xhtml')
  xhtml,

  /// Display: Resource
  /// Definition: --- Abstract Type! ---This is the base resource type for everything.
  @JsonValue('Resource')
  Resource,

  /// Display: Binary
  /// Definition: A resource that represents the data of a single raw artifact as digital content accessible in its native format.  A Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
  @JsonValue('Binary')
  Binary,

  /// Display: Bundle
  /// Definition: A container for a collection of resources.
  @JsonValue('Bundle')
  Bundle,

  /// Display: DomainResource
  /// Definition: --- Abstract Type! ---A resource that includes narrative, extensions, and contained resources.
  @JsonValue('DomainResource')
  DomainResource,

  /// Display: Account
  /// Definition: A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges for a patient, cost centers, etc.
  @JsonValue('Account')
  Account,

  /// Display: ActivityDefinition
  /// Definition: This resource allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context.
  @JsonValue('ActivityDefinition')
  ActivityDefinition,

  /// Display: AdministrableProductDefinition
  /// Definition: A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).
  @JsonValue('AdministrableProductDefinition')
  AdministrableProductDefinition,

  /// Display: AdverseEvent
  /// Definition: Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care, a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization, or that results in death.
  @JsonValue('AdverseEvent')
  AdverseEvent,

  /// Display: AllergyIntolerance
  /// Definition: Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.
  @JsonValue('AllergyIntolerance')
  AllergyIntolerance,

  /// Display: Appointment
  /// Definition: A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  @JsonValue('Appointment')
  Appointment,

  /// Display: AppointmentResponse
  /// Definition: A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
  @JsonValue('AppointmentResponse')
  AppointmentResponse,

  /// Display: AuditEvent
  /// Definition: A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion attempts and monitoring for inappropriate usage.
  @JsonValue('AuditEvent')
  AuditEvent,

  /// Display: Basic
  /// Definition: Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing resource, and custom resources not appropriate for inclusion in the FHIR specification.
  @JsonValue('Basic')
  Basic,

  /// Display: BiologicallyDerivedProduct
  /// Definition: A material substance originating from a biological entity intended to be transplanted or infused into another (possibly the same) biological entity.
  @JsonValue('BiologicallyDerivedProduct')
  BiologicallyDerivedProduct,

  /// Display: BodyStructure
  /// Definition: Record details about an anatomical structure.  This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
  @JsonValue('BodyStructure')
  BodyStructure,

  /// Display: CapabilityStatement
  /// Definition: A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  @JsonValue('CapabilityStatement')
  CapabilityStatement,

  /// Display: CarePlan
  /// Definition: Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.
  @JsonValue('CarePlan')
  CarePlan,

  /// Display: CareTeam
  /// Definition: The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care for a patient.
  @JsonValue('CareTeam')
  CareTeam,

  /// Display: CatalogEntry
  /// Definition: Catalog entries are wrappers that contextualize items included in a catalog.
  @JsonValue('CatalogEntry')
  CatalogEntry,

  /// Display: ChargeItem
  /// Definition: The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation.
  @JsonValue('ChargeItem')
  ChargeItem,

  /// Display: ChargeItemDefinition
  /// Definition: The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough structure and requires profiling for each type of billing code system.
  @JsonValue('ChargeItemDefinition')
  ChargeItemDefinition,

  /// Display: Citation
  /// Definition: The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  @JsonValue('Citation')
  Citation,

  /// Display: Claim
  /// Definition: A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  @JsonValue('Claim')
  Claim,

  /// Display: ClaimResponse
  /// Definition: This resource provides the adjudication details from the processing of a Claim resource.
  @JsonValue('ClaimResponse')
  ClaimResponse,

  /// Display: ClinicalImpression
  /// Definition: A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as Apgar score.
  @JsonValue('ClinicalImpression')
  ClinicalImpression,

  /// Display: ClinicalUseDefinition
  /// Definition: A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  @JsonValue('ClinicalUseDefinition')
  ClinicalUseDefinition,

  /// Display: CodeSystem
  /// Definition: The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
  @JsonValue('CodeSystem')
  CodeSystem,

  /// Display: Communication
  /// Definition: An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health agency that was notified about a reportable condition.
  @JsonValue('Communication')
  Communication,

  /// Display: CommunicationRequest
  /// Definition: A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS system proposes that the public health agency be notified about a reportable condition.
  @JsonValue('CommunicationRequest')
  CommunicationRequest,

  /// Display: CompartmentDefinition
  /// Definition: A compartment definition that defines how resources are accessed on a server.
  @JsonValue('CompartmentDefinition')
  CompartmentDefinition,

  /// Display: Composition
  /// Definition: A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
  @JsonValue('Composition')
  Composition,

  /// Display: ConceptMap
  /// Definition: A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  @JsonValue('ConceptMap')
  ConceptMap,

  /// Display: Condition
  /// Definition: A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.
  @JsonValue('Condition')
  Condition,

  /// Display: Consent
  /// Definition: A record of a healthcare consumer’s  choices, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
  @JsonValue('Consent')
  Consent,

  /// Display: Contract
  /// Definition: Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  @JsonValue('Contract')
  Contract,

  /// Display: Coverage
  /// Definition: Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
  @JsonValue('Coverage')
  Coverage,

  /// Display: CoverageEligibilityRequest
  /// Definition: The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
  @JsonValue('CoverageEligibilityRequest')
  CoverageEligibilityRequest,

  /// Display: CoverageEligibilityResponse
  /// Definition: This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
  @JsonValue('CoverageEligibilityResponse')
  CoverageEligibilityResponse,

  /// Display: DetectedIssue
  /// Definition: Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
  @JsonValue('DetectedIssue')
  DetectedIssue,

  /// Display: Device
  /// Definition: A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
  @JsonValue('Device')
  Device,

  /// Display: DeviceDefinition
  /// Definition: The characteristics, operational status and capabilities of a medical-related component of a medical device.
  @JsonValue('DeviceDefinition')
  DeviceDefinition,

  /// Display: DeviceMetric
  /// Definition: Describes a measurement, calculation or setting capability of a medical device.
  @JsonValue('DeviceMetric')
  DeviceMetric,

  /// Display: DeviceRequest
  /// Definition: Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external assistive device, such as a walker.
  @JsonValue('DeviceRequest')
  DeviceRequest,

  /// Display: DeviceUseStatement
  /// Definition: A record of a device being used by a patient where the record is the result of a report from the patient or another clinician.
  @JsonValue('DeviceUseStatement')
  DeviceUseStatement,

  /// Display: DiagnosticReport
  /// Definition: The findings and interpretation of diagnostic  tests performed on patients, groups of patients, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports.
  @JsonValue('DiagnosticReport')
  DiagnosticReport,

  /// Display: DocumentManifest
  /// Definition: A collection of documents compiled for a purpose together with metadata that applies to the collection.
  @JsonValue('DocumentManifest')
  DocumentManifest,

  /// Display: DocumentReference
  /// Definition: A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
  @JsonValue('DocumentReference')
  DocumentReference,

  /// Display: Encounter
  /// Definition: An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.
  @JsonValue('Encounter')
  Encounter,

  /// Display: Endpoint
  /// Definition: The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
  @JsonValue('Endpoint')
  Endpoint,

  /// Display: EnrollmentRequest
  /// Definition: This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
  @JsonValue('EnrollmentRequest')
  EnrollmentRequest,

  /// Display: EnrollmentResponse
  /// Definition: This resource provides enrollment and plan details from the processing of an EnrollmentRequest resource.
  @JsonValue('EnrollmentResponse')
  EnrollmentResponse,

  /// Display: EpisodeOfCare
  /// Definition: An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time.
  @JsonValue('EpisodeOfCare')
  EpisodeOfCare,

  /// Display: EventDefinition
  /// Definition: The EventDefinition resource provides a reusable description of when a particular event can occur.
  @JsonValue('EventDefinition')
  EventDefinition,

  /// Display: Evidence
  /// Definition: The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (eg population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  @JsonValue('Evidence')
  Evidence,

  /// Display: EvidenceReport
  /// Definition: The EvidenceReport Resource is a specialized container for a collection of resources and codable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  @JsonValue('EvidenceReport')
  EvidenceReport,

  /// Display: EvidenceVariable
  /// Definition: The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
  @JsonValue('EvidenceVariable')
  EvidenceVariable,

  /// Display: ExampleScenario
  /// Definition: Example of workflow instance.
  @JsonValue('ExampleScenario')
  ExampleScenario,

  /// Display: ExplanationOfBenefit
  /// Definition: This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  @JsonValue('ExplanationOfBenefit')
  ExplanationOfBenefit,

  /// Display: FamilyMemberHistory
  /// Definition: Significant health conditions for a person related to the patient relevant in the context of care for the patient.
  @JsonValue('FamilyMemberHistory')
  FamilyMemberHistory,

  /// Display: Flag
  /// Definition: Prospective warnings of potential issues when providing care to the patient.
  @JsonValue('Flag')
  Flag,

  /// Display: Goal
  /// Definition: Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
  @JsonValue('Goal')
  Goal,

  /// Display: GraphDefinition
  /// Definition: A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
  @JsonValue('GraphDefinition')
  GraphDefinition,

  /// Display: Group
  /// Definition: Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected to act collectively, and are not formally or legally recognized; i.e. a collection of entities that isn't an Organization.
  @JsonValue('Group')
  Group,

  /// Display: GuidanceResponse
  /// Definition: A guidance response is the formal response to a guidance request, including any output parameters returned by the evaluation, as well as the description of any proposed actions to be taken.
  @JsonValue('GuidanceResponse')
  GuidanceResponse,

  /// Display: HealthcareService
  /// Definition: The details of a healthcare service available at a location.
  @JsonValue('HealthcareService')
  HealthcareService,

  /// Display: ImagingStudy
  /// Definition: Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context.  A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
  @JsonValue('ImagingStudy')
  ImagingStudy,

  /// Display: Immunization
  /// Definition: Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
  @JsonValue('Immunization')
  Immunization,

  /// Display: ImmunizationEvaluation
  /// Definition: Describes a comparison of an immunization event against published recommendations to determine if the administration is "valid" in relation to those  recommendations.
  @JsonValue('ImmunizationEvaluation')
  ImmunizationEvaluation,

  /// Display: ImmunizationRecommendation
  /// Definition: A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification.
  @JsonValue('ImmunizationRecommendation')
  ImmunizationRecommendation,

  /// Display: ImplementationGuide
  /// Definition: A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  @JsonValue('ImplementationGuide')
  ImplementationGuide,

  /// Display: Ingredient
  /// Definition: An ingredient of a manufactured item or pharmaceutical product.
  @JsonValue('Ingredient')
  Ingredient,

  /// Display: InsurancePlan
  /// Definition: Details of a Health Insurance product/plan provided by an organization.
  @JsonValue('InsurancePlan')
  InsurancePlan,

  /// Display: Invoice
  /// Definition: Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
  @JsonValue('Invoice')
  Invoice,

  /// Display: Library
  /// Definition: The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a collection of knowledge assets.
  @JsonValue('Library')
  Library,

  /// Display: Linkage
  /// Definition: Identifies two or more records (resource instances) that refer to the same real-world "occurrence".
  @JsonValue('Linkage')
  Linkage,

  /// Display: List
  /// Definition: A list is a curated collection of resources.
  @JsonValue('List')
  List,

  /// Display: Location
  /// Definition: Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.
  @JsonValue('Location')
  Location,

  /// Display: ManufacturedItemDefinition
  /// Definition: The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
  @JsonValue('ManufacturedItemDefinition')
  ManufacturedItemDefinition,

  /// Display: Measure
  /// Definition: The Measure resource provides the definition of a quality measure.
  @JsonValue('Measure')
  Measure,

  /// Display: MeasureReport
  /// Definition: The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
  @JsonValue('MeasureReport')
  MeasureReport,

  /// Display: Media
  /// Definition: A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct reference.
  @JsonValue('Media')
  Media,

  /// Display: Medication
  /// Definition: This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.
  @JsonValue('Medication')
  Medication,

  /// Display: MedicationAdministration
  /// Definition: Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.
  @JsonValue('MedicationAdministration')
  MedicationAdministration,

  /// Display: MedicationDispense
  /// Definition: Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a description of the medication product (supply) provided and the instructions for administering the medication.  The medication dispense is the result of a pharmacy system responding to a medication order.
  @JsonValue('MedicationDispense')
  MedicationDispense,

  /// Display: MedicationKnowledge
  /// Definition: Information about a medication that is used to support knowledge.
  @JsonValue('MedicationKnowledge')
  MedicationKnowledge,

  /// Display: MedicationRequest
  /// Definition: An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
  @JsonValue('MedicationRequest')
  MedicationRequest,

  /// Display: MedicationStatement
  /// Definition: A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or other party maintains.   The primary difference between a medication statement and a medication administration is that the medication administration has complete administration information and is based on actual administration information from the person who administered the medication.  A medication statement is often, if not always, less specific.  There is no required date/time when the medication was administered, in fact we only know that a source has reported the patient is taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing or less precise.  As stated earlier, the medication statement information may come from the patient's memory, from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication administration is more formal and is not missing detailed information.
  @JsonValue('MedicationStatement')
  MedicationStatement,

  /// Display: MedicinalProductDefinition
  /// Definition: Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use, drug catalogs, to support prescribing, adverse events management etc.).
  @JsonValue('MedicinalProductDefinition')
  MedicinalProductDefinition,

  /// Display: MessageDefinition
  /// Definition: Defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), if any, are permitted.
  @JsonValue('MessageDefinition')
  MessageDefinition,

  /// Display: MessageHeader
  /// Definition: The header for a message exchange that is either requesting or responding to an action.  The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
  @JsonValue('MessageHeader')
  MessageHeader,

  /// Display: MolecularSequence
  /// Definition: Raw data describing a biological sequence.
  @JsonValue('MolecularSequence')
  MolecularSequence,

  /// Display: NamingSystem
  /// Definition: A curated namespace that issues unique symbols within that namespace for the identification of concepts, people, devices, etc.  Represents a "System" used within the Identifier and Coding data types.
  @JsonValue('NamingSystem')
  NamingSystem,

  /// Display: NutritionOrder
  /// Definition: A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  @JsonValue('NutritionOrder')
  NutritionOrder,

  /// Display: NutritionProduct
  /// Definition: A food or fluid product that is consumed by patients.
  @JsonValue('NutritionProduct')
  NutritionProduct,

  /// Display: Observation
  /// Definition: Measurements and simple assertions made about a patient, device or other subject.
  @JsonValue('Observation')
  Observation,

  /// Display: ObservationDefinition
  /// Definition: Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
  @JsonValue('ObservationDefinition')
  ObservationDefinition,

  /// Display: OperationDefinition
  /// Definition: A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
  @JsonValue('OperationDefinition')
  OperationDefinition,

  /// Display: OperationOutcome
  /// Definition: A collection of error, warning, or information messages that result from a system action.
  @JsonValue('OperationOutcome')
  OperationOutcome,

  /// Display: Organization
  /// Definition: A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.
  @JsonValue('Organization')
  Organization,

  /// Display: OrganizationAffiliation
  /// Definition: Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship.
  @JsonValue('OrganizationAffiliation')
  OrganizationAffiliation,

  /// Display: PackagedProductDefinition
  /// Definition: A medically related item or items, in a container or package.
  @JsonValue('PackagedProductDefinition')
  PackagedProductDefinition,

  /// Display: Patient
  /// Definition: Demographics and other administrative information about an individual or animal receiving care or other health-related services.
  @JsonValue('Patient')
  Patient,

  /// Display: PaymentNotice
  /// Definition: This resource provides the status of the payment for goods and services rendered, and the request and response resource references.
  @JsonValue('PaymentNotice')
  PaymentNotice,

  /// Display: PaymentReconciliation
  /// Definition: This resource provides the details including amount of a payment and allocates the payment items being paid.
  @JsonValue('PaymentReconciliation')
  PaymentReconciliation,

  /// Display: Person
  /// Definition: Demographics and administrative information about a person independent of a specific health-related context.
  @JsonValue('Person')
  Person,

  /// Display: PlanDefinition
  /// Definition: This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications.
  @JsonValue('PlanDefinition')
  PlanDefinition,

  /// Display: Practitioner
  /// Definition: A person who is directly or indirectly involved in the provisioning of healthcare.
  @JsonValue('Practitioner')
  Practitioner,

  /// Display: PractitionerRole
  /// Definition: A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time.
  @JsonValue('PractitionerRole')
  PractitionerRole,

  /// Display: Procedure
  /// Definition: An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy.
  @JsonValue('Procedure')
  Procedure,

  /// Display: Provenance
  /// Definition: Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
  @JsonValue('Provenance')
  Provenance,

  /// Display: Questionnaire
  /// Definition: A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
  @JsonValue('Questionnaire')
  Questionnaire,

  /// Display: QuestionnaireResponse
  /// Definition: A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
  @JsonValue('QuestionnaireResponse')
  QuestionnaireResponse,

  /// Display: RegulatedAuthorization
  /// Definition: Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  @JsonValue('RegulatedAuthorization')
  RegulatedAuthorization,

  /// Display: RelatedPerson
  /// Definition: Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process.
  @JsonValue('RelatedPerson')
  RelatedPerson,

  /// Display: RequestGroup
  /// Definition: A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
  @JsonValue('RequestGroup')
  RequestGroup,

  /// Display: ResearchDefinition
  /// Definition: The ResearchDefinition resource describes the conditional state (population and any exposures being compared within the population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is about.
  @JsonValue('ResearchDefinition')
  ResearchDefinition,

  /// Display: ResearchElementDefinition
  /// Definition: The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
  @JsonValue('ResearchElementDefinition')
  ResearchElementDefinition,

  /// Display: ResearchStudy
  /// Definition: A process where a researcher or organization plans and then executes a series of steps intended to increase the field of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other information about medications, devices, therapies and other interventional and investigative techniques.  A ResearchStudy involves the gathering of information about human or animal subjects.
  @JsonValue('ResearchStudy')
  ResearchStudy,

  /// Display: ResearchSubject
  /// Definition: A physical entity which is the primary unit of operational and/or administrative interest in a study.
  @JsonValue('ResearchSubject')
  ResearchSubject,

  /// Display: RiskAssessment
  /// Definition: An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
  @JsonValue('RiskAssessment')
  RiskAssessment,

  /// Display: Schedule
  /// Definition: A container for slots of time that may be available for booking appointments.
  @JsonValue('Schedule')
  Schedule,

  /// Display: SearchParameter
  /// Definition: A search parameter that defines a named search item that can be used to search/filter on a resource.
  @JsonValue('SearchParameter')
  SearchParameter,

  /// Display: ServiceRequest
  /// Definition: A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
  @JsonValue('ServiceRequest')
  ServiceRequest,

  /// Display: Slot
  /// Definition: A slot of time on a schedule that may be available for booking appointments.
  @JsonValue('Slot')
  Slot,

  /// Display: Specimen
  /// Definition: A sample to be used for analysis.
  @JsonValue('Specimen')
  Specimen,

  /// Display: SpecimenDefinition
  /// Definition: A kind of specimen with associated set of requirements.
  @JsonValue('SpecimenDefinition')
  SpecimenDefinition,

  /// Display: StructureDefinition
  /// Definition: A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in FHIR, and also for describing extensions and constraints on resources and data types.
  @JsonValue('StructureDefinition')
  StructureDefinition,

  /// Display: StructureMap
  /// Definition: A Map of relationships between 2 structures that can be used to transform data.
  @JsonValue('StructureMap')
  StructureMap,

  /// Display: Subscription
  /// Definition: The subscription resource is used to define a push-based subscription from a server to another system. Once a subscription is registered with the server, the server checks every resource that is created or updated, and if the resource matches the given criteria, it sends a message on the defined "channel" so that another system can take an appropriate action.
  @JsonValue('Subscription')
  Subscription,

  /// Display: SubscriptionStatus
  /// Definition: The SubscriptionStatus resource describes the state of a Subscription during notifications.
  @JsonValue('SubscriptionStatus')
  SubscriptionStatus,

  /// Display: SubscriptionTopic
  /// Definition: Describes a stream of resource state changes identified by trigger criteria and annotated with labels useful to filter projections from this topic.
  @JsonValue('SubscriptionTopic')
  SubscriptionTopic,

  /// Display: Substance
  /// Definition: A homogeneous material with a definite composition.
  @JsonValue('Substance')
  Substance,

  /// Display: SubstanceDefinition
  /// Definition: The detailed description of a substance, typically at a level beyond what is used for prescribing.
  @JsonValue('SubstanceDefinition')
  SubstanceDefinition,

  /// Display: SupplyDelivery
  /// Definition: Record of delivery of what is supplied.
  @JsonValue('SupplyDelivery')
  SupplyDelivery,

  /// Display: SupplyRequest
  /// Definition: A record of a request for a medication, substance or device used in the healthcare setting.
  @JsonValue('SupplyRequest')
  SupplyRequest,

  /// Display: Task
  /// Definition: A task to be performed.
  @JsonValue('Task')
  Task,

  /// Display: TerminologyCapabilities
  /// Definition: A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  @JsonValue('TerminologyCapabilities')
  TerminologyCapabilities,

  /// Display: TestReport
  /// Definition: A summary of information based on the results of executing a TestScript.
  @JsonValue('TestReport')
  TestReport,

  /// Display: TestScript
  /// Definition: A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  @JsonValue('TestScript')
  TestScript,

  /// Display: ValueSet
  /// Definition: A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
  @JsonValue('ValueSet')
  ValueSet,

  /// Display: VerificationResult
  /// Definition: Describes validation requirements, source(s), status and dates for one or more elements.
  @JsonValue('VerificationResult')
  VerificationResult,

  /// Display: VisionPrescription
  /// Definition: An authorization for the provision of glasses and/or contact lenses to a patient.
  @JsonValue('VisionPrescription')
  VisionPrescription,

  /// Display: Parameters
  /// Definition: This resource is a non-persisted resource used to pass information into and back from an [operation](operations.html). It has no other use, and there is no RESTful endpoint associated with it.
  @JsonValue('Parameters')
  Parameters,
  ;

  @override
  String toString() {
    switch (this) {
      case Address:
        return 'Address';
      case Age:
        return 'Age';
      case Annotation:
        return 'Annotation';
      case Attachment:
        return 'Attachment';
      case BackboneElement:
        return 'BackboneElement';
      case CodeableConcept:
        return 'CodeableConcept';
      case CodeableReference:
        return 'CodeableReference';
      case Coding:
        return 'Coding';
      case ContactDetail:
        return 'ContactDetail';
      case ContactPoint:
        return 'ContactPoint';
      case Contributor:
        return 'Contributor';
      case Count:
        return 'Count';
      case DataRequirement:
        return 'DataRequirement';
      case Distance:
        return 'Distance';
      case Dosage:
        return 'Dosage';
      case Duration:
        return 'Duration';
      case Element:
        return 'Element';
      case ElementDefinition:
        return 'ElementDefinition';
      case Expression:
        return 'Expression';
      case Extension:
        return 'Extension';
      case HumanName:
        return 'HumanName';
      case Identifier:
        return 'Identifier';
      case MarketingStatus:
        return 'MarketingStatus';
      case Meta:
        return 'Meta';
      case Money:
        return 'Money';
      case MoneyQuantity:
        return 'MoneyQuantity';
      case Narrative:
        return 'Narrative';
      case ParameterDefinition:
        return 'ParameterDefinition';
      case Period:
        return 'Period';
      case Population:
        return 'Population';
      case ProdCharacteristic:
        return 'ProdCharacteristic';
      case ProductShelfLife:
        return 'ProductShelfLife';
      case Quantity:
        return 'Quantity';
      case Range:
        return 'Range';
      case Ratio:
        return 'Ratio';
      case RatioRange:
        return 'RatioRange';
      case Reference:
        return 'Reference';
      case RelatedArtifact:
        return 'RelatedArtifact';
      case SampledData:
        return 'SampledData';
      case Signature:
        return 'Signature';
      case SimpleQuantity:
        return 'SimpleQuantity';
      case Timing:
        return 'Timing';
      case TriggerDefinition:
        return 'TriggerDefinition';
      case UsageContext:
        return 'UsageContext';
      case base64Binary:
        return 'base64Binary';
      case boolean:
        return 'boolean';
      case canonical:
        return 'canonical';
      case code:
        return 'code';
      case date:
        return 'date';
      case dateTime:
        return 'dateTime';
      case decimal:
        return 'decimal';
      case id:
        return 'id';
      case instant:
        return 'instant';
      case integer:
        return 'integer';
      case markdown:
        return 'markdown';
      case oid:
        return 'oid';
      case positiveInt:
        return 'positiveInt';
      case string:
        return 'string';
      case time:
        return 'time';
      case unsignedInt:
        return 'unsignedInt';
      case uri:
        return 'uri';
      case url:
        return 'url';
      case uuid:
        return 'uuid';
      case xhtml:
        return 'xhtml';
      case Resource:
        return 'Resource';
      case Binary:
        return 'Binary';
      case Bundle:
        return 'Bundle';
      case DomainResource:
        return 'DomainResource';
      case Account:
        return 'Account';
      case ActivityDefinition:
        return 'ActivityDefinition';
      case AdministrableProductDefinition:
        return 'AdministrableProductDefinition';
      case AdverseEvent:
        return 'AdverseEvent';
      case AllergyIntolerance:
        return 'AllergyIntolerance';
      case Appointment:
        return 'Appointment';
      case AppointmentResponse:
        return 'AppointmentResponse';
      case AuditEvent:
        return 'AuditEvent';
      case Basic:
        return 'Basic';
      case BiologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case BodyStructure:
        return 'BodyStructure';
      case CapabilityStatement:
        return 'CapabilityStatement';
      case CarePlan:
        return 'CarePlan';
      case CareTeam:
        return 'CareTeam';
      case CatalogEntry:
        return 'CatalogEntry';
      case ChargeItem:
        return 'ChargeItem';
      case ChargeItemDefinition:
        return 'ChargeItemDefinition';
      case Citation:
        return 'Citation';
      case Claim:
        return 'Claim';
      case ClaimResponse:
        return 'ClaimResponse';
      case ClinicalImpression:
        return 'ClinicalImpression';
      case ClinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case CodeSystem:
        return 'CodeSystem';
      case Communication:
        return 'Communication';
      case CommunicationRequest:
        return 'CommunicationRequest';
      case CompartmentDefinition:
        return 'CompartmentDefinition';
      case Composition:
        return 'Composition';
      case ConceptMap:
        return 'ConceptMap';
      case Condition:
        return 'Condition';
      case Consent:
        return 'Consent';
      case Contract:
        return 'Contract';
      case Coverage:
        return 'Coverage';
      case CoverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case CoverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case DetectedIssue:
        return 'DetectedIssue';
      case Device:
        return 'Device';
      case DeviceDefinition:
        return 'DeviceDefinition';
      case DeviceMetric:
        return 'DeviceMetric';
      case DeviceRequest:
        return 'DeviceRequest';
      case DeviceUseStatement:
        return 'DeviceUseStatement';
      case DiagnosticReport:
        return 'DiagnosticReport';
      case DocumentManifest:
        return 'DocumentManifest';
      case DocumentReference:
        return 'DocumentReference';
      case Encounter:
        return 'Encounter';
      case Endpoint:
        return 'Endpoint';
      case EnrollmentRequest:
        return 'EnrollmentRequest';
      case EnrollmentResponse:
        return 'EnrollmentResponse';
      case EpisodeOfCare:
        return 'EpisodeOfCare';
      case EventDefinition:
        return 'EventDefinition';
      case Evidence:
        return 'Evidence';
      case EvidenceReport:
        return 'EvidenceReport';
      case EvidenceVariable:
        return 'EvidenceVariable';
      case ExampleScenario:
        return 'ExampleScenario';
      case ExplanationOfBenefit:
        return 'ExplanationOfBenefit';
      case FamilyMemberHistory:
        return 'FamilyMemberHistory';
      case Flag:
        return 'Flag';
      case Goal:
        return 'Goal';
      case GraphDefinition:
        return 'GraphDefinition';
      case Group:
        return 'Group';
      case GuidanceResponse:
        return 'GuidanceResponse';
      case HealthcareService:
        return 'HealthcareService';
      case ImagingStudy:
        return 'ImagingStudy';
      case Immunization:
        return 'Immunization';
      case ImmunizationEvaluation:
        return 'ImmunizationEvaluation';
      case ImmunizationRecommendation:
        return 'ImmunizationRecommendation';
      case ImplementationGuide:
        return 'ImplementationGuide';
      case Ingredient:
        return 'Ingredient';
      case InsurancePlan:
        return 'InsurancePlan';
      case Invoice:
        return 'Invoice';
      case Library:
        return 'Library';
      case Linkage:
        return 'Linkage';
      case List:
        return 'List';
      case Location:
        return 'Location';
      case ManufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case Measure:
        return 'Measure';
      case MeasureReport:
        return 'MeasureReport';
      case Media:
        return 'Media';
      case Medication:
        return 'Medication';
      case MedicationAdministration:
        return 'MedicationAdministration';
      case MedicationDispense:
        return 'MedicationDispense';
      case MedicationKnowledge:
        return 'MedicationKnowledge';
      case MedicationRequest:
        return 'MedicationRequest';
      case MedicationStatement:
        return 'MedicationStatement';
      case MedicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case MessageDefinition:
        return 'MessageDefinition';
      case MessageHeader:
        return 'MessageHeader';
      case MolecularSequence:
        return 'MolecularSequence';
      case NamingSystem:
        return 'NamingSystem';
      case NutritionOrder:
        return 'NutritionOrder';
      case NutritionProduct:
        return 'NutritionProduct';
      case Observation:
        return 'Observation';
      case ObservationDefinition:
        return 'ObservationDefinition';
      case OperationDefinition:
        return 'OperationDefinition';
      case OperationOutcome:
        return 'OperationOutcome';
      case Organization:
        return 'Organization';
      case OrganizationAffiliation:
        return 'OrganizationAffiliation';
      case PackagedProductDefinition:
        return 'PackagedProductDefinition';
      case Patient:
        return 'Patient';
      case PaymentNotice:
        return 'PaymentNotice';
      case PaymentReconciliation:
        return 'PaymentReconciliation';
      case Person:
        return 'Person';
      case PlanDefinition:
        return 'PlanDefinition';
      case Practitioner:
        return 'Practitioner';
      case PractitionerRole:
        return 'PractitionerRole';
      case Procedure:
        return 'Procedure';
      case Provenance:
        return 'Provenance';
      case Questionnaire:
        return 'Questionnaire';
      case QuestionnaireResponse:
        return 'QuestionnaireResponse';
      case RegulatedAuthorization:
        return 'RegulatedAuthorization';
      case RelatedPerson:
        return 'RelatedPerson';
      case RequestGroup:
        return 'RequestGroup';
      case ResearchDefinition:
        return 'ResearchDefinition';
      case ResearchElementDefinition:
        return 'ResearchElementDefinition';
      case ResearchStudy:
        return 'ResearchStudy';
      case ResearchSubject:
        return 'ResearchSubject';
      case RiskAssessment:
        return 'RiskAssessment';
      case Schedule:
        return 'Schedule';
      case SearchParameter:
        return 'SearchParameter';
      case ServiceRequest:
        return 'ServiceRequest';
      case Slot:
        return 'Slot';
      case Specimen:
        return 'Specimen';
      case SpecimenDefinition:
        return 'SpecimenDefinition';
      case StructureDefinition:
        return 'StructureDefinition';
      case StructureMap:
        return 'StructureMap';
      case Subscription:
        return 'Subscription';
      case SubscriptionStatus:
        return 'SubscriptionStatus';
      case SubscriptionTopic:
        return 'SubscriptionTopic';
      case Substance:
        return 'Substance';
      case SubstanceDefinition:
        return 'SubstanceDefinition';
      case SupplyDelivery:
        return 'SupplyDelivery';
      case SupplyRequest:
        return 'SupplyRequest';
      case Task:
        return 'Task';
      case TerminologyCapabilities:
        return 'TerminologyCapabilities';
      case TestReport:
        return 'TestReport';
      case TestScript:
        return 'TestScript';
      case ValueSet:
        return 'ValueSet';
      case VerificationResult:
        return 'VerificationResult';
      case VisionPrescription:
        return 'VisionPrescription';
      case Parameters:
        return 'Parameters';
    }
  }

  String toJson() => toString();
  static FHIRDefinedType fromString(String str) {
    switch (str) {
      case 'Address':
        return FHIRDefinedType.Address;
      case 'Age':
        return FHIRDefinedType.Age;
      case 'Annotation':
        return FHIRDefinedType.Annotation;
      case 'Attachment':
        return FHIRDefinedType.Attachment;
      case 'BackboneElement':
        return FHIRDefinedType.BackboneElement;
      case 'CodeableConcept':
        return FHIRDefinedType.CodeableConcept;
      case 'CodeableReference':
        return FHIRDefinedType.CodeableReference;
      case 'Coding':
        return FHIRDefinedType.Coding;
      case 'ContactDetail':
        return FHIRDefinedType.ContactDetail;
      case 'ContactPoint':
        return FHIRDefinedType.ContactPoint;
      case 'Contributor':
        return FHIRDefinedType.Contributor;
      case 'Count':
        return FHIRDefinedType.Count;
      case 'DataRequirement':
        return FHIRDefinedType.DataRequirement;
      case 'Distance':
        return FHIRDefinedType.Distance;
      case 'Dosage':
        return FHIRDefinedType.Dosage;
      case 'Duration':
        return FHIRDefinedType.Duration;
      case 'Element':
        return FHIRDefinedType.Element;
      case 'ElementDefinition':
        return FHIRDefinedType.ElementDefinition;
      case 'Expression':
        return FHIRDefinedType.Expression;
      case 'Extension':
        return FHIRDefinedType.Extension;
      case 'HumanName':
        return FHIRDefinedType.HumanName;
      case 'Identifier':
        return FHIRDefinedType.Identifier;
      case 'MarketingStatus':
        return FHIRDefinedType.MarketingStatus;
      case 'Meta':
        return FHIRDefinedType.Meta;
      case 'Money':
        return FHIRDefinedType.Money;
      case 'MoneyQuantity':
        return FHIRDefinedType.MoneyQuantity;
      case 'Narrative':
        return FHIRDefinedType.Narrative;
      case 'ParameterDefinition':
        return FHIRDefinedType.ParameterDefinition;
      case 'Period':
        return FHIRDefinedType.Period;
      case 'Population':
        return FHIRDefinedType.Population;
      case 'ProdCharacteristic':
        return FHIRDefinedType.ProdCharacteristic;
      case 'ProductShelfLife':
        return FHIRDefinedType.ProductShelfLife;
      case 'Quantity':
        return FHIRDefinedType.Quantity;
      case 'Range':
        return FHIRDefinedType.Range;
      case 'Ratio':
        return FHIRDefinedType.Ratio;
      case 'RatioRange':
        return FHIRDefinedType.RatioRange;
      case 'Reference':
        return FHIRDefinedType.Reference;
      case 'RelatedArtifact':
        return FHIRDefinedType.RelatedArtifact;
      case 'SampledData':
        return FHIRDefinedType.SampledData;
      case 'Signature':
        return FHIRDefinedType.Signature;
      case 'SimpleQuantity':
        return FHIRDefinedType.SimpleQuantity;
      case 'Timing':
        return FHIRDefinedType.Timing;
      case 'TriggerDefinition':
        return FHIRDefinedType.TriggerDefinition;
      case 'UsageContext':
        return FHIRDefinedType.UsageContext;
      case 'base64Binary':
        return FHIRDefinedType.base64Binary;
      case 'boolean':
        return FHIRDefinedType.boolean;
      case 'canonical':
        return FHIRDefinedType.canonical;
      case 'code':
        return FHIRDefinedType.code;
      case 'date':
        return FHIRDefinedType.date;
      case 'dateTime':
        return FHIRDefinedType.dateTime;
      case 'decimal':
        return FHIRDefinedType.decimal;
      case 'id':
        return FHIRDefinedType.id;
      case 'instant':
        return FHIRDefinedType.instant;
      case 'integer':
        return FHIRDefinedType.integer;
      case 'markdown':
        return FHIRDefinedType.markdown;
      case 'oid':
        return FHIRDefinedType.oid;
      case 'positiveInt':
        return FHIRDefinedType.positiveInt;
      case 'string':
        return FHIRDefinedType.string;
      case 'time':
        return FHIRDefinedType.time;
      case 'unsignedInt':
        return FHIRDefinedType.unsignedInt;
      case 'uri':
        return FHIRDefinedType.uri;
      case 'url':
        return FHIRDefinedType.url;
      case 'uuid':
        return FHIRDefinedType.uuid;
      case 'xhtml':
        return FHIRDefinedType.xhtml;
      case 'Resource':
        return FHIRDefinedType.Resource;
      case 'Binary':
        return FHIRDefinedType.Binary;
      case 'Bundle':
        return FHIRDefinedType.Bundle;
      case 'DomainResource':
        return FHIRDefinedType.DomainResource;
      case 'Account':
        return FHIRDefinedType.Account;
      case 'ActivityDefinition':
        return FHIRDefinedType.ActivityDefinition;
      case 'AdministrableProductDefinition':
        return FHIRDefinedType.AdministrableProductDefinition;
      case 'AdverseEvent':
        return FHIRDefinedType.AdverseEvent;
      case 'AllergyIntolerance':
        return FHIRDefinedType.AllergyIntolerance;
      case 'Appointment':
        return FHIRDefinedType.Appointment;
      case 'AppointmentResponse':
        return FHIRDefinedType.AppointmentResponse;
      case 'AuditEvent':
        return FHIRDefinedType.AuditEvent;
      case 'Basic':
        return FHIRDefinedType.Basic;
      case 'BiologicallyDerivedProduct':
        return FHIRDefinedType.BiologicallyDerivedProduct;
      case 'BodyStructure':
        return FHIRDefinedType.BodyStructure;
      case 'CapabilityStatement':
        return FHIRDefinedType.CapabilityStatement;
      case 'CarePlan':
        return FHIRDefinedType.CarePlan;
      case 'CareTeam':
        return FHIRDefinedType.CareTeam;
      case 'CatalogEntry':
        return FHIRDefinedType.CatalogEntry;
      case 'ChargeItem':
        return FHIRDefinedType.ChargeItem;
      case 'ChargeItemDefinition':
        return FHIRDefinedType.ChargeItemDefinition;
      case 'Citation':
        return FHIRDefinedType.Citation;
      case 'Claim':
        return FHIRDefinedType.Claim;
      case 'ClaimResponse':
        return FHIRDefinedType.ClaimResponse;
      case 'ClinicalImpression':
        return FHIRDefinedType.ClinicalImpression;
      case 'ClinicalUseDefinition':
        return FHIRDefinedType.ClinicalUseDefinition;
      case 'CodeSystem':
        return FHIRDefinedType.CodeSystem;
      case 'Communication':
        return FHIRDefinedType.Communication;
      case 'CommunicationRequest':
        return FHIRDefinedType.CommunicationRequest;
      case 'CompartmentDefinition':
        return FHIRDefinedType.CompartmentDefinition;
      case 'Composition':
        return FHIRDefinedType.Composition;
      case 'ConceptMap':
        return FHIRDefinedType.ConceptMap;
      case 'Condition':
        return FHIRDefinedType.Condition;
      case 'Consent':
        return FHIRDefinedType.Consent;
      case 'Contract':
        return FHIRDefinedType.Contract;
      case 'Coverage':
        return FHIRDefinedType.Coverage;
      case 'CoverageEligibilityRequest':
        return FHIRDefinedType.CoverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return FHIRDefinedType.CoverageEligibilityResponse;
      case 'DetectedIssue':
        return FHIRDefinedType.DetectedIssue;
      case 'Device':
        return FHIRDefinedType.Device;
      case 'DeviceDefinition':
        return FHIRDefinedType.DeviceDefinition;
      case 'DeviceMetric':
        return FHIRDefinedType.DeviceMetric;
      case 'DeviceRequest':
        return FHIRDefinedType.DeviceRequest;
      case 'DeviceUseStatement':
        return FHIRDefinedType.DeviceUseStatement;
      case 'DiagnosticReport':
        return FHIRDefinedType.DiagnosticReport;
      case 'DocumentManifest':
        return FHIRDefinedType.DocumentManifest;
      case 'DocumentReference':
        return FHIRDefinedType.DocumentReference;
      case 'Encounter':
        return FHIRDefinedType.Encounter;
      case 'Endpoint':
        return FHIRDefinedType.Endpoint;
      case 'EnrollmentRequest':
        return FHIRDefinedType.EnrollmentRequest;
      case 'EnrollmentResponse':
        return FHIRDefinedType.EnrollmentResponse;
      case 'EpisodeOfCare':
        return FHIRDefinedType.EpisodeOfCare;
      case 'EventDefinition':
        return FHIRDefinedType.EventDefinition;
      case 'Evidence':
        return FHIRDefinedType.Evidence;
      case 'EvidenceReport':
        return FHIRDefinedType.EvidenceReport;
      case 'EvidenceVariable':
        return FHIRDefinedType.EvidenceVariable;
      case 'ExampleScenario':
        return FHIRDefinedType.ExampleScenario;
      case 'ExplanationOfBenefit':
        return FHIRDefinedType.ExplanationOfBenefit;
      case 'FamilyMemberHistory':
        return FHIRDefinedType.FamilyMemberHistory;
      case 'Flag':
        return FHIRDefinedType.Flag;
      case 'Goal':
        return FHIRDefinedType.Goal;
      case 'GraphDefinition':
        return FHIRDefinedType.GraphDefinition;
      case 'Group':
        return FHIRDefinedType.Group;
      case 'GuidanceResponse':
        return FHIRDefinedType.GuidanceResponse;
      case 'HealthcareService':
        return FHIRDefinedType.HealthcareService;
      case 'ImagingStudy':
        return FHIRDefinedType.ImagingStudy;
      case 'Immunization':
        return FHIRDefinedType.Immunization;
      case 'ImmunizationEvaluation':
        return FHIRDefinedType.ImmunizationEvaluation;
      case 'ImmunizationRecommendation':
        return FHIRDefinedType.ImmunizationRecommendation;
      case 'ImplementationGuide':
        return FHIRDefinedType.ImplementationGuide;
      case 'Ingredient':
        return FHIRDefinedType.Ingredient;
      case 'InsurancePlan':
        return FHIRDefinedType.InsurancePlan;
      case 'Invoice':
        return FHIRDefinedType.Invoice;
      case 'Library':
        return FHIRDefinedType.Library;
      case 'Linkage':
        return FHIRDefinedType.Linkage;
      case 'List':
        return FHIRDefinedType.List;
      case 'Location':
        return FHIRDefinedType.Location;
      case 'ManufacturedItemDefinition':
        return FHIRDefinedType.ManufacturedItemDefinition;
      case 'Measure':
        return FHIRDefinedType.Measure;
      case 'MeasureReport':
        return FHIRDefinedType.MeasureReport;
      case 'Media':
        return FHIRDefinedType.Media;
      case 'Medication':
        return FHIRDefinedType.Medication;
      case 'MedicationAdministration':
        return FHIRDefinedType.MedicationAdministration;
      case 'MedicationDispense':
        return FHIRDefinedType.MedicationDispense;
      case 'MedicationKnowledge':
        return FHIRDefinedType.MedicationKnowledge;
      case 'MedicationRequest':
        return FHIRDefinedType.MedicationRequest;
      case 'MedicationStatement':
        return FHIRDefinedType.MedicationStatement;
      case 'MedicinalProductDefinition':
        return FHIRDefinedType.MedicinalProductDefinition;
      case 'MessageDefinition':
        return FHIRDefinedType.MessageDefinition;
      case 'MessageHeader':
        return FHIRDefinedType.MessageHeader;
      case 'MolecularSequence':
        return FHIRDefinedType.MolecularSequence;
      case 'NamingSystem':
        return FHIRDefinedType.NamingSystem;
      case 'NutritionOrder':
        return FHIRDefinedType.NutritionOrder;
      case 'NutritionProduct':
        return FHIRDefinedType.NutritionProduct;
      case 'Observation':
        return FHIRDefinedType.Observation;
      case 'ObservationDefinition':
        return FHIRDefinedType.ObservationDefinition;
      case 'OperationDefinition':
        return FHIRDefinedType.OperationDefinition;
      case 'OperationOutcome':
        return FHIRDefinedType.OperationOutcome;
      case 'Organization':
        return FHIRDefinedType.Organization;
      case 'OrganizationAffiliation':
        return FHIRDefinedType.OrganizationAffiliation;
      case 'PackagedProductDefinition':
        return FHIRDefinedType.PackagedProductDefinition;
      case 'Patient':
        return FHIRDefinedType.Patient;
      case 'PaymentNotice':
        return FHIRDefinedType.PaymentNotice;
      case 'PaymentReconciliation':
        return FHIRDefinedType.PaymentReconciliation;
      case 'Person':
        return FHIRDefinedType.Person;
      case 'PlanDefinition':
        return FHIRDefinedType.PlanDefinition;
      case 'Practitioner':
        return FHIRDefinedType.Practitioner;
      case 'PractitionerRole':
        return FHIRDefinedType.PractitionerRole;
      case 'Procedure':
        return FHIRDefinedType.Procedure;
      case 'Provenance':
        return FHIRDefinedType.Provenance;
      case 'Questionnaire':
        return FHIRDefinedType.Questionnaire;
      case 'QuestionnaireResponse':
        return FHIRDefinedType.QuestionnaireResponse;
      case 'RegulatedAuthorization':
        return FHIRDefinedType.RegulatedAuthorization;
      case 'RelatedPerson':
        return FHIRDefinedType.RelatedPerson;
      case 'RequestGroup':
        return FHIRDefinedType.RequestGroup;
      case 'ResearchDefinition':
        return FHIRDefinedType.ResearchDefinition;
      case 'ResearchElementDefinition':
        return FHIRDefinedType.ResearchElementDefinition;
      case 'ResearchStudy':
        return FHIRDefinedType.ResearchStudy;
      case 'ResearchSubject':
        return FHIRDefinedType.ResearchSubject;
      case 'RiskAssessment':
        return FHIRDefinedType.RiskAssessment;
      case 'Schedule':
        return FHIRDefinedType.Schedule;
      case 'SearchParameter':
        return FHIRDefinedType.SearchParameter;
      case 'ServiceRequest':
        return FHIRDefinedType.ServiceRequest;
      case 'Slot':
        return FHIRDefinedType.Slot;
      case 'Specimen':
        return FHIRDefinedType.Specimen;
      case 'SpecimenDefinition':
        return FHIRDefinedType.SpecimenDefinition;
      case 'StructureDefinition':
        return FHIRDefinedType.StructureDefinition;
      case 'StructureMap':
        return FHIRDefinedType.StructureMap;
      case 'Subscription':
        return FHIRDefinedType.Subscription;
      case 'SubscriptionStatus':
        return FHIRDefinedType.SubscriptionStatus;
      case 'SubscriptionTopic':
        return FHIRDefinedType.SubscriptionTopic;
      case 'Substance':
        return FHIRDefinedType.Substance;
      case 'SubstanceDefinition':
        return FHIRDefinedType.SubstanceDefinition;
      case 'SupplyDelivery':
        return FHIRDefinedType.SupplyDelivery;
      case 'SupplyRequest':
        return FHIRDefinedType.SupplyRequest;
      case 'Task':
        return FHIRDefinedType.Task;
      case 'TerminologyCapabilities':
        return FHIRDefinedType.TerminologyCapabilities;
      case 'TestReport':
        return FHIRDefinedType.TestReport;
      case 'TestScript':
        return FHIRDefinedType.TestScript;
      case 'ValueSet':
        return FHIRDefinedType.ValueSet;
      case 'VerificationResult':
        return FHIRDefinedType.VerificationResult;
      case 'VisionPrescription':
        return FHIRDefinedType.VisionPrescription;
      case 'Parameters':
        return FHIRDefinedType.Parameters;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static FHIRDefinedType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
