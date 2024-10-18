// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Possible types of subjects.
enum SubjectType {
  /// Display: Resource
  /// Definition: --- Abstract Type! ---This is the base resource type for everything.
  Resource('Resource'),

  /// Display: Binary
  /// Definition: A resource that represents the data of a single raw artifact as digital content accessible in its native format. A Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
  Binary('Binary'),

  /// Display: Bundle
  /// Definition: A container for a collection of resources.
  Bundle('Bundle'),

  /// Display: DomainResource
  /// Definition: --- Abstract Type! ---A resource that includes narrative, extensions, and contained resources.
  DomainResource('DomainResource'),

  /// Display: Account
  /// Definition: A financial tool for tracking value accrued for a particular purpose. In the healthcare field, used to track charges for a patient, cost centers, etc.
  Account('Account'),

  /// Display: ActivityDefinition
  /// Definition: This resource allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context.
  ActivityDefinition('ActivityDefinition'),

  /// Display: AdministrableProductDefinition
  /// Definition: A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).
  AdministrableProductDefinition('AdministrableProductDefinition'),

  /// Display: AdverseEvent
  /// Definition: Actual or potential/avoided event causing unintended physical injury resulting from or contributed to by medical care, a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization, or that results in death.
  AdverseEvent('AdverseEvent'),

  /// Display: AllergyIntolerance
  /// Definition: Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.
  AllergyIntolerance('AllergyIntolerance'),

  /// Display: Appointment
  /// Definition: A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
  Appointment('Appointment'),

  /// Display: AppointmentResponse
  /// Definition: A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
  AppointmentResponse('AppointmentResponse'),

  /// Display: AuditEvent
  /// Definition: A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion attempts and monitoring for inappropriate usage.
  AuditEvent('AuditEvent'),

  /// Display: Basic
  /// Definition: Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing resource, and custom resources not appropriate for inclusion in the FHIR specification.
  Basic('Basic'),

  /// Display: BiologicallyDerivedProduct
  /// Definition: A material substance originating from a biological entity intended to be transplanted or infused into another (possibly the same) biological entity.
  BiologicallyDerivedProduct('BiologicallyDerivedProduct'),

  /// Display: BodyStructure
  /// Definition: Record details about an anatomical structure. This resource may be used when a coded concept does not provide the necessary detail needed for the use case.
  BodyStructure('BodyStructure'),

  /// Display: CapabilityStatement
  /// Definition: A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server for a particular version of FHIR that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  CapabilityStatement('CapabilityStatement'),

  /// Display: CarePlan
  /// Definition: Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.
  CarePlan('CarePlan'),

  /// Display: CareTeam
  /// Definition: The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care for a patient.
  CareTeam('CareTeam'),

  /// Display: CatalogEntry
  /// Definition: Catalog entries are wrappers that contextualize items included in a catalog.
  CatalogEntry('CatalogEntry'),

  /// Display: ChargeItem
  /// Definition: The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons. Main Usage of the ChargeItem is to enable the billing process and internal cost allocation.
  ChargeItem('ChargeItem'),

  /// Display: ChargeItemDefinition
  /// Definition: The ChargeItemDefinition resource provides the properties that apply to the (billing) codes necessary to calculate costs and prices. The properties may differ largely depending on type and realm, therefore this resource gives only a rough structure and requires profiling for each type of billing code system.
  ChargeItemDefinition('ChargeItemDefinition'),

  /// Display: Citation
  /// Definition: The Citation Resource enables reference to any knowledge artifact for purposes of identification and attribution. The Citation Resource supports existing reference structures and developing publication practices such as versioning, expressing complex contributorship roles, and referencing computable resources.
  Citation('Citation'),

  /// Display: Claim
  /// Definition: A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  Claim('Claim'),

  /// Display: ClaimResponse
  /// Definition: This resource provides the adjudication details from the processing of a Claim resource.
  ClaimResponse('ClaimResponse'),

  /// Display: ClinicalImpression
  /// Definition: A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter, but this varies greatly depending on the clinical workflow. This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as Apgar score.
  ClinicalImpression('ClinicalImpression'),

  /// Display: ClinicalUseDefinition
  /// Definition: A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  ClinicalUseDefinition('ClinicalUseDefinition'),

  /// Display: CodeSystem
  /// Definition: The CodeSystem resource is used to declare the existence of and describe a code system or code system supplement and its key properties, and optionally define a part or all of its content.
  CodeSystem('CodeSystem'),

  /// Display: Communication
  /// Definition: An occurrence of information being transmitted; e.g. an alert that was sent to a responsible provider, a public health agency that was notified about a reportable condition.
  Communication('Communication'),

  /// Display: CommunicationRequest
  /// Definition: A request to convey information; e.g. the CDS system proposes that an alert be sent to a responsible provider, the CDS system proposes that the public health agency be notified about a reportable condition.
  CommunicationRequest('CommunicationRequest'),

  /// Display: CompartmentDefinition
  /// Definition: A compartment definition that defines how resources are accessed on a server.
  CompartmentDefinition('CompartmentDefinition'),

  /// Display: Composition
  /// Definition: A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.).
  Composition('Composition'),

  /// Display: ConceptMap
  /// Definition: A statement of relationships from one set of concepts to one or more other concepts - either concepts in code systems, or data element/data element concepts, or classes in class models.
  ConceptMap('ConceptMap'),

  /// Display: Condition
  /// Definition: A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.
  Condition('Condition'),

  /// Display: Consent
  /// Definition: A record of a healthcare consumer’s choices, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.
  Consent('Consent'),

  /// Display: Contract
  /// Definition: Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  Contract('Contract'),

  /// Display: Coverage
  /// Definition: Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
  Coverage('Coverage'),

  /// Display: CoverageEligibilityRequest
  /// Definition: The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
  CoverageEligibilityRequest('CoverageEligibilityRequest'),

  /// Display: CoverageEligibilityResponse
  /// Definition: This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
  CoverageEligibilityResponse('CoverageEligibilityResponse'),

  /// Display: DetectedIssue
  /// Definition: Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
  DetectedIssue('DetectedIssue'),

  /// Display: Device
  /// Definition: A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
  Device('Device'),

  /// Display: DeviceDefinition
  /// Definition: The characteristics, operational status and capabilities of a medical-related component of a medical device.
  DeviceDefinition('DeviceDefinition'),

  /// Display: DeviceMetric
  /// Definition: Describes a measurement, calculation or setting capability of a medical device.
  DeviceMetric('DeviceMetric'),

  /// Display: DeviceRequest
  /// Definition: Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external assistive device, such as a walker.
  DeviceRequest('DeviceRequest'),

  /// Display: DeviceUseStatement
  /// Definition: A record of a device being used by a patient where the record is the result of a report from the patient or another clinician.
  DeviceUseStatement('DeviceUseStatement'),

  /// Display: DiagnosticReport
  /// Definition: The findings and interpretation of diagnostic tests performed on patients, groups of patients, devices, and locations, and/or specimens derived from these. The report includes clinical context such as requesting and provider information, and some mix of atomic results, images, textual and coded interpretations, and formatted representation of diagnostic reports.
  DiagnosticReport('DiagnosticReport'),

  /// Display: DocumentManifest
  /// Definition: A collection of documents compiled for a purpose together with metadata that applies to the collection.
  DocumentManifest('DocumentManifest'),

  /// Display: DocumentReference
  /// Definition: A reference to a document of any kind for any purpose. Provides metadata about the document so that the document can be discovered and managed. The scope of a document is any seralized object with a mime-type, so includes formal patient centric documents (CDA), cliical notes, scanned paper, and non-patient specific documents like policy text.
  DocumentReference('DocumentReference'),

  /// Display: Encounter
  /// Definition: An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.
  Encounter('Encounter'),

  /// Display: Endpoint
  /// Definition: The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
  Endpoint('Endpoint'),

  /// Display: EnrollmentRequest
  /// Definition: This resource provides the insurance enrollment details to the insurer regarding a specified coverage.
  EnrollmentRequest('EnrollmentRequest'),

  /// Display: EnrollmentResponse
  /// Definition: This resource provides enrollment and plan details from the processing of an EnrollmentRequest resource.
  EnrollmentResponse('EnrollmentResponse'),

  /// Display: EpisodeOfCare
  /// Definition: An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time.
  EpisodeOfCare('EpisodeOfCare'),

  /// Display: EventDefinition
  /// Definition: The EventDefinition resource provides a reusable description of when a particular event can occur.
  EventDefinition('EventDefinition'),

  /// Display: Evidence
  /// Definition: The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (eg population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  Evidence('Evidence'),

  /// Display: EvidenceReport
  /// Definition: The EvidenceReport Resource is a specialized container for a collection of resources and codable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  EvidenceReport('EvidenceReport'),

  /// Display: EvidenceVariable
  /// Definition: The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
  EvidenceVariable('EvidenceVariable'),

  /// Display: ExampleScenario
  /// Definition: Example of workflow instance.
  ExampleScenario('ExampleScenario'),

  /// Display: ExplanationOfBenefit
  /// Definition: This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
  ExplanationOfBenefit('ExplanationOfBenefit'),

  /// Display: FamilyMemberHistory
  /// Definition: Significant health conditions for a person related to the patient relevant in the context of care for the patient.
  FamilyMemberHistory('FamilyMemberHistory'),

  /// Display: Flag
  /// Definition: Prospective warnings of potential issues when providing care to the patient.
  Flag('Flag'),

  /// Display: Goal
  /// Definition: Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
  Goal('Goal'),

  /// Display: GraphDefinition
  /// Definition: A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
  GraphDefinition('GraphDefinition'),

  /// Display: Group
  /// Definition: Represents a defined collection of entities that may be discussed or acted upon collectively but which are not expected to act collectively, and are not formally or legally recognized; i.e. a collection of entities that isn't an Organization.
  Group('Group'),

  /// Display: GuidanceResponse
  /// Definition: A guidance response is the formal response to a guidance request, including any output parameters returned by the evaluation, as well as the description of any proposed actions to be taken.
  GuidanceResponse('GuidanceResponse'),

  /// Display: HealthcareService
  /// Definition: The details of a healthcare service available at a location.
  HealthcareService('HealthcareService'),

  /// Display: ImagingStudy
  /// Definition: Representation of the content produced in a DICOM imaging study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.
  ImagingStudy('ImagingStudy'),

  /// Display: Immunization
  /// Definition: Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
  Immunization('Immunization'),

  /// Display: ImmunizationEvaluation
  /// Definition: Describes a comparison of an immunization event against published recommendations to determine if the administration is "valid" in relation to those recommendations.
  ImmunizationEvaluation('ImmunizationEvaluation'),

  /// Display: ImmunizationRecommendation
  /// Definition: A patient's point-in-time set of recommendations (i.e. forecasting) according to a published schedule with optional supporting justification.
  ImmunizationRecommendation('ImmunizationRecommendation'),

  /// Display: ImplementationGuide
  /// Definition: A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  ImplementationGuide('ImplementationGuide'),

  /// Display: Ingredient
  /// Definition: An ingredient of a manufactured item or pharmaceutical product.
  Ingredient('Ingredient'),

  /// Display: InsurancePlan
  /// Definition: Details of a Health Insurance product/plan provided by an organization.
  InsurancePlan('InsurancePlan'),

  /// Display: Invoice
  /// Definition: Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
  Invoice('Invoice'),

  /// Display: Library
  /// Definition: The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a collection of knowledge assets.
  Library('Library'),

  /// Display: Linkage
  /// Definition: Identifies two or more records (resource instances) that refer to the same real-world "occurrence".
  Linkage('Linkage'),

  /// Display: List
  /// Definition: A list is a curated collection of resources.
  List('List'),

  /// Display: Location
  /// Definition: Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.
  Location('Location'),

  /// Display: ManufacturedItemDefinition
  /// Definition: The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
  ManufacturedItemDefinition('ManufacturedItemDefinition'),

  /// Display: Measure
  /// Definition: The Measure resource provides the definition of a quality measure.
  Measure('Measure'),

  /// Display: MeasureReport
  /// Definition: The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
  MeasureReport('MeasureReport'),

  /// Display: Media
  /// Definition: A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct reference.
  Media('Media'),

  /// Display: Medication
  /// Definition: This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.
  Medication('Medication'),

  /// Display: MedicationAdministration
  /// Definition: Describes the event of a patient consuming or otherwise being administered a medication. This may be as simple as swallowing a tablet or it may be a long running infusion. Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.
  MedicationAdministration('MedicationAdministration'),

  /// Display: MedicationDispense
  /// Definition: Indicates that a medication product is to be or has been dispensed for a named person/patient. This includes a description of the medication product (supply) provided and the instructions for administering the medication. The medication dispense is the result of a pharmacy system responding to a medication order.
  MedicationDispense('MedicationDispense'),

  /// Display: MedicationKnowledge
  /// Definition: Information about a medication that is used to support knowledge.
  MedicationKnowledge('MedicationKnowledge'),

  /// Display: MedicationRequest
  /// Definition: An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
  MedicationRequest('MedicationRequest'),

  /// Display: MedicationStatement
  /// Definition: A record of a medication that is being consumed by a patient. A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future. The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician. A common scenario where this information is captured is during the history taking process during a patient visit or stay. The medication information may come from sources such as the patient's memory, from a prescription bottle, or from a list of medications the patient, clinician or other party maintains. The primary difference between a medication statement and a medication administration is that the medication administration has complete administration information and is based on actual administration information from the person who administered the medication. A medication statement is often, if not always, less specific. There is no required date/time when the medication was administered, in fact we only know that a source has reported the patient is taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing or less precise. As stated earlier, the medication statement information may come from the patient's memory, from a prescription bottle or from a list of medications the patient, clinician or other party maintains. Medication administration is more formal and is not missing detailed information.
  MedicationStatement('MedicationStatement'),

  /// Display: MedicinalProductDefinition
  /// Definition: Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use, drug catalogs, to support prescribing, adverse events management etc.).
  MedicinalProductDefinition('MedicinalProductDefinition'),

  /// Display: MessageDefinition
  /// Definition: Defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), if any, are permitted.
  MessageDefinition('MessageDefinition'),

  /// Display: MessageHeader
  /// Definition: The header for a message exchange that is either requesting or responding to an action. The reference(s) that are the subject of the action as well as other information related to the action are typically transmitted in a bundle in which the MessageHeader resource instance is the first resource in the bundle.
  MessageHeader('MessageHeader'),

  /// Display: MolecularSequence
  /// Definition: Raw data describing a biological sequence.
  MolecularSequence('MolecularSequence'),

  /// Display: NamingSystem
  /// Definition: A curated namespace that issues unique symbols within that namespace for the identification of concepts, people, devices, etc. Represents a "System" used within the Identifier and Coding data types.
  NamingSystem('NamingSystem'),

  /// Display: NutritionOrder
  /// Definition: A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
  NutritionOrder('NutritionOrder'),

  /// Display: NutritionProduct
  /// Definition: A food or fluid product that is consumed by patients.
  NutritionProduct('NutritionProduct'),

  /// Display: Observation
  /// Definition: Measurements and simple assertions made about a patient, device or other subject.
  Observation('Observation'),

  /// Display: ObservationDefinition
  /// Definition: Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
  ObservationDefinition('ObservationDefinition'),

  /// Display: OperationDefinition
  /// Definition: A formal computable definition of an operation (on the RESTful interface) or a named query (using the search interaction).
  OperationDefinition('OperationDefinition'),

  /// Display: OperationOutcome
  /// Definition: A collection of error, warning, or information messages that result from a system action.
  OperationOutcome('OperationOutcome'),

  /// Display: Organization
  /// Definition: A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.
  Organization('Organization'),

  /// Display: OrganizationAffiliation
  /// Definition: Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship.
  OrganizationAffiliation('OrganizationAffiliation'),

  /// Display: PackagedProductDefinition
  /// Definition: A medically related item or items, in a container or package.
  PackagedProductDefinition('PackagedProductDefinition'),

  /// Display: Patient
  /// Definition: Demographics and other administrative information about an individual or animal receiving care or other health-related services.
  Patient('Patient'),

  /// Display: PaymentNotice
  /// Definition: This resource provides the status of the payment for goods and services rendered, and the request and response resource references.
  PaymentNotice('PaymentNotice'),

  /// Display: PaymentReconciliation
  /// Definition: This resource provides the details including amount of a payment and allocates the payment items being paid.
  PaymentReconciliation('PaymentReconciliation'),

  /// Display: Person
  /// Definition: Demographics and administrative information about a person independent of a specific health-related context.
  Person('Person'),

  /// Display: PlanDefinition
  /// Definition: This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications.
  PlanDefinition('PlanDefinition'),

  /// Display: Practitioner
  /// Definition: A person who is directly or indirectly involved in the provisioning of healthcare.
  Practitioner('Practitioner'),

  /// Display: PractitionerRole
  /// Definition: A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time.
  PractitionerRole('PractitionerRole'),

  /// Display: Procedure
  /// Definition: An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy.
  Procedure('Procedure'),

  /// Display: Provenance
  /// Definition: Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
  Provenance('Provenance'),

  /// Display: Questionnaire
  /// Definition: A structured set of questions intended to guide the collection of answers from end-users. Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, consistent data collection.
  Questionnaire('Questionnaire'),

  /// Display: QuestionnaireResponse
  /// Definition: A structured set of questions and their answers. The questions are ordered and grouped into coherent subsets, corresponding to the structure of the grouping of the questionnaire being responded to.
  QuestionnaireResponse('QuestionnaireResponse'),

  /// Display: RegulatedAuthorization
  /// Definition: Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  RegulatedAuthorization('RegulatedAuthorization'),

  /// Display: RelatedPerson
  /// Definition: Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process.
  RelatedPerson('RelatedPerson'),

  /// Display: RequestGroup
  /// Definition: A group of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
  RequestGroup('RequestGroup'),

  /// Display: ResearchDefinition
  /// Definition: The ResearchDefinition resource describes the conditional state (population and any exposures being compared within the population) and outcome (if specified) that the knowledge (evidence, assertion, recommendation) is about.
  ResearchDefinition('ResearchDefinition'),

  /// Display: ResearchElementDefinition
  /// Definition: The ResearchElementDefinition resource describes a "PICO" element that knowledge (evidence, assertion, recommendation) is about.
  ResearchElementDefinition('ResearchElementDefinition'),

  /// Display: ResearchStudy
  /// Definition: A process where a researcher or organization plans and then executes a series of steps intended to increase the field of healthcare-related knowledge. This includes studies of safety, efficacy, comparative effectiveness and other information about medications, devices, therapies and other interventional and investigative techniques. A ResearchStudy involves the gathering of information about human or animal subjects.
  ResearchStudy('ResearchStudy'),

  /// Display: ResearchSubject
  /// Definition: A physical entity which is the primary unit of operational and/or administrative interest in a study.
  ResearchSubject('ResearchSubject'),

  /// Display: RiskAssessment
  /// Definition: An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
  RiskAssessment('RiskAssessment'),

  /// Display: Schedule
  /// Definition: A container for slots of time that may be available for booking appointments.
  Schedule('Schedule'),

  /// Display: SearchParameter
  /// Definition: A search parameter that defines a named search item that can be used to search/filter on a resource.
  SearchParameter('SearchParameter'),

  /// Display: ServiceRequest
  /// Definition: A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
  ServiceRequest('ServiceRequest'),

  /// Display: Slot
  /// Definition: A slot of time on a schedule that may be available for booking appointments.
  Slot('Slot'),

  /// Display: Specimen
  /// Definition: A sample to be used for analysis.
  Specimen('Specimen'),

  /// Display: SpecimenDefinition
  /// Definition: A kind of specimen with associated set of requirements.
  SpecimenDefinition('SpecimenDefinition'),

  /// Display: StructureDefinition
  /// Definition: A definition of a FHIR structure. This resource is used to describe the underlying resources, data types defined in FHIR, and also for describing extensions and constraints on resources and data types.
  StructureDefinition('StructureDefinition'),

  /// Display: StructureMap
  /// Definition: A Map of relationships between 2 structures that can be used to transform data.
  StructureMap('StructureMap'),

  /// Display: Subscription
  /// Definition: The subscription resource is used to define a push-based subscription from a server to another system. Once a subscription is registered with the server, the server checks every resource that is created or updated, and if the resource matches the given criteria, it sends a message on the defined "channel" so that another system can take an appropriate action.
  Subscription('Subscription'),

  /// Display: SubscriptionStatus
  /// Definition: The SubscriptionStatus resource describes the state of a Subscription during notifications.
  SubscriptionStatus('SubscriptionStatus'),

  /// Display: SubscriptionTopic
  /// Definition: Describes a stream of resource state changes identified by trigger criteria and annotated with labels useful to filter projections from this topic.
  SubscriptionTopic('SubscriptionTopic'),

  /// Display: Substance
  /// Definition: A homogeneous material with a definite composition.
  Substance('Substance'),

  /// Display: SubstanceDefinition
  /// Definition: The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinition('SubstanceDefinition'),

  /// Display: SupplyDelivery
  /// Definition: Record of delivery of what is supplied.
  SupplyDelivery('SupplyDelivery'),

  /// Display: SupplyRequest
  /// Definition: A record of a request for a medication, substance or device used in the healthcare setting.
  SupplyRequest('SupplyRequest'),

  /// Display: Task
  /// Definition: A task to be performed.
  Task('Task'),

  /// Display: TerminologyCapabilities
  /// Definition: A TerminologyCapabilities resource documents a set of capabilities (behaviors) of a FHIR Terminology Server that may be used as a statement of actual server functionality or a statement of required or desired server implementation.
  TerminologyCapabilities('TerminologyCapabilities'),

  /// Display: TestReport
  /// Definition: A summary of information based on the results of executing a TestScript.
  TestReport('TestReport'),

  /// Display: TestScript
  /// Definition: A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR specification.
  TestScript('TestScript'),

  /// Display: ValueSet
  /// Definition: A ValueSet resource instance specifies a set of codes drawn from one or more code systems, intended for use in a particular context. Value sets link between [[[CodeSystem]]] definitions and their use in [coded elements](terminologies.html).
  ValueSet('ValueSet'),

  /// Display: VerificationResult
  /// Definition: Describes validation requirements, source(s), status and dates for one or more elements.
  VerificationResult('VerificationResult'),

  /// Display: VisionPrescription
  /// Definition: An authorization for the provision of glasses and/or contact lenses to a patient.
  VisionPrescription('VisionPrescription'),

  /// Display: Parameters
  /// Definition: This resource is a non-persisted resource used to pass information into and back from an [operation](operations.html). It has no other use, and there is no RESTful endpoint associated with it.
  Parameters('Parameters'),

  /// Display:
  /// Definition:
  Patient_1('Patient'),

  /// Display:
  /// Definition:
  Practitioner_1('Practitioner'),

  /// Display:
  /// Definition:
  Organization_1('Organization'),

  /// Display:
  /// Definition:
  Location_1('Location'),

  /// Display:
  /// Definition:
  Device_1('Device'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SubjectType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SubjectType] instances.
  static SubjectType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubjectType.elementOnly.withElement(element);
    }
    return SubjectType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SubjectType withElement(Element? newElement) {
    return SubjectType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
