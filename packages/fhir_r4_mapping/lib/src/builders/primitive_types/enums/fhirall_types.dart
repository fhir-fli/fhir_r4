// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRAllTypes
enum FHIRAllTypesBuilderEnum {
  /// Address
  address,

  /// Age
  age,

  /// Annotation
  annotation,

  /// Attachment
  attachment,

  /// BackboneElement
  backboneElement,

  /// CodeableConcept
  codeableConcept,

  /// CodeableReference
  codeableReference,

  /// Coding
  coding,

  /// ContactDetail
  contactDetail,

  /// ContactPoint
  contactPoint,

  /// Contributor
  contributor,

  /// Count
  count,

  /// DataRequirement
  dataRequirement,

  /// Distance
  distance,

  /// Dosage
  dosage,

  /// Duration
  duration,

  /// Element
  element_,

  /// ElementDefinition
  elementDefinition,

  /// Expression
  expression,

  /// Extension
  extension,

  /// HumanName
  humanName,

  /// Identifier
  identifier,

  /// MarketingStatus
  marketingStatus,

  /// Meta
  meta,

  /// Money
  money,

  /// MoneyQuantity
  moneyQuantity,

  /// Narrative
  narrative,

  /// ParameterDefinition
  parameterDefinition,

  /// Period
  period,

  /// Population
  population,

  /// ProdCharacteristic
  prodCharacteristic,

  /// ProductShelfLife
  productShelfLife,

  /// Quantity
  quantity,

  /// Range
  range,

  /// Ratio
  ratio,

  /// RatioRange
  ratioRange,

  /// Reference
  reference,

  /// RelatedArtifact
  relatedArtifact,

  /// SampledData
  sampledData,

  /// Signature
  signature,

  /// SimpleQuantity
  simpleQuantity,

  /// Timing
  timing,

  /// TriggerDefinition
  triggerDefinition,

  /// UsageContext
  usageContext,

  /// base64Binary
  base64Binary,

  /// boolean
  boolean,

  /// canonical
  canonical,

  /// code
  code,

  /// date
  date,

  /// dateTime
  dateTime,

  /// decimal
  decimal,

  /// id
  id_,

  /// instant
  instant,

  /// integer
  integer,

  /// markdown
  markdown,

  /// oid
  oid,

  /// positiveInt
  positiveInt,

  /// string
  string,

  /// time
  time,

  /// unsignedInt
  unsignedInt,

  /// uri
  uri,

  /// url
  url,

  /// uuid
  uuid,

  /// xhtml
  xhtml,

  /// Resource
  resource,

  /// Binary
  binary,

  /// Bundle
  bundle,

  /// DomainResource
  domainResource,

  /// Account
  account,

  /// ActivityDefinition
  activityDefinition,

  /// AdministrableProductDefinition
  administrableProductDefinition,

  /// AdverseEvent
  adverseEvent,

  /// AllergyIntolerance
  allergyIntolerance,

  /// Appointment
  appointment,

  /// AppointmentResponse
  appointmentResponse,

  /// AuditEvent
  auditEvent,

  /// Basic
  basic,

  /// BiologicallyDerivedProduct
  biologicallyDerivedProduct,

  /// BodyStructure
  bodyStructure,

  /// CapabilityStatement
  capabilityStatement,

  /// CarePlan
  carePlan,

  /// CareTeam
  careTeam,

  /// CatalogEntry
  catalogEntry,

  /// ChargeItem
  chargeItem,

  /// ChargeItemDefinition
  chargeItemDefinition,

  /// Citation
  citation,

  /// Claim
  claim,

  /// ClaimResponse
  claimResponse,

  /// ClinicalImpression
  clinicalImpression,

  /// ClinicalUseDefinition
  clinicalUseDefinition,

  /// CodeSystem
  codeSystem,

  /// Communication
  communication,

  /// CommunicationRequest
  communicationRequest,

  /// CompartmentDefinition
  compartmentDefinition,

  /// Composition
  composition,

  /// ConceptMap
  conceptMap,

  /// Condition
  condition,

  /// Consent
  consent,

  /// Contract
  contract,

  /// Coverage
  coverage,

  /// CoverageEligibilityRequest
  coverageEligibilityRequest,

  /// CoverageEligibilityResponse
  coverageEligibilityResponse,

  /// DetectedIssue
  detectedIssue,

  /// Device
  device,

  /// DeviceDefinition
  deviceDefinition,

  /// DeviceMetric
  deviceMetric,

  /// DeviceRequest
  deviceRequest,

  /// DeviceUseStatement
  deviceUseStatement,

  /// DiagnosticReport
  diagnosticReport,

  /// DocumentManifest
  documentManifest,

  /// DocumentReference
  documentReference,

  /// Encounter
  encounter,

  /// Endpoint
  endpoint,

  /// EnrollmentRequest
  enrollmentRequest,

  /// EnrollmentResponse
  enrollmentResponse,

  /// EpisodeOfCare
  episodeOfCare,

  /// EventDefinition
  eventDefinition,

  /// Evidence
  evidence,

  /// EvidenceReport
  evidenceReport,

  /// EvidenceVariable
  evidenceVariable,

  /// ExampleScenario
  exampleScenario,

  /// ExplanationOfBenefit
  explanationOfBenefit,

  /// FamilyMemberHistory
  familyMemberHistory,

  /// Flag
  flag,

  /// Goal
  goal,

  /// GraphDefinition
  graphDefinition,

  /// Group
  group,

  /// GuidanceResponse
  guidanceResponse,

  /// HealthcareService
  healthcareService,

  /// ImagingStudy
  imagingStudy,

  /// Immunization
  immunization,

  /// ImmunizationEvaluation
  immunizationEvaluation,

  /// ImmunizationRecommendation
  immunizationRecommendation,

  /// ImplementationGuide
  implementationGuide,

  /// Ingredient
  ingredient,

  /// InsurancePlan
  insurancePlan,

  /// Invoice
  invoice,

  /// Library
  library,

  /// Linkage
  linkage,

  /// List
  list_,

  /// Location
  location,

  /// ManufacturedItemDefinition
  manufacturedItemDefinition,

  /// Measure
  measure,

  /// MeasureReport
  measureReport,

  /// Media
  media,

  /// Medication
  medication,

  /// MedicationAdministration
  medicationAdministration,

  /// MedicationDispense
  medicationDispense,

  /// MedicationKnowledge
  medicationKnowledge,

  /// MedicationRequest
  medicationRequest,

  /// MedicationStatement
  medicationStatement,

  /// MedicinalProductDefinition
  medicinalProductDefinition,

  /// MessageDefinition
  messageDefinition,

  /// MessageHeader
  messageHeader,

  /// MolecularSequence
  molecularSequence,

  /// NamingSystem
  namingSystem,

  /// NutritionOrder
  nutritionOrder,

  /// NutritionProduct
  nutritionProduct,

  /// Observation
  observation,

  /// ObservationDefinition
  observationDefinition,

  /// OperationDefinition
  operationDefinition,

  /// OperationOutcome
  operationOutcome,

  /// Organization
  organization,

  /// OrganizationAffiliation
  organizationAffiliation,

  /// PackagedProductDefinition
  packagedProductDefinition,

  /// Patient
  patient,

  /// PaymentNotice
  paymentNotice,

  /// PaymentReconciliation
  paymentReconciliation,

  /// Person
  person,

  /// PlanDefinition
  planDefinition,

  /// Practitioner
  practitioner,

  /// PractitionerRole
  practitionerRole,

  /// Procedure
  procedure,

  /// Provenance
  provenance,

  /// Questionnaire
  questionnaire,

  /// QuestionnaireResponse
  questionnaireResponse,

  /// RegulatedAuthorization
  regulatedAuthorization,

  /// RelatedPerson
  relatedPerson,

  /// RequestGroup
  requestGroup,

  /// ResearchDefinition
  researchDefinition,

  /// ResearchElementDefinition
  researchElementDefinition,

  /// ResearchStudy
  researchStudy,

  /// ResearchSubject
  researchSubject,

  /// RiskAssessment
  riskAssessment,

  /// Schedule
  schedule,

  /// SearchParameter
  searchParameter,

  /// ServiceRequest
  serviceRequest,

  /// Slot
  slot,

  /// Specimen
  specimen,

  /// SpecimenDefinition
  specimenDefinition,

  /// StructureDefinition
  structureDefinition,

  /// StructureMap
  structureMap,

  /// Subscription
  subscription,

  /// SubscriptionStatus
  subscriptionStatus,

  /// SubscriptionTopic
  subscriptionTopic,

  /// Substance
  substance,

  /// SubstanceDefinition
  substanceDefinition,

  /// SupplyDelivery
  supplyDelivery,

  /// SupplyRequest
  supplyRequest,

  /// Task
  task,

  /// TerminologyCapabilities
  terminologyCapabilities,

  /// TestReport
  testReport,

  /// TestScript
  testScript,

  /// ValueSet
  valueSet,

  /// VerificationResult
  verificationResult,

  /// VisionPrescription
  visionPrescription,

  /// Parameters
  parameters,

  /// Type
  type,

  /// Any
  any,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FHIRAllTypesBuilderEnum.address:
        return 'Address';
      case FHIRAllTypesBuilderEnum.age:
        return 'Age';
      case FHIRAllTypesBuilderEnum.annotation:
        return 'Annotation';
      case FHIRAllTypesBuilderEnum.attachment:
        return 'Attachment';
      case FHIRAllTypesBuilderEnum.backboneElement:
        return 'BackboneElement';
      case FHIRAllTypesBuilderEnum.codeableConcept:
        return 'CodeableConcept';
      case FHIRAllTypesBuilderEnum.codeableReference:
        return 'CodeableReference';
      case FHIRAllTypesBuilderEnum.coding:
        return 'Coding';
      case FHIRAllTypesBuilderEnum.contactDetail:
        return 'ContactDetail';
      case FHIRAllTypesBuilderEnum.contactPoint:
        return 'ContactPoint';
      case FHIRAllTypesBuilderEnum.contributor:
        return 'Contributor';
      case FHIRAllTypesBuilderEnum.count:
        return 'Count';
      case FHIRAllTypesBuilderEnum.dataRequirement:
        return 'DataRequirement';
      case FHIRAllTypesBuilderEnum.distance:
        return 'Distance';
      case FHIRAllTypesBuilderEnum.dosage:
        return 'Dosage';
      case FHIRAllTypesBuilderEnum.duration:
        return 'Duration';
      case FHIRAllTypesBuilderEnum.element_:
        return 'Element';
      case FHIRAllTypesBuilderEnum.elementDefinition:
        return 'ElementDefinition';
      case FHIRAllTypesBuilderEnum.expression:
        return 'Expression';
      case FHIRAllTypesBuilderEnum.extension:
        return 'Extension';
      case FHIRAllTypesBuilderEnum.humanName:
        return 'HumanName';
      case FHIRAllTypesBuilderEnum.identifier:
        return 'Identifier';
      case FHIRAllTypesBuilderEnum.marketingStatus:
        return 'MarketingStatus';
      case FHIRAllTypesBuilderEnum.meta:
        return 'Meta';
      case FHIRAllTypesBuilderEnum.money:
        return 'Money';
      case FHIRAllTypesBuilderEnum.moneyQuantity:
        return 'MoneyQuantity';
      case FHIRAllTypesBuilderEnum.narrative:
        return 'Narrative';
      case FHIRAllTypesBuilderEnum.parameterDefinition:
        return 'ParameterDefinition';
      case FHIRAllTypesBuilderEnum.period:
        return 'Period';
      case FHIRAllTypesBuilderEnum.population:
        return 'Population';
      case FHIRAllTypesBuilderEnum.prodCharacteristic:
        return 'ProdCharacteristic';
      case FHIRAllTypesBuilderEnum.productShelfLife:
        return 'ProductShelfLife';
      case FHIRAllTypesBuilderEnum.quantity:
        return 'Quantity';
      case FHIRAllTypesBuilderEnum.range:
        return 'Range';
      case FHIRAllTypesBuilderEnum.ratio:
        return 'Ratio';
      case FHIRAllTypesBuilderEnum.ratioRange:
        return 'RatioRange';
      case FHIRAllTypesBuilderEnum.reference:
        return 'Reference';
      case FHIRAllTypesBuilderEnum.relatedArtifact:
        return 'RelatedArtifact';
      case FHIRAllTypesBuilderEnum.sampledData:
        return 'SampledData';
      case FHIRAllTypesBuilderEnum.signature:
        return 'Signature';
      case FHIRAllTypesBuilderEnum.simpleQuantity:
        return 'SimpleQuantity';
      case FHIRAllTypesBuilderEnum.timing:
        return 'Timing';
      case FHIRAllTypesBuilderEnum.triggerDefinition:
        return 'TriggerDefinition';
      case FHIRAllTypesBuilderEnum.usageContext:
        return 'UsageContext';
      case FHIRAllTypesBuilderEnum.base64Binary:
        return 'base64Binary';
      case FHIRAllTypesBuilderEnum.boolean:
        return 'boolean';
      case FHIRAllTypesBuilderEnum.canonical:
        return 'canonical';
      case FHIRAllTypesBuilderEnum.code:
        return 'code';
      case FHIRAllTypesBuilderEnum.date:
        return 'date';
      case FHIRAllTypesBuilderEnum.dateTime:
        return 'dateTime';
      case FHIRAllTypesBuilderEnum.decimal:
        return 'decimal';
      case FHIRAllTypesBuilderEnum.id_:
        return 'id';
      case FHIRAllTypesBuilderEnum.instant:
        return 'instant';
      case FHIRAllTypesBuilderEnum.integer:
        return 'integer';
      case FHIRAllTypesBuilderEnum.markdown:
        return 'markdown';
      case FHIRAllTypesBuilderEnum.oid:
        return 'oid';
      case FHIRAllTypesBuilderEnum.positiveInt:
        return 'positiveInt';
      case FHIRAllTypesBuilderEnum.string:
        return 'string';
      case FHIRAllTypesBuilderEnum.time:
        return 'time';
      case FHIRAllTypesBuilderEnum.unsignedInt:
        return 'unsignedInt';
      case FHIRAllTypesBuilderEnum.uri:
        return 'uri';
      case FHIRAllTypesBuilderEnum.url:
        return 'url';
      case FHIRAllTypesBuilderEnum.uuid:
        return 'uuid';
      case FHIRAllTypesBuilderEnum.xhtml:
        return 'xhtml';
      case FHIRAllTypesBuilderEnum.resource:
        return 'Resource';
      case FHIRAllTypesBuilderEnum.binary:
        return 'Binary';
      case FHIRAllTypesBuilderEnum.bundle:
        return 'Bundle';
      case FHIRAllTypesBuilderEnum.domainResource:
        return 'DomainResource';
      case FHIRAllTypesBuilderEnum.account:
        return 'Account';
      case FHIRAllTypesBuilderEnum.activityDefinition:
        return 'ActivityDefinition';
      case FHIRAllTypesBuilderEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case FHIRAllTypesBuilderEnum.adverseEvent:
        return 'AdverseEvent';
      case FHIRAllTypesBuilderEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case FHIRAllTypesBuilderEnum.appointment:
        return 'Appointment';
      case FHIRAllTypesBuilderEnum.appointmentResponse:
        return 'AppointmentResponse';
      case FHIRAllTypesBuilderEnum.auditEvent:
        return 'AuditEvent';
      case FHIRAllTypesBuilderEnum.basic:
        return 'Basic';
      case FHIRAllTypesBuilderEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case FHIRAllTypesBuilderEnum.bodyStructure:
        return 'BodyStructure';
      case FHIRAllTypesBuilderEnum.capabilityStatement:
        return 'CapabilityStatement';
      case FHIRAllTypesBuilderEnum.carePlan:
        return 'CarePlan';
      case FHIRAllTypesBuilderEnum.careTeam:
        return 'CareTeam';
      case FHIRAllTypesBuilderEnum.catalogEntry:
        return 'CatalogEntry';
      case FHIRAllTypesBuilderEnum.chargeItem:
        return 'ChargeItem';
      case FHIRAllTypesBuilderEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case FHIRAllTypesBuilderEnum.citation:
        return 'Citation';
      case FHIRAllTypesBuilderEnum.claim:
        return 'Claim';
      case FHIRAllTypesBuilderEnum.claimResponse:
        return 'ClaimResponse';
      case FHIRAllTypesBuilderEnum.clinicalImpression:
        return 'ClinicalImpression';
      case FHIRAllTypesBuilderEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case FHIRAllTypesBuilderEnum.codeSystem:
        return 'CodeSystem';
      case FHIRAllTypesBuilderEnum.communication:
        return 'Communication';
      case FHIRAllTypesBuilderEnum.communicationRequest:
        return 'CommunicationRequest';
      case FHIRAllTypesBuilderEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case FHIRAllTypesBuilderEnum.composition:
        return 'Composition';
      case FHIRAllTypesBuilderEnum.conceptMap:
        return 'ConceptMap';
      case FHIRAllTypesBuilderEnum.condition:
        return 'Condition';
      case FHIRAllTypesBuilderEnum.consent:
        return 'Consent';
      case FHIRAllTypesBuilderEnum.contract:
        return 'Contract';
      case FHIRAllTypesBuilderEnum.coverage:
        return 'Coverage';
      case FHIRAllTypesBuilderEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case FHIRAllTypesBuilderEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case FHIRAllTypesBuilderEnum.detectedIssue:
        return 'DetectedIssue';
      case FHIRAllTypesBuilderEnum.device:
        return 'Device';
      case FHIRAllTypesBuilderEnum.deviceDefinition:
        return 'DeviceDefinition';
      case FHIRAllTypesBuilderEnum.deviceMetric:
        return 'DeviceMetric';
      case FHIRAllTypesBuilderEnum.deviceRequest:
        return 'DeviceRequest';
      case FHIRAllTypesBuilderEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case FHIRAllTypesBuilderEnum.diagnosticReport:
        return 'DiagnosticReport';
      case FHIRAllTypesBuilderEnum.documentManifest:
        return 'DocumentManifest';
      case FHIRAllTypesBuilderEnum.documentReference:
        return 'DocumentReference';
      case FHIRAllTypesBuilderEnum.encounter:
        return 'Encounter';
      case FHIRAllTypesBuilderEnum.endpoint:
        return 'Endpoint';
      case FHIRAllTypesBuilderEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case FHIRAllTypesBuilderEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case FHIRAllTypesBuilderEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case FHIRAllTypesBuilderEnum.eventDefinition:
        return 'EventDefinition';
      case FHIRAllTypesBuilderEnum.evidence:
        return 'Evidence';
      case FHIRAllTypesBuilderEnum.evidenceReport:
        return 'EvidenceReport';
      case FHIRAllTypesBuilderEnum.evidenceVariable:
        return 'EvidenceVariable';
      case FHIRAllTypesBuilderEnum.exampleScenario:
        return 'ExampleScenario';
      case FHIRAllTypesBuilderEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case FHIRAllTypesBuilderEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case FHIRAllTypesBuilderEnum.flag:
        return 'Flag';
      case FHIRAllTypesBuilderEnum.goal:
        return 'Goal';
      case FHIRAllTypesBuilderEnum.graphDefinition:
        return 'GraphDefinition';
      case FHIRAllTypesBuilderEnum.group:
        return 'Group';
      case FHIRAllTypesBuilderEnum.guidanceResponse:
        return 'GuidanceResponse';
      case FHIRAllTypesBuilderEnum.healthcareService:
        return 'HealthcareService';
      case FHIRAllTypesBuilderEnum.imagingStudy:
        return 'ImagingStudy';
      case FHIRAllTypesBuilderEnum.immunization:
        return 'Immunization';
      case FHIRAllTypesBuilderEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case FHIRAllTypesBuilderEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case FHIRAllTypesBuilderEnum.implementationGuide:
        return 'ImplementationGuide';
      case FHIRAllTypesBuilderEnum.ingredient:
        return 'Ingredient';
      case FHIRAllTypesBuilderEnum.insurancePlan:
        return 'InsurancePlan';
      case FHIRAllTypesBuilderEnum.invoice:
        return 'Invoice';
      case FHIRAllTypesBuilderEnum.library:
        return 'Library';
      case FHIRAllTypesBuilderEnum.linkage:
        return 'Linkage';
      case FHIRAllTypesBuilderEnum.list_:
        return 'List';
      case FHIRAllTypesBuilderEnum.location:
        return 'Location';
      case FHIRAllTypesBuilderEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case FHIRAllTypesBuilderEnum.measure:
        return 'Measure';
      case FHIRAllTypesBuilderEnum.measureReport:
        return 'MeasureReport';
      case FHIRAllTypesBuilderEnum.media:
        return 'Media';
      case FHIRAllTypesBuilderEnum.medication:
        return 'Medication';
      case FHIRAllTypesBuilderEnum.medicationAdministration:
        return 'MedicationAdministration';
      case FHIRAllTypesBuilderEnum.medicationDispense:
        return 'MedicationDispense';
      case FHIRAllTypesBuilderEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case FHIRAllTypesBuilderEnum.medicationRequest:
        return 'MedicationRequest';
      case FHIRAllTypesBuilderEnum.medicationStatement:
        return 'MedicationStatement';
      case FHIRAllTypesBuilderEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case FHIRAllTypesBuilderEnum.messageDefinition:
        return 'MessageDefinition';
      case FHIRAllTypesBuilderEnum.messageHeader:
        return 'MessageHeader';
      case FHIRAllTypesBuilderEnum.molecularSequence:
        return 'MolecularSequence';
      case FHIRAllTypesBuilderEnum.namingSystem:
        return 'NamingSystem';
      case FHIRAllTypesBuilderEnum.nutritionOrder:
        return 'NutritionOrder';
      case FHIRAllTypesBuilderEnum.nutritionProduct:
        return 'NutritionProduct';
      case FHIRAllTypesBuilderEnum.observation:
        return 'Observation';
      case FHIRAllTypesBuilderEnum.observationDefinition:
        return 'ObservationDefinition';
      case FHIRAllTypesBuilderEnum.operationDefinition:
        return 'OperationDefinition';
      case FHIRAllTypesBuilderEnum.operationOutcome:
        return 'OperationOutcome';
      case FHIRAllTypesBuilderEnum.organization:
        return 'Organization';
      case FHIRAllTypesBuilderEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case FHIRAllTypesBuilderEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case FHIRAllTypesBuilderEnum.patient:
        return 'Patient';
      case FHIRAllTypesBuilderEnum.paymentNotice:
        return 'PaymentNotice';
      case FHIRAllTypesBuilderEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case FHIRAllTypesBuilderEnum.person:
        return 'Person';
      case FHIRAllTypesBuilderEnum.planDefinition:
        return 'PlanDefinition';
      case FHIRAllTypesBuilderEnum.practitioner:
        return 'Practitioner';
      case FHIRAllTypesBuilderEnum.practitionerRole:
        return 'PractitionerRole';
      case FHIRAllTypesBuilderEnum.procedure:
        return 'Procedure';
      case FHIRAllTypesBuilderEnum.provenance:
        return 'Provenance';
      case FHIRAllTypesBuilderEnum.questionnaire:
        return 'Questionnaire';
      case FHIRAllTypesBuilderEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case FHIRAllTypesBuilderEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case FHIRAllTypesBuilderEnum.relatedPerson:
        return 'RelatedPerson';
      case FHIRAllTypesBuilderEnum.requestGroup:
        return 'RequestGroup';
      case FHIRAllTypesBuilderEnum.researchDefinition:
        return 'ResearchDefinition';
      case FHIRAllTypesBuilderEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case FHIRAllTypesBuilderEnum.researchStudy:
        return 'ResearchStudy';
      case FHIRAllTypesBuilderEnum.researchSubject:
        return 'ResearchSubject';
      case FHIRAllTypesBuilderEnum.riskAssessment:
        return 'RiskAssessment';
      case FHIRAllTypesBuilderEnum.schedule:
        return 'Schedule';
      case FHIRAllTypesBuilderEnum.searchParameter:
        return 'SearchParameter';
      case FHIRAllTypesBuilderEnum.serviceRequest:
        return 'ServiceRequest';
      case FHIRAllTypesBuilderEnum.slot:
        return 'Slot';
      case FHIRAllTypesBuilderEnum.specimen:
        return 'Specimen';
      case FHIRAllTypesBuilderEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case FHIRAllTypesBuilderEnum.structureDefinition:
        return 'StructureDefinition';
      case FHIRAllTypesBuilderEnum.structureMap:
        return 'StructureMap';
      case FHIRAllTypesBuilderEnum.subscription:
        return 'Subscription';
      case FHIRAllTypesBuilderEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case FHIRAllTypesBuilderEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case FHIRAllTypesBuilderEnum.substance:
        return 'Substance';
      case FHIRAllTypesBuilderEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case FHIRAllTypesBuilderEnum.supplyDelivery:
        return 'SupplyDelivery';
      case FHIRAllTypesBuilderEnum.supplyRequest:
        return 'SupplyRequest';
      case FHIRAllTypesBuilderEnum.task:
        return 'Task';
      case FHIRAllTypesBuilderEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case FHIRAllTypesBuilderEnum.testReport:
        return 'TestReport';
      case FHIRAllTypesBuilderEnum.testScript:
        return 'TestScript';
      case FHIRAllTypesBuilderEnum.valueSet:
        return 'ValueSet';
      case FHIRAllTypesBuilderEnum.verificationResult:
        return 'VerificationResult';
      case FHIRAllTypesBuilderEnum.visionPrescription:
        return 'VisionPrescription';
      case FHIRAllTypesBuilderEnum.parameters:
        return 'Parameters';
      case FHIRAllTypesBuilderEnum.type:
        return 'Type';
      case FHIRAllTypesBuilderEnum.any:
        return 'Any';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRAllTypesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRAllTypesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRAllTypesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Address':
        return FHIRAllTypesBuilderEnum.address;
      case 'Age':
        return FHIRAllTypesBuilderEnum.age;
      case 'Annotation':
        return FHIRAllTypesBuilderEnum.annotation;
      case 'Attachment':
        return FHIRAllTypesBuilderEnum.attachment;
      case 'BackboneElement':
        return FHIRAllTypesBuilderEnum.backboneElement;
      case 'CodeableConcept':
        return FHIRAllTypesBuilderEnum.codeableConcept;
      case 'CodeableReference':
        return FHIRAllTypesBuilderEnum.codeableReference;
      case 'Coding':
        return FHIRAllTypesBuilderEnum.coding;
      case 'ContactDetail':
        return FHIRAllTypesBuilderEnum.contactDetail;
      case 'ContactPoint':
        return FHIRAllTypesBuilderEnum.contactPoint;
      case 'Contributor':
        return FHIRAllTypesBuilderEnum.contributor;
      case 'Count':
        return FHIRAllTypesBuilderEnum.count;
      case 'DataRequirement':
        return FHIRAllTypesBuilderEnum.dataRequirement;
      case 'Distance':
        return FHIRAllTypesBuilderEnum.distance;
      case 'Dosage':
        return FHIRAllTypesBuilderEnum.dosage;
      case 'Duration':
        return FHIRAllTypesBuilderEnum.duration;
      case 'Element':
        return FHIRAllTypesBuilderEnum.element_;
      case 'ElementDefinition':
        return FHIRAllTypesBuilderEnum.elementDefinition;
      case 'Expression':
        return FHIRAllTypesBuilderEnum.expression;
      case 'Extension':
        return FHIRAllTypesBuilderEnum.extension;
      case 'HumanName':
        return FHIRAllTypesBuilderEnum.humanName;
      case 'Identifier':
        return FHIRAllTypesBuilderEnum.identifier;
      case 'MarketingStatus':
        return FHIRAllTypesBuilderEnum.marketingStatus;
      case 'Meta':
        return FHIRAllTypesBuilderEnum.meta;
      case 'Money':
        return FHIRAllTypesBuilderEnum.money;
      case 'MoneyQuantity':
        return FHIRAllTypesBuilderEnum.moneyQuantity;
      case 'Narrative':
        return FHIRAllTypesBuilderEnum.narrative;
      case 'ParameterDefinition':
        return FHIRAllTypesBuilderEnum.parameterDefinition;
      case 'Period':
        return FHIRAllTypesBuilderEnum.period;
      case 'Population':
        return FHIRAllTypesBuilderEnum.population;
      case 'ProdCharacteristic':
        return FHIRAllTypesBuilderEnum.prodCharacteristic;
      case 'ProductShelfLife':
        return FHIRAllTypesBuilderEnum.productShelfLife;
      case 'Quantity':
        return FHIRAllTypesBuilderEnum.quantity;
      case 'Range':
        return FHIRAllTypesBuilderEnum.range;
      case 'Ratio':
        return FHIRAllTypesBuilderEnum.ratio;
      case 'RatioRange':
        return FHIRAllTypesBuilderEnum.ratioRange;
      case 'Reference':
        return FHIRAllTypesBuilderEnum.reference;
      case 'RelatedArtifact':
        return FHIRAllTypesBuilderEnum.relatedArtifact;
      case 'SampledData':
        return FHIRAllTypesBuilderEnum.sampledData;
      case 'Signature':
        return FHIRAllTypesBuilderEnum.signature;
      case 'SimpleQuantity':
        return FHIRAllTypesBuilderEnum.simpleQuantity;
      case 'Timing':
        return FHIRAllTypesBuilderEnum.timing;
      case 'TriggerDefinition':
        return FHIRAllTypesBuilderEnum.triggerDefinition;
      case 'UsageContext':
        return FHIRAllTypesBuilderEnum.usageContext;
      case 'base64Binary':
        return FHIRAllTypesBuilderEnum.base64Binary;
      case 'boolean':
        return FHIRAllTypesBuilderEnum.boolean;
      case 'canonical':
        return FHIRAllTypesBuilderEnum.canonical;
      case 'code':
        return FHIRAllTypesBuilderEnum.code;
      case 'date':
        return FHIRAllTypesBuilderEnum.date;
      case 'dateTime':
        return FHIRAllTypesBuilderEnum.dateTime;
      case 'decimal':
        return FHIRAllTypesBuilderEnum.decimal;
      case 'id':
        return FHIRAllTypesBuilderEnum.id_;
      case 'instant':
        return FHIRAllTypesBuilderEnum.instant;
      case 'integer':
        return FHIRAllTypesBuilderEnum.integer;
      case 'markdown':
        return FHIRAllTypesBuilderEnum.markdown;
      case 'oid':
        return FHIRAllTypesBuilderEnum.oid;
      case 'positiveInt':
        return FHIRAllTypesBuilderEnum.positiveInt;
      case 'string':
        return FHIRAllTypesBuilderEnum.string;
      case 'time':
        return FHIRAllTypesBuilderEnum.time;
      case 'unsignedInt':
        return FHIRAllTypesBuilderEnum.unsignedInt;
      case 'uri':
        return FHIRAllTypesBuilderEnum.uri;
      case 'url':
        return FHIRAllTypesBuilderEnum.url;
      case 'uuid':
        return FHIRAllTypesBuilderEnum.uuid;
      case 'xhtml':
        return FHIRAllTypesBuilderEnum.xhtml;
      case 'Resource':
        return FHIRAllTypesBuilderEnum.resource;
      case 'Binary':
        return FHIRAllTypesBuilderEnum.binary;
      case 'Bundle':
        return FHIRAllTypesBuilderEnum.bundle;
      case 'DomainResource':
        return FHIRAllTypesBuilderEnum.domainResource;
      case 'Account':
        return FHIRAllTypesBuilderEnum.account;
      case 'ActivityDefinition':
        return FHIRAllTypesBuilderEnum.activityDefinition;
      case 'AdministrableProductDefinition':
        return FHIRAllTypesBuilderEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return FHIRAllTypesBuilderEnum.adverseEvent;
      case 'AllergyIntolerance':
        return FHIRAllTypesBuilderEnum.allergyIntolerance;
      case 'Appointment':
        return FHIRAllTypesBuilderEnum.appointment;
      case 'AppointmentResponse':
        return FHIRAllTypesBuilderEnum.appointmentResponse;
      case 'AuditEvent':
        return FHIRAllTypesBuilderEnum.auditEvent;
      case 'Basic':
        return FHIRAllTypesBuilderEnum.basic;
      case 'BiologicallyDerivedProduct':
        return FHIRAllTypesBuilderEnum.biologicallyDerivedProduct;
      case 'BodyStructure':
        return FHIRAllTypesBuilderEnum.bodyStructure;
      case 'CapabilityStatement':
        return FHIRAllTypesBuilderEnum.capabilityStatement;
      case 'CarePlan':
        return FHIRAllTypesBuilderEnum.carePlan;
      case 'CareTeam':
        return FHIRAllTypesBuilderEnum.careTeam;
      case 'CatalogEntry':
        return FHIRAllTypesBuilderEnum.catalogEntry;
      case 'ChargeItem':
        return FHIRAllTypesBuilderEnum.chargeItem;
      case 'ChargeItemDefinition':
        return FHIRAllTypesBuilderEnum.chargeItemDefinition;
      case 'Citation':
        return FHIRAllTypesBuilderEnum.citation;
      case 'Claim':
        return FHIRAllTypesBuilderEnum.claim;
      case 'ClaimResponse':
        return FHIRAllTypesBuilderEnum.claimResponse;
      case 'ClinicalImpression':
        return FHIRAllTypesBuilderEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return FHIRAllTypesBuilderEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return FHIRAllTypesBuilderEnum.codeSystem;
      case 'Communication':
        return FHIRAllTypesBuilderEnum.communication;
      case 'CommunicationRequest':
        return FHIRAllTypesBuilderEnum.communicationRequest;
      case 'CompartmentDefinition':
        return FHIRAllTypesBuilderEnum.compartmentDefinition;
      case 'Composition':
        return FHIRAllTypesBuilderEnum.composition;
      case 'ConceptMap':
        return FHIRAllTypesBuilderEnum.conceptMap;
      case 'Condition':
        return FHIRAllTypesBuilderEnum.condition;
      case 'Consent':
        return FHIRAllTypesBuilderEnum.consent;
      case 'Contract':
        return FHIRAllTypesBuilderEnum.contract;
      case 'Coverage':
        return FHIRAllTypesBuilderEnum.coverage;
      case 'CoverageEligibilityRequest':
        return FHIRAllTypesBuilderEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return FHIRAllTypesBuilderEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return FHIRAllTypesBuilderEnum.detectedIssue;
      case 'Device':
        return FHIRAllTypesBuilderEnum.device;
      case 'DeviceDefinition':
        return FHIRAllTypesBuilderEnum.deviceDefinition;
      case 'DeviceMetric':
        return FHIRAllTypesBuilderEnum.deviceMetric;
      case 'DeviceRequest':
        return FHIRAllTypesBuilderEnum.deviceRequest;
      case 'DeviceUseStatement':
        return FHIRAllTypesBuilderEnum.deviceUseStatement;
      case 'DiagnosticReport':
        return FHIRAllTypesBuilderEnum.diagnosticReport;
      case 'DocumentManifest':
        return FHIRAllTypesBuilderEnum.documentManifest;
      case 'DocumentReference':
        return FHIRAllTypesBuilderEnum.documentReference;
      case 'Encounter':
        return FHIRAllTypesBuilderEnum.encounter;
      case 'Endpoint':
        return FHIRAllTypesBuilderEnum.endpoint;
      case 'EnrollmentRequest':
        return FHIRAllTypesBuilderEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return FHIRAllTypesBuilderEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return FHIRAllTypesBuilderEnum.episodeOfCare;
      case 'EventDefinition':
        return FHIRAllTypesBuilderEnum.eventDefinition;
      case 'Evidence':
        return FHIRAllTypesBuilderEnum.evidence;
      case 'EvidenceReport':
        return FHIRAllTypesBuilderEnum.evidenceReport;
      case 'EvidenceVariable':
        return FHIRAllTypesBuilderEnum.evidenceVariable;
      case 'ExampleScenario':
        return FHIRAllTypesBuilderEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return FHIRAllTypesBuilderEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return FHIRAllTypesBuilderEnum.familyMemberHistory;
      case 'Flag':
        return FHIRAllTypesBuilderEnum.flag;
      case 'Goal':
        return FHIRAllTypesBuilderEnum.goal;
      case 'GraphDefinition':
        return FHIRAllTypesBuilderEnum.graphDefinition;
      case 'Group':
        return FHIRAllTypesBuilderEnum.group;
      case 'GuidanceResponse':
        return FHIRAllTypesBuilderEnum.guidanceResponse;
      case 'HealthcareService':
        return FHIRAllTypesBuilderEnum.healthcareService;
      case 'ImagingStudy':
        return FHIRAllTypesBuilderEnum.imagingStudy;
      case 'Immunization':
        return FHIRAllTypesBuilderEnum.immunization;
      case 'ImmunizationEvaluation':
        return FHIRAllTypesBuilderEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return FHIRAllTypesBuilderEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return FHIRAllTypesBuilderEnum.implementationGuide;
      case 'Ingredient':
        return FHIRAllTypesBuilderEnum.ingredient;
      case 'InsurancePlan':
        return FHIRAllTypesBuilderEnum.insurancePlan;
      case 'Invoice':
        return FHIRAllTypesBuilderEnum.invoice;
      case 'Library':
        return FHIRAllTypesBuilderEnum.library;
      case 'Linkage':
        return FHIRAllTypesBuilderEnum.linkage;
      case 'List':
        return FHIRAllTypesBuilderEnum.list_;
      case 'Location':
        return FHIRAllTypesBuilderEnum.location;
      case 'ManufacturedItemDefinition':
        return FHIRAllTypesBuilderEnum.manufacturedItemDefinition;
      case 'Measure':
        return FHIRAllTypesBuilderEnum.measure;
      case 'MeasureReport':
        return FHIRAllTypesBuilderEnum.measureReport;
      case 'Media':
        return FHIRAllTypesBuilderEnum.media;
      case 'Medication':
        return FHIRAllTypesBuilderEnum.medication;
      case 'MedicationAdministration':
        return FHIRAllTypesBuilderEnum.medicationAdministration;
      case 'MedicationDispense':
        return FHIRAllTypesBuilderEnum.medicationDispense;
      case 'MedicationKnowledge':
        return FHIRAllTypesBuilderEnum.medicationKnowledge;
      case 'MedicationRequest':
        return FHIRAllTypesBuilderEnum.medicationRequest;
      case 'MedicationStatement':
        return FHIRAllTypesBuilderEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return FHIRAllTypesBuilderEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return FHIRAllTypesBuilderEnum.messageDefinition;
      case 'MessageHeader':
        return FHIRAllTypesBuilderEnum.messageHeader;
      case 'MolecularSequence':
        return FHIRAllTypesBuilderEnum.molecularSequence;
      case 'NamingSystem':
        return FHIRAllTypesBuilderEnum.namingSystem;
      case 'NutritionOrder':
        return FHIRAllTypesBuilderEnum.nutritionOrder;
      case 'NutritionProduct':
        return FHIRAllTypesBuilderEnum.nutritionProduct;
      case 'Observation':
        return FHIRAllTypesBuilderEnum.observation;
      case 'ObservationDefinition':
        return FHIRAllTypesBuilderEnum.observationDefinition;
      case 'OperationDefinition':
        return FHIRAllTypesBuilderEnum.operationDefinition;
      case 'OperationOutcome':
        return FHIRAllTypesBuilderEnum.operationOutcome;
      case 'Organization':
        return FHIRAllTypesBuilderEnum.organization;
      case 'OrganizationAffiliation':
        return FHIRAllTypesBuilderEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return FHIRAllTypesBuilderEnum.packagedProductDefinition;
      case 'Patient':
        return FHIRAllTypesBuilderEnum.patient;
      case 'PaymentNotice':
        return FHIRAllTypesBuilderEnum.paymentNotice;
      case 'PaymentReconciliation':
        return FHIRAllTypesBuilderEnum.paymentReconciliation;
      case 'Person':
        return FHIRAllTypesBuilderEnum.person;
      case 'PlanDefinition':
        return FHIRAllTypesBuilderEnum.planDefinition;
      case 'Practitioner':
        return FHIRAllTypesBuilderEnum.practitioner;
      case 'PractitionerRole':
        return FHIRAllTypesBuilderEnum.practitionerRole;
      case 'Procedure':
        return FHIRAllTypesBuilderEnum.procedure;
      case 'Provenance':
        return FHIRAllTypesBuilderEnum.provenance;
      case 'Questionnaire':
        return FHIRAllTypesBuilderEnum.questionnaire;
      case 'QuestionnaireResponse':
        return FHIRAllTypesBuilderEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return FHIRAllTypesBuilderEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return FHIRAllTypesBuilderEnum.relatedPerson;
      case 'RequestGroup':
        return FHIRAllTypesBuilderEnum.requestGroup;
      case 'ResearchDefinition':
        return FHIRAllTypesBuilderEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return FHIRAllTypesBuilderEnum.researchElementDefinition;
      case 'ResearchStudy':
        return FHIRAllTypesBuilderEnum.researchStudy;
      case 'ResearchSubject':
        return FHIRAllTypesBuilderEnum.researchSubject;
      case 'RiskAssessment':
        return FHIRAllTypesBuilderEnum.riskAssessment;
      case 'Schedule':
        return FHIRAllTypesBuilderEnum.schedule;
      case 'SearchParameter':
        return FHIRAllTypesBuilderEnum.searchParameter;
      case 'ServiceRequest':
        return FHIRAllTypesBuilderEnum.serviceRequest;
      case 'Slot':
        return FHIRAllTypesBuilderEnum.slot;
      case 'Specimen':
        return FHIRAllTypesBuilderEnum.specimen;
      case 'SpecimenDefinition':
        return FHIRAllTypesBuilderEnum.specimenDefinition;
      case 'StructureDefinition':
        return FHIRAllTypesBuilderEnum.structureDefinition;
      case 'StructureMap':
        return FHIRAllTypesBuilderEnum.structureMap;
      case 'Subscription':
        return FHIRAllTypesBuilderEnum.subscription;
      case 'SubscriptionStatus':
        return FHIRAllTypesBuilderEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return FHIRAllTypesBuilderEnum.subscriptionTopic;
      case 'Substance':
        return FHIRAllTypesBuilderEnum.substance;
      case 'SubstanceDefinition':
        return FHIRAllTypesBuilderEnum.substanceDefinition;
      case 'SupplyDelivery':
        return FHIRAllTypesBuilderEnum.supplyDelivery;
      case 'SupplyRequest':
        return FHIRAllTypesBuilderEnum.supplyRequest;
      case 'Task':
        return FHIRAllTypesBuilderEnum.task;
      case 'TerminologyCapabilities':
        return FHIRAllTypesBuilderEnum.terminologyCapabilities;
      case 'TestReport':
        return FHIRAllTypesBuilderEnum.testReport;
      case 'TestScript':
        return FHIRAllTypesBuilderEnum.testScript;
      case 'ValueSet':
        return FHIRAllTypesBuilderEnum.valueSet;
      case 'VerificationResult':
        return FHIRAllTypesBuilderEnum.verificationResult;
      case 'VisionPrescription':
        return FHIRAllTypesBuilderEnum.visionPrescription;
      case 'Parameters':
        return FHIRAllTypesBuilderEnum.parameters;
      case 'Type':
        return FHIRAllTypesBuilderEnum.type;
      case 'Any':
        return FHIRAllTypesBuilderEnum.any;
    }
    return null;
  }
}

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRAllTypesBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory FHIRAllTypesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = FHIRAllTypesBuilderEnum.fromString(
      valueString,
    );
    return FHIRAllTypesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [FHIRAllTypesBuilder]
  /// with element only
  factory FHIRAllTypesBuilder.empty() =>
      FHIRAllTypesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FHIRAllTypesBuilder] from JSON.
  factory FHIRAllTypesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRAllTypesBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRAllTypesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FHIRAllTypesBuilder
  final FHIRAllTypesBuilderEnum? valueEnum;

  /// Address
  static FHIRAllTypesBuilder address = FHIRAllTypesBuilder._(
    valueString: 'Address',
    valueEnum: FHIRAllTypesBuilderEnum.address,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Address',
    ),
  );

  /// Age
  static FHIRAllTypesBuilder age = FHIRAllTypesBuilder._(
    valueString: 'Age',
    valueEnum: FHIRAllTypesBuilderEnum.age,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Age',
    ),
  );

  /// Annotation
  static FHIRAllTypesBuilder annotation = FHIRAllTypesBuilder._(
    valueString: 'Annotation',
    valueEnum: FHIRAllTypesBuilderEnum.annotation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Annotation',
    ),
  );

  /// Attachment
  static FHIRAllTypesBuilder attachment = FHIRAllTypesBuilder._(
    valueString: 'Attachment',
    valueEnum: FHIRAllTypesBuilderEnum.attachment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Attachment',
    ),
  );

  /// BackboneElement
  static FHIRAllTypesBuilder backboneElement = FHIRAllTypesBuilder._(
    valueString: 'BackboneElement',
    valueEnum: FHIRAllTypesBuilderEnum.backboneElement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'BackboneElement',
    ),
  );

  /// CodeableConcept
  static FHIRAllTypesBuilder codeableConcept = FHIRAllTypesBuilder._(
    valueString: 'CodeableConcept',
    valueEnum: FHIRAllTypesBuilderEnum.codeableConcept,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableConcept',
    ),
  );

  /// CodeableReference
  static FHIRAllTypesBuilder codeableReference = FHIRAllTypesBuilder._(
    valueString: 'CodeableReference',
    valueEnum: FHIRAllTypesBuilderEnum.codeableReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableReference',
    ),
  );

  /// Coding
  static FHIRAllTypesBuilder coding = FHIRAllTypesBuilder._(
    valueString: 'Coding',
    valueEnum: FHIRAllTypesBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coding',
    ),
  );

  /// ContactDetail
  static FHIRAllTypesBuilder contactDetail = FHIRAllTypesBuilder._(
    valueString: 'ContactDetail',
    valueEnum: FHIRAllTypesBuilderEnum.contactDetail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ContactDetail',
    ),
  );

  /// ContactPoint
  static FHIRAllTypesBuilder contactPoint = FHIRAllTypesBuilder._(
    valueString: 'ContactPoint',
    valueEnum: FHIRAllTypesBuilderEnum.contactPoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ContactPoint',
    ),
  );

  /// Contributor
  static FHIRAllTypesBuilder contributor = FHIRAllTypesBuilder._(
    valueString: 'Contributor',
    valueEnum: FHIRAllTypesBuilderEnum.contributor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Contributor',
    ),
  );

  /// Count
  static FHIRAllTypesBuilder count = FHIRAllTypesBuilder._(
    valueString: 'Count',
    valueEnum: FHIRAllTypesBuilderEnum.count,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Count',
    ),
  );

  /// DataRequirement
  static FHIRAllTypesBuilder dataRequirement = FHIRAllTypesBuilder._(
    valueString: 'DataRequirement',
    valueEnum: FHIRAllTypesBuilderEnum.dataRequirement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DataRequirement',
    ),
  );

  /// Distance
  static FHIRAllTypesBuilder distance = FHIRAllTypesBuilder._(
    valueString: 'Distance',
    valueEnum: FHIRAllTypesBuilderEnum.distance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Distance',
    ),
  );

  /// Dosage
  static FHIRAllTypesBuilder dosage = FHIRAllTypesBuilder._(
    valueString: 'Dosage',
    valueEnum: FHIRAllTypesBuilderEnum.dosage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Dosage',
    ),
  );

  /// Duration
  static FHIRAllTypesBuilder duration = FHIRAllTypesBuilder._(
    valueString: 'Duration',
    valueEnum: FHIRAllTypesBuilderEnum.duration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Duration',
    ),
  );

  /// Element_
  static FHIRAllTypesBuilder element_ = FHIRAllTypesBuilder._(
    valueString: 'Element',
    valueEnum: FHIRAllTypesBuilderEnum.element_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Element',
    ),
  );

  /// ElementDefinition
  static FHIRAllTypesBuilder elementDefinition = FHIRAllTypesBuilder._(
    valueString: 'ElementDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.elementDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ElementDefinition',
    ),
  );

  /// Expression
  static FHIRAllTypesBuilder expression = FHIRAllTypesBuilder._(
    valueString: 'Expression',
    valueEnum: FHIRAllTypesBuilderEnum.expression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Expression',
    ),
  );

  /// Extension
  static FHIRAllTypesBuilder extension = FHIRAllTypesBuilder._(
    valueString: 'Extension',
    valueEnum: FHIRAllTypesBuilderEnum.extension,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Extension',
    ),
  );

  /// HumanName
  static FHIRAllTypesBuilder humanName = FHIRAllTypesBuilder._(
    valueString: 'HumanName',
    valueEnum: FHIRAllTypesBuilderEnum.humanName,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HumanName',
    ),
  );

  /// Identifier
  static FHIRAllTypesBuilder identifier = FHIRAllTypesBuilder._(
    valueString: 'Identifier',
    valueEnum: FHIRAllTypesBuilderEnum.identifier,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Identifier',
    ),
  );

  /// MarketingStatus
  static FHIRAllTypesBuilder marketingStatus = FHIRAllTypesBuilder._(
    valueString: 'MarketingStatus',
    valueEnum: FHIRAllTypesBuilderEnum.marketingStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MarketingStatus',
    ),
  );

  /// Meta
  static FHIRAllTypesBuilder meta = FHIRAllTypesBuilder._(
    valueString: 'Meta',
    valueEnum: FHIRAllTypesBuilderEnum.meta,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Meta',
    ),
  );

  /// Money
  static FHIRAllTypesBuilder money = FHIRAllTypesBuilder._(
    valueString: 'Money',
    valueEnum: FHIRAllTypesBuilderEnum.money,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Money',
    ),
  );

  /// MoneyQuantity
  static FHIRAllTypesBuilder moneyQuantity = FHIRAllTypesBuilder._(
    valueString: 'MoneyQuantity',
    valueEnum: FHIRAllTypesBuilderEnum.moneyQuantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MoneyQuantity',
    ),
  );

  /// Narrative
  static FHIRAllTypesBuilder narrative = FHIRAllTypesBuilder._(
    valueString: 'Narrative',
    valueEnum: FHIRAllTypesBuilderEnum.narrative,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Narrative',
    ),
  );

  /// ParameterDefinition
  static FHIRAllTypesBuilder parameterDefinition = FHIRAllTypesBuilder._(
    valueString: 'ParameterDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.parameterDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ParameterDefinition',
    ),
  );

  /// Period
  static FHIRAllTypesBuilder period = FHIRAllTypesBuilder._(
    valueString: 'Period',
    valueEnum: FHIRAllTypesBuilderEnum.period,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Period',
    ),
  );

  /// Population
  static FHIRAllTypesBuilder population = FHIRAllTypesBuilder._(
    valueString: 'Population',
    valueEnum: FHIRAllTypesBuilderEnum.population,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Population',
    ),
  );

  /// ProdCharacteristic
  static FHIRAllTypesBuilder prodCharacteristic = FHIRAllTypesBuilder._(
    valueString: 'ProdCharacteristic',
    valueEnum: FHIRAllTypesBuilderEnum.prodCharacteristic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ProdCharacteristic',
    ),
  );

  /// ProductShelfLife
  static FHIRAllTypesBuilder productShelfLife = FHIRAllTypesBuilder._(
    valueString: 'ProductShelfLife',
    valueEnum: FHIRAllTypesBuilderEnum.productShelfLife,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ProductShelfLife',
    ),
  );

  /// Quantity
  static FHIRAllTypesBuilder quantity = FHIRAllTypesBuilder._(
    valueString: 'Quantity',
    valueEnum: FHIRAllTypesBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// Range
  static FHIRAllTypesBuilder range = FHIRAllTypesBuilder._(
    valueString: 'Range',
    valueEnum: FHIRAllTypesBuilderEnum.range,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static FHIRAllTypesBuilder ratio = FHIRAllTypesBuilder._(
    valueString: 'Ratio',
    valueEnum: FHIRAllTypesBuilderEnum.ratio,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ratio',
    ),
  );

  /// RatioRange
  static FHIRAllTypesBuilder ratioRange = FHIRAllTypesBuilder._(
    valueString: 'RatioRange',
    valueEnum: FHIRAllTypesBuilderEnum.ratioRange,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RatioRange',
    ),
  );

  /// Reference
  static FHIRAllTypesBuilder reference = FHIRAllTypesBuilder._(
    valueString: 'Reference',
    valueEnum: FHIRAllTypesBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reference',
    ),
  );

  /// RelatedArtifact
  static FHIRAllTypesBuilder relatedArtifact = FHIRAllTypesBuilder._(
    valueString: 'RelatedArtifact',
    valueEnum: FHIRAllTypesBuilderEnum.relatedArtifact,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedArtifact',
    ),
  );

  /// SampledData
  static FHIRAllTypesBuilder sampledData = FHIRAllTypesBuilder._(
    valueString: 'SampledData',
    valueEnum: FHIRAllTypesBuilderEnum.sampledData,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SampledData',
    ),
  );

  /// Signature
  static FHIRAllTypesBuilder signature = FHIRAllTypesBuilder._(
    valueString: 'Signature',
    valueEnum: FHIRAllTypesBuilderEnum.signature,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Signature',
    ),
  );

  /// SimpleQuantity
  static FHIRAllTypesBuilder simpleQuantity = FHIRAllTypesBuilder._(
    valueString: 'SimpleQuantity',
    valueEnum: FHIRAllTypesBuilderEnum.simpleQuantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SimpleQuantity',
    ),
  );

  /// Timing
  static FHIRAllTypesBuilder timing = FHIRAllTypesBuilder._(
    valueString: 'Timing',
    valueEnum: FHIRAllTypesBuilderEnum.timing,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Timing',
    ),
  );

  /// TriggerDefinition
  static FHIRAllTypesBuilder triggerDefinition = FHIRAllTypesBuilder._(
    valueString: 'TriggerDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.triggerDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TriggerDefinition',
    ),
  );

  /// UsageContext
  static FHIRAllTypesBuilder usageContext = FHIRAllTypesBuilder._(
    valueString: 'UsageContext',
    valueEnum: FHIRAllTypesBuilderEnum.usageContext,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'UsageContext',
    ),
  );

  /// base64Binary
  static FHIRAllTypesBuilder base64Binary = FHIRAllTypesBuilder._(
    valueString: 'base64Binary',
    valueEnum: FHIRAllTypesBuilderEnum.base64Binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'base64Binary',
    ),
  );

  /// boolean
  static FHIRAllTypesBuilder boolean = FHIRAllTypesBuilder._(
    valueString: 'boolean',
    valueEnum: FHIRAllTypesBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// canonical
  static FHIRAllTypesBuilder canonical = FHIRAllTypesBuilder._(
    valueString: 'canonical',
    valueEnum: FHIRAllTypesBuilderEnum.canonical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'canonical',
    ),
  );

  /// code
  static FHIRAllTypesBuilder code = FHIRAllTypesBuilder._(
    valueString: 'code',
    valueEnum: FHIRAllTypesBuilderEnum.code,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'code',
    ),
  );

  /// date
  static FHIRAllTypesBuilder date = FHIRAllTypesBuilder._(
    valueString: 'date',
    valueEnum: FHIRAllTypesBuilderEnum.date,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'date',
    ),
  );

  /// dateTime
  static FHIRAllTypesBuilder dateTime = FHIRAllTypesBuilder._(
    valueString: 'dateTime',
    valueEnum: FHIRAllTypesBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static FHIRAllTypesBuilder decimal = FHIRAllTypesBuilder._(
    valueString: 'decimal',
    valueEnum: FHIRAllTypesBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'decimal',
    ),
  );

  /// id
  static FHIRAllTypesBuilder id_ = FHIRAllTypesBuilder._(
    valueString: 'id',
    valueEnum: FHIRAllTypesBuilderEnum.id_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'id',
    ),
  );

  /// instant
  static FHIRAllTypesBuilder instant = FHIRAllTypesBuilder._(
    valueString: 'instant',
    valueEnum: FHIRAllTypesBuilderEnum.instant,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'instant',
    ),
  );

  /// integer
  static FHIRAllTypesBuilder integer = FHIRAllTypesBuilder._(
    valueString: 'integer',
    valueEnum: FHIRAllTypesBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'integer',
    ),
  );

  /// markdown
  static FHIRAllTypesBuilder markdown = FHIRAllTypesBuilder._(
    valueString: 'markdown',
    valueEnum: FHIRAllTypesBuilderEnum.markdown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'markdown',
    ),
  );

  /// oid
  static FHIRAllTypesBuilder oid = FHIRAllTypesBuilder._(
    valueString: 'oid',
    valueEnum: FHIRAllTypesBuilderEnum.oid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'oid',
    ),
  );

  /// positiveInt
  static FHIRAllTypesBuilder positiveInt = FHIRAllTypesBuilder._(
    valueString: 'positiveInt',
    valueEnum: FHIRAllTypesBuilderEnum.positiveInt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'positiveInt',
    ),
  );

  /// string
  static FHIRAllTypesBuilder string = FHIRAllTypesBuilder._(
    valueString: 'string',
    valueEnum: FHIRAllTypesBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// time
  static FHIRAllTypesBuilder time = FHIRAllTypesBuilder._(
    valueString: 'time',
    valueEnum: FHIRAllTypesBuilderEnum.time,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'time',
    ),
  );

  /// unsignedInt
  static FHIRAllTypesBuilder unsignedInt = FHIRAllTypesBuilder._(
    valueString: 'unsignedInt',
    valueEnum: FHIRAllTypesBuilderEnum.unsignedInt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'unsignedInt',
    ),
  );

  /// uri
  static FHIRAllTypesBuilder uri = FHIRAllTypesBuilder._(
    valueString: 'uri',
    valueEnum: FHIRAllTypesBuilderEnum.uri,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'uri',
    ),
  );

  /// url
  static FHIRAllTypesBuilder url = FHIRAllTypesBuilder._(
    valueString: 'url',
    valueEnum: FHIRAllTypesBuilderEnum.url,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'url',
    ),
  );

  /// uuid
  static FHIRAllTypesBuilder uuid = FHIRAllTypesBuilder._(
    valueString: 'uuid',
    valueEnum: FHIRAllTypesBuilderEnum.uuid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'uuid',
    ),
  );

  /// xhtml
  static FHIRAllTypesBuilder xhtml = FHIRAllTypesBuilder._(
    valueString: 'xhtml',
    valueEnum: FHIRAllTypesBuilderEnum.xhtml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'XHTML',
    ),
  );

  /// Resource
  static FHIRAllTypesBuilder resource = FHIRAllTypesBuilder._(
    valueString: 'Resource',
    valueEnum: FHIRAllTypesBuilderEnum.resource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static FHIRAllTypesBuilder binary = FHIRAllTypesBuilder._(
    valueString: 'Binary',
    valueEnum: FHIRAllTypesBuilderEnum.binary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static FHIRAllTypesBuilder bundle = FHIRAllTypesBuilder._(
    valueString: 'Bundle',
    valueEnum: FHIRAllTypesBuilderEnum.bundle,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static FHIRAllTypesBuilder domainResource = FHIRAllTypesBuilder._(
    valueString: 'DomainResource',
    valueEnum: FHIRAllTypesBuilderEnum.domainResource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static FHIRAllTypesBuilder account = FHIRAllTypesBuilder._(
    valueString: 'Account',
    valueEnum: FHIRAllTypesBuilderEnum.account,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static FHIRAllTypesBuilder activityDefinition = FHIRAllTypesBuilder._(
    valueString: 'ActivityDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.activityDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static FHIRAllTypesBuilder administrableProductDefinition =
      FHIRAllTypesBuilder._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.administrableProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static FHIRAllTypesBuilder adverseEvent = FHIRAllTypesBuilder._(
    valueString: 'AdverseEvent',
    valueEnum: FHIRAllTypesBuilderEnum.adverseEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static FHIRAllTypesBuilder allergyIntolerance = FHIRAllTypesBuilder._(
    valueString: 'AllergyIntolerance',
    valueEnum: FHIRAllTypesBuilderEnum.allergyIntolerance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static FHIRAllTypesBuilder appointment = FHIRAllTypesBuilder._(
    valueString: 'Appointment',
    valueEnum: FHIRAllTypesBuilderEnum.appointment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static FHIRAllTypesBuilder appointmentResponse = FHIRAllTypesBuilder._(
    valueString: 'AppointmentResponse',
    valueEnum: FHIRAllTypesBuilderEnum.appointmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// AuditEvent
  static FHIRAllTypesBuilder auditEvent = FHIRAllTypesBuilder._(
    valueString: 'AuditEvent',
    valueEnum: FHIRAllTypesBuilderEnum.auditEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static FHIRAllTypesBuilder basic = FHIRAllTypesBuilder._(
    valueString: 'Basic',
    valueEnum: FHIRAllTypesBuilderEnum.basic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static FHIRAllTypesBuilder biologicallyDerivedProduct = FHIRAllTypesBuilder._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: FHIRAllTypesBuilderEnum.biologicallyDerivedProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BodyStructure
  static FHIRAllTypesBuilder bodyStructure = FHIRAllTypesBuilder._(
    valueString: 'BodyStructure',
    valueEnum: FHIRAllTypesBuilderEnum.bodyStructure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'BodyStructure',
    ),
  );

  /// CapabilityStatement
  static FHIRAllTypesBuilder capabilityStatement = FHIRAllTypesBuilder._(
    valueString: 'CapabilityStatement',
    valueEnum: FHIRAllTypesBuilderEnum.capabilityStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static FHIRAllTypesBuilder carePlan = FHIRAllTypesBuilder._(
    valueString: 'CarePlan',
    valueEnum: FHIRAllTypesBuilderEnum.carePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static FHIRAllTypesBuilder careTeam = FHIRAllTypesBuilder._(
    valueString: 'CareTeam',
    valueEnum: FHIRAllTypesBuilderEnum.careTeam,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CareTeam',
    ),
  );

  /// CatalogEntry
  static FHIRAllTypesBuilder catalogEntry = FHIRAllTypesBuilder._(
    valueString: 'CatalogEntry',
    valueEnum: FHIRAllTypesBuilderEnum.catalogEntry,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CatalogEntry',
    ),
  );

  /// ChargeItem
  static FHIRAllTypesBuilder chargeItem = FHIRAllTypesBuilder._(
    valueString: 'ChargeItem',
    valueEnum: FHIRAllTypesBuilderEnum.chargeItem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static FHIRAllTypesBuilder chargeItemDefinition = FHIRAllTypesBuilder._(
    valueString: 'ChargeItemDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.chargeItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static FHIRAllTypesBuilder citation = FHIRAllTypesBuilder._(
    valueString: 'Citation',
    valueEnum: FHIRAllTypesBuilderEnum.citation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static FHIRAllTypesBuilder claim = FHIRAllTypesBuilder._(
    valueString: 'Claim',
    valueEnum: FHIRAllTypesBuilderEnum.claim,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static FHIRAllTypesBuilder claimResponse = FHIRAllTypesBuilder._(
    valueString: 'ClaimResponse',
    valueEnum: FHIRAllTypesBuilderEnum.claimResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static FHIRAllTypesBuilder clinicalImpression = FHIRAllTypesBuilder._(
    valueString: 'ClinicalImpression',
    valueEnum: FHIRAllTypesBuilderEnum.clinicalImpression,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static FHIRAllTypesBuilder clinicalUseDefinition = FHIRAllTypesBuilder._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.clinicalUseDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static FHIRAllTypesBuilder codeSystem = FHIRAllTypesBuilder._(
    valueString: 'CodeSystem',
    valueEnum: FHIRAllTypesBuilderEnum.codeSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static FHIRAllTypesBuilder communication = FHIRAllTypesBuilder._(
    valueString: 'Communication',
    valueEnum: FHIRAllTypesBuilderEnum.communication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static FHIRAllTypesBuilder communicationRequest = FHIRAllTypesBuilder._(
    valueString: 'CommunicationRequest',
    valueEnum: FHIRAllTypesBuilderEnum.communicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static FHIRAllTypesBuilder compartmentDefinition = FHIRAllTypesBuilder._(
    valueString: 'CompartmentDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.compartmentDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static FHIRAllTypesBuilder composition = FHIRAllTypesBuilder._(
    valueString: 'Composition',
    valueEnum: FHIRAllTypesBuilderEnum.composition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static FHIRAllTypesBuilder conceptMap = FHIRAllTypesBuilder._(
    valueString: 'ConceptMap',
    valueEnum: FHIRAllTypesBuilderEnum.conceptMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static FHIRAllTypesBuilder condition = FHIRAllTypesBuilder._(
    valueString: 'Condition',
    valueEnum: FHIRAllTypesBuilderEnum.condition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Condition',
    ),
  );

  /// Consent
  static FHIRAllTypesBuilder consent = FHIRAllTypesBuilder._(
    valueString: 'Consent',
    valueEnum: FHIRAllTypesBuilderEnum.consent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static FHIRAllTypesBuilder contract = FHIRAllTypesBuilder._(
    valueString: 'Contract',
    valueEnum: FHIRAllTypesBuilderEnum.contract,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static FHIRAllTypesBuilder coverage = FHIRAllTypesBuilder._(
    valueString: 'Coverage',
    valueEnum: FHIRAllTypesBuilderEnum.coverage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static FHIRAllTypesBuilder coverageEligibilityRequest = FHIRAllTypesBuilder._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: FHIRAllTypesBuilderEnum.coverageEligibilityRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static FHIRAllTypesBuilder coverageEligibilityResponse =
      FHIRAllTypesBuilder._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: FHIRAllTypesBuilderEnum.coverageEligibilityResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static FHIRAllTypesBuilder detectedIssue = FHIRAllTypesBuilder._(
    valueString: 'DetectedIssue',
    valueEnum: FHIRAllTypesBuilderEnum.detectedIssue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static FHIRAllTypesBuilder device = FHIRAllTypesBuilder._(
    valueString: 'Device',
    valueEnum: FHIRAllTypesBuilderEnum.device,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Device',
    ),
  );

  /// DeviceDefinition
  static FHIRAllTypesBuilder deviceDefinition = FHIRAllTypesBuilder._(
    valueString: 'DeviceDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.deviceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceMetric
  static FHIRAllTypesBuilder deviceMetric = FHIRAllTypesBuilder._(
    valueString: 'DeviceMetric',
    valueEnum: FHIRAllTypesBuilderEnum.deviceMetric,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static FHIRAllTypesBuilder deviceRequest = FHIRAllTypesBuilder._(
    valueString: 'DeviceRequest',
    valueEnum: FHIRAllTypesBuilderEnum.deviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUseStatement
  static FHIRAllTypesBuilder deviceUseStatement = FHIRAllTypesBuilder._(
    valueString: 'DeviceUseStatement',
    valueEnum: FHIRAllTypesBuilderEnum.deviceUseStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticReport
  static FHIRAllTypesBuilder diagnosticReport = FHIRAllTypesBuilder._(
    valueString: 'DiagnosticReport',
    valueEnum: FHIRAllTypesBuilderEnum.diagnosticReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentManifest
  static FHIRAllTypesBuilder documentManifest = FHIRAllTypesBuilder._(
    valueString: 'DocumentManifest',
    valueEnum: FHIRAllTypesBuilderEnum.documentManifest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DocumentManifest',
    ),
  );

  /// DocumentReference
  static FHIRAllTypesBuilder documentReference = FHIRAllTypesBuilder._(
    valueString: 'DocumentReference',
    valueEnum: FHIRAllTypesBuilderEnum.documentReference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static FHIRAllTypesBuilder encounter = FHIRAllTypesBuilder._(
    valueString: 'Encounter',
    valueEnum: FHIRAllTypesBuilderEnum.encounter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Encounter',
    ),
  );

  /// Endpoint
  static FHIRAllTypesBuilder endpoint = FHIRAllTypesBuilder._(
    valueString: 'Endpoint',
    valueEnum: FHIRAllTypesBuilderEnum.endpoint,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static FHIRAllTypesBuilder enrollmentRequest = FHIRAllTypesBuilder._(
    valueString: 'EnrollmentRequest',
    valueEnum: FHIRAllTypesBuilderEnum.enrollmentRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static FHIRAllTypesBuilder enrollmentResponse = FHIRAllTypesBuilder._(
    valueString: 'EnrollmentResponse',
    valueEnum: FHIRAllTypesBuilderEnum.enrollmentResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static FHIRAllTypesBuilder episodeOfCare = FHIRAllTypesBuilder._(
    valueString: 'EpisodeOfCare',
    valueEnum: FHIRAllTypesBuilderEnum.episodeOfCare,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static FHIRAllTypesBuilder eventDefinition = FHIRAllTypesBuilder._(
    valueString: 'EventDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.eventDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static FHIRAllTypesBuilder evidence = FHIRAllTypesBuilder._(
    valueString: 'Evidence',
    valueEnum: FHIRAllTypesBuilderEnum.evidence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static FHIRAllTypesBuilder evidenceReport = FHIRAllTypesBuilder._(
    valueString: 'EvidenceReport',
    valueEnum: FHIRAllTypesBuilderEnum.evidenceReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static FHIRAllTypesBuilder evidenceVariable = FHIRAllTypesBuilder._(
    valueString: 'EvidenceVariable',
    valueEnum: FHIRAllTypesBuilderEnum.evidenceVariable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static FHIRAllTypesBuilder exampleScenario = FHIRAllTypesBuilder._(
    valueString: 'ExampleScenario',
    valueEnum: FHIRAllTypesBuilderEnum.exampleScenario,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static FHIRAllTypesBuilder explanationOfBenefit = FHIRAllTypesBuilder._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: FHIRAllTypesBuilderEnum.explanationOfBenefit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static FHIRAllTypesBuilder familyMemberHistory = FHIRAllTypesBuilder._(
    valueString: 'FamilyMemberHistory',
    valueEnum: FHIRAllTypesBuilderEnum.familyMemberHistory,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static FHIRAllTypesBuilder flag = FHIRAllTypesBuilder._(
    valueString: 'Flag',
    valueEnum: FHIRAllTypesBuilderEnum.flag,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Flag',
    ),
  );

  /// Goal
  static FHIRAllTypesBuilder goal = FHIRAllTypesBuilder._(
    valueString: 'Goal',
    valueEnum: FHIRAllTypesBuilderEnum.goal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static FHIRAllTypesBuilder graphDefinition = FHIRAllTypesBuilder._(
    valueString: 'GraphDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.graphDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static FHIRAllTypesBuilder group = FHIRAllTypesBuilder._(
    valueString: 'Group',
    valueEnum: FHIRAllTypesBuilderEnum.group,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static FHIRAllTypesBuilder guidanceResponse = FHIRAllTypesBuilder._(
    valueString: 'GuidanceResponse',
    valueEnum: FHIRAllTypesBuilderEnum.guidanceResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static FHIRAllTypesBuilder healthcareService = FHIRAllTypesBuilder._(
    valueString: 'HealthcareService',
    valueEnum: FHIRAllTypesBuilderEnum.healthcareService,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingStudy
  static FHIRAllTypesBuilder imagingStudy = FHIRAllTypesBuilder._(
    valueString: 'ImagingStudy',
    valueEnum: FHIRAllTypesBuilderEnum.imagingStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static FHIRAllTypesBuilder immunization = FHIRAllTypesBuilder._(
    valueString: 'Immunization',
    valueEnum: FHIRAllTypesBuilderEnum.immunization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static FHIRAllTypesBuilder immunizationEvaluation = FHIRAllTypesBuilder._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: FHIRAllTypesBuilderEnum.immunizationEvaluation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static FHIRAllTypesBuilder immunizationRecommendation = FHIRAllTypesBuilder._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: FHIRAllTypesBuilderEnum.immunizationRecommendation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static FHIRAllTypesBuilder implementationGuide = FHIRAllTypesBuilder._(
    valueString: 'ImplementationGuide',
    valueEnum: FHIRAllTypesBuilderEnum.implementationGuide,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static FHIRAllTypesBuilder ingredient = FHIRAllTypesBuilder._(
    valueString: 'Ingredient',
    valueEnum: FHIRAllTypesBuilderEnum.ingredient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static FHIRAllTypesBuilder insurancePlan = FHIRAllTypesBuilder._(
    valueString: 'InsurancePlan',
    valueEnum: FHIRAllTypesBuilderEnum.insurancePlan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'InsurancePlan',
    ),
  );

  /// Invoice
  static FHIRAllTypesBuilder invoice = FHIRAllTypesBuilder._(
    valueString: 'Invoice',
    valueEnum: FHIRAllTypesBuilderEnum.invoice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static FHIRAllTypesBuilder library = FHIRAllTypesBuilder._(
    valueString: 'Library',
    valueEnum: FHIRAllTypesBuilderEnum.library,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static FHIRAllTypesBuilder linkage = FHIRAllTypesBuilder._(
    valueString: 'Linkage',
    valueEnum: FHIRAllTypesBuilderEnum.linkage,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static FHIRAllTypesBuilder list_ = FHIRAllTypesBuilder._(
    valueString: 'List',
    valueEnum: FHIRAllTypesBuilderEnum.list_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'List',
    ),
  );

  /// Location
  static FHIRAllTypesBuilder location = FHIRAllTypesBuilder._(
    valueString: 'Location',
    valueEnum: FHIRAllTypesBuilderEnum.location,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static FHIRAllTypesBuilder manufacturedItemDefinition = FHIRAllTypesBuilder._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.manufacturedItemDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static FHIRAllTypesBuilder measure = FHIRAllTypesBuilder._(
    valueString: 'Measure',
    valueEnum: FHIRAllTypesBuilderEnum.measure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static FHIRAllTypesBuilder measureReport = FHIRAllTypesBuilder._(
    valueString: 'MeasureReport',
    valueEnum: FHIRAllTypesBuilderEnum.measureReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MeasureReport',
    ),
  );

  /// Media
  static FHIRAllTypesBuilder media = FHIRAllTypesBuilder._(
    valueString: 'Media',
    valueEnum: FHIRAllTypesBuilderEnum.media,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Media',
    ),
  );

  /// Medication
  static FHIRAllTypesBuilder medication = FHIRAllTypesBuilder._(
    valueString: 'Medication',
    valueEnum: FHIRAllTypesBuilderEnum.medication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static FHIRAllTypesBuilder medicationAdministration = FHIRAllTypesBuilder._(
    valueString: 'MedicationAdministration',
    valueEnum: FHIRAllTypesBuilderEnum.medicationAdministration,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static FHIRAllTypesBuilder medicationDispense = FHIRAllTypesBuilder._(
    valueString: 'MedicationDispense',
    valueEnum: FHIRAllTypesBuilderEnum.medicationDispense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static FHIRAllTypesBuilder medicationKnowledge = FHIRAllTypesBuilder._(
    valueString: 'MedicationKnowledge',
    valueEnum: FHIRAllTypesBuilderEnum.medicationKnowledge,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static FHIRAllTypesBuilder medicationRequest = FHIRAllTypesBuilder._(
    valueString: 'MedicationRequest',
    valueEnum: FHIRAllTypesBuilderEnum.medicationRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static FHIRAllTypesBuilder medicationStatement = FHIRAllTypesBuilder._(
    valueString: 'MedicationStatement',
    valueEnum: FHIRAllTypesBuilderEnum.medicationStatement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static FHIRAllTypesBuilder medicinalProductDefinition = FHIRAllTypesBuilder._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.medicinalProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static FHIRAllTypesBuilder messageDefinition = FHIRAllTypesBuilder._(
    valueString: 'MessageDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.messageDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static FHIRAllTypesBuilder messageHeader = FHIRAllTypesBuilder._(
    valueString: 'MessageHeader',
    valueEnum: FHIRAllTypesBuilderEnum.messageHeader,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MessageHeader',
    ),
  );

  /// MolecularSequence
  static FHIRAllTypesBuilder molecularSequence = FHIRAllTypesBuilder._(
    valueString: 'MolecularSequence',
    valueEnum: FHIRAllTypesBuilderEnum.molecularSequence,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static FHIRAllTypesBuilder namingSystem = FHIRAllTypesBuilder._(
    valueString: 'NamingSystem',
    valueEnum: FHIRAllTypesBuilderEnum.namingSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionOrder
  static FHIRAllTypesBuilder nutritionOrder = FHIRAllTypesBuilder._(
    valueString: 'NutritionOrder',
    valueEnum: FHIRAllTypesBuilderEnum.nutritionOrder,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static FHIRAllTypesBuilder nutritionProduct = FHIRAllTypesBuilder._(
    valueString: 'NutritionProduct',
    valueEnum: FHIRAllTypesBuilderEnum.nutritionProduct,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static FHIRAllTypesBuilder observation = FHIRAllTypesBuilder._(
    valueString: 'Observation',
    valueEnum: FHIRAllTypesBuilderEnum.observation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static FHIRAllTypesBuilder observationDefinition = FHIRAllTypesBuilder._(
    valueString: 'ObservationDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.observationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static FHIRAllTypesBuilder operationDefinition = FHIRAllTypesBuilder._(
    valueString: 'OperationDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.operationDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static FHIRAllTypesBuilder operationOutcome = FHIRAllTypesBuilder._(
    valueString: 'OperationOutcome',
    valueEnum: FHIRAllTypesBuilderEnum.operationOutcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static FHIRAllTypesBuilder organization = FHIRAllTypesBuilder._(
    valueString: 'Organization',
    valueEnum: FHIRAllTypesBuilderEnum.organization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static FHIRAllTypesBuilder organizationAffiliation = FHIRAllTypesBuilder._(
    valueString: 'OrganizationAffiliation',
    valueEnum: FHIRAllTypesBuilderEnum.organizationAffiliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static FHIRAllTypesBuilder packagedProductDefinition = FHIRAllTypesBuilder._(
    valueString: 'PackagedProductDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.packagedProductDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static FHIRAllTypesBuilder patient = FHIRAllTypesBuilder._(
    valueString: 'Patient',
    valueEnum: FHIRAllTypesBuilderEnum.patient,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static FHIRAllTypesBuilder paymentNotice = FHIRAllTypesBuilder._(
    valueString: 'PaymentNotice',
    valueEnum: FHIRAllTypesBuilderEnum.paymentNotice,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static FHIRAllTypesBuilder paymentReconciliation = FHIRAllTypesBuilder._(
    valueString: 'PaymentReconciliation',
    valueEnum: FHIRAllTypesBuilderEnum.paymentReconciliation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Person
  static FHIRAllTypesBuilder person = FHIRAllTypesBuilder._(
    valueString: 'Person',
    valueEnum: FHIRAllTypesBuilderEnum.person,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static FHIRAllTypesBuilder planDefinition = FHIRAllTypesBuilder._(
    valueString: 'PlanDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.planDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static FHIRAllTypesBuilder practitioner = FHIRAllTypesBuilder._(
    valueString: 'Practitioner',
    valueEnum: FHIRAllTypesBuilderEnum.practitioner,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static FHIRAllTypesBuilder practitionerRole = FHIRAllTypesBuilder._(
    valueString: 'PractitionerRole',
    valueEnum: FHIRAllTypesBuilderEnum.practitionerRole,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static FHIRAllTypesBuilder procedure = FHIRAllTypesBuilder._(
    valueString: 'Procedure',
    valueEnum: FHIRAllTypesBuilderEnum.procedure,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static FHIRAllTypesBuilder provenance = FHIRAllTypesBuilder._(
    valueString: 'Provenance',
    valueEnum: FHIRAllTypesBuilderEnum.provenance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static FHIRAllTypesBuilder questionnaire = FHIRAllTypesBuilder._(
    valueString: 'Questionnaire',
    valueEnum: FHIRAllTypesBuilderEnum.questionnaire,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static FHIRAllTypesBuilder questionnaireResponse = FHIRAllTypesBuilder._(
    valueString: 'QuestionnaireResponse',
    valueEnum: FHIRAllTypesBuilderEnum.questionnaireResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static FHIRAllTypesBuilder regulatedAuthorization = FHIRAllTypesBuilder._(
    valueString: 'RegulatedAuthorization',
    valueEnum: FHIRAllTypesBuilderEnum.regulatedAuthorization,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static FHIRAllTypesBuilder relatedPerson = FHIRAllTypesBuilder._(
    valueString: 'RelatedPerson',
    valueEnum: FHIRAllTypesBuilderEnum.relatedPerson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestGroup
  static FHIRAllTypesBuilder requestGroup = FHIRAllTypesBuilder._(
    valueString: 'RequestGroup',
    valueEnum: FHIRAllTypesBuilderEnum.requestGroup,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static FHIRAllTypesBuilder researchDefinition = FHIRAllTypesBuilder._(
    valueString: 'ResearchDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.researchDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static FHIRAllTypesBuilder researchElementDefinition = FHIRAllTypesBuilder._(
    valueString: 'ResearchElementDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.researchElementDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// ResearchStudy
  static FHIRAllTypesBuilder researchStudy = FHIRAllTypesBuilder._(
    valueString: 'ResearchStudy',
    valueEnum: FHIRAllTypesBuilderEnum.researchStudy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static FHIRAllTypesBuilder researchSubject = FHIRAllTypesBuilder._(
    valueString: 'ResearchSubject',
    valueEnum: FHIRAllTypesBuilderEnum.researchSubject,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static FHIRAllTypesBuilder riskAssessment = FHIRAllTypesBuilder._(
    valueString: 'RiskAssessment',
    valueEnum: FHIRAllTypesBuilderEnum.riskAssessment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static FHIRAllTypesBuilder schedule = FHIRAllTypesBuilder._(
    valueString: 'Schedule',
    valueEnum: FHIRAllTypesBuilderEnum.schedule,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static FHIRAllTypesBuilder searchParameter = FHIRAllTypesBuilder._(
    valueString: 'SearchParameter',
    valueEnum: FHIRAllTypesBuilderEnum.searchParameter,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static FHIRAllTypesBuilder serviceRequest = FHIRAllTypesBuilder._(
    valueString: 'ServiceRequest',
    valueEnum: FHIRAllTypesBuilderEnum.serviceRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static FHIRAllTypesBuilder slot = FHIRAllTypesBuilder._(
    valueString: 'Slot',
    valueEnum: FHIRAllTypesBuilderEnum.slot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static FHIRAllTypesBuilder specimen = FHIRAllTypesBuilder._(
    valueString: 'Specimen',
    valueEnum: FHIRAllTypesBuilderEnum.specimen,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static FHIRAllTypesBuilder specimenDefinition = FHIRAllTypesBuilder._(
    valueString: 'SpecimenDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.specimenDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static FHIRAllTypesBuilder structureDefinition = FHIRAllTypesBuilder._(
    valueString: 'StructureDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.structureDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static FHIRAllTypesBuilder structureMap = FHIRAllTypesBuilder._(
    valueString: 'StructureMap',
    valueEnum: FHIRAllTypesBuilderEnum.structureMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static FHIRAllTypesBuilder subscription = FHIRAllTypesBuilder._(
    valueString: 'Subscription',
    valueEnum: FHIRAllTypesBuilderEnum.subscription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static FHIRAllTypesBuilder subscriptionStatus = FHIRAllTypesBuilder._(
    valueString: 'SubscriptionStatus',
    valueEnum: FHIRAllTypesBuilderEnum.subscriptionStatus,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static FHIRAllTypesBuilder subscriptionTopic = FHIRAllTypesBuilder._(
    valueString: 'SubscriptionTopic',
    valueEnum: FHIRAllTypesBuilderEnum.subscriptionTopic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static FHIRAllTypesBuilder substance = FHIRAllTypesBuilder._(
    valueString: 'Substance',
    valueEnum: FHIRAllTypesBuilderEnum.substance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static FHIRAllTypesBuilder substanceDefinition = FHIRAllTypesBuilder._(
    valueString: 'SubstanceDefinition',
    valueEnum: FHIRAllTypesBuilderEnum.substanceDefinition,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SupplyDelivery
  static FHIRAllTypesBuilder supplyDelivery = FHIRAllTypesBuilder._(
    valueString: 'SupplyDelivery',
    valueEnum: FHIRAllTypesBuilderEnum.supplyDelivery,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static FHIRAllTypesBuilder supplyRequest = FHIRAllTypesBuilder._(
    valueString: 'SupplyRequest',
    valueEnum: FHIRAllTypesBuilderEnum.supplyRequest,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static FHIRAllTypesBuilder task = FHIRAllTypesBuilder._(
    valueString: 'Task',
    valueEnum: FHIRAllTypesBuilderEnum.task,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static FHIRAllTypesBuilder terminologyCapabilities = FHIRAllTypesBuilder._(
    valueString: 'TerminologyCapabilities',
    valueEnum: FHIRAllTypesBuilderEnum.terminologyCapabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestReport
  static FHIRAllTypesBuilder testReport = FHIRAllTypesBuilder._(
    valueString: 'TestReport',
    valueEnum: FHIRAllTypesBuilderEnum.testReport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static FHIRAllTypesBuilder testScript = FHIRAllTypesBuilder._(
    valueString: 'TestScript',
    valueEnum: FHIRAllTypesBuilderEnum.testScript,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'TestScript',
    ),
  );

  /// ValueSet
  static FHIRAllTypesBuilder valueSet = FHIRAllTypesBuilder._(
    valueString: 'ValueSet',
    valueEnum: FHIRAllTypesBuilderEnum.valueSet,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static FHIRAllTypesBuilder verificationResult = FHIRAllTypesBuilder._(
    valueString: 'VerificationResult',
    valueEnum: FHIRAllTypesBuilderEnum.verificationResult,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static FHIRAllTypesBuilder visionPrescription = FHIRAllTypesBuilder._(
    valueString: 'VisionPrescription',
    valueEnum: FHIRAllTypesBuilderEnum.visionPrescription,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static FHIRAllTypesBuilder parameters = FHIRAllTypesBuilder._(
    valueString: 'Parameters',
    valueEnum: FHIRAllTypesBuilderEnum.parameters,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Parameters',
    ),
  );

  /// Type
  static FHIRAllTypesBuilder type = FHIRAllTypesBuilder._(
    valueString: 'Type',
    valueEnum: FHIRAllTypesBuilderEnum.type,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Type',
    ),
  );

  /// Any
  static FHIRAllTypesBuilder any = FHIRAllTypesBuilder._(
    valueString: 'Any',
    valueEnum: FHIRAllTypesBuilderEnum.any,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Any',
    ),
  );

  /// For instances where an Element is present but not value
  static FHIRAllTypesBuilder elementOnly = FHIRAllTypesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FHIRAllTypesBuilder> values = [
    address,
    age,
    annotation,
    attachment,
    backboneElement,
    codeableConcept,
    codeableReference,
    coding,
    contactDetail,
    contactPoint,
    contributor,
    count,
    dataRequirement,
    distance,
    dosage,
    duration,
    element_,
    elementDefinition,
    expression,
    extension,
    humanName,
    identifier,
    marketingStatus,
    meta,
    money,
    moneyQuantity,
    narrative,
    parameterDefinition,
    period,
    population,
    prodCharacteristic,
    productShelfLife,
    quantity,
    range,
    ratio,
    ratioRange,
    reference,
    relatedArtifact,
    sampledData,
    signature,
    simpleQuantity,
    timing,
    triggerDefinition,
    usageContext,
    base64Binary,
    boolean,
    canonical,
    code,
    date,
    dateTime,
    decimal,
    id_,
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
    resource,
    binary,
    bundle,
    domainResource,
    account,
    activityDefinition,
    administrableProductDefinition,
    adverseEvent,
    allergyIntolerance,
    appointment,
    appointmentResponse,
    auditEvent,
    basic,
    biologicallyDerivedProduct,
    bodyStructure,
    capabilityStatement,
    carePlan,
    careTeam,
    catalogEntry,
    chargeItem,
    chargeItemDefinition,
    citation,
    claim,
    claimResponse,
    clinicalImpression,
    clinicalUseDefinition,
    codeSystem,
    communication,
    communicationRequest,
    compartmentDefinition,
    composition,
    conceptMap,
    condition,
    consent,
    contract,
    coverage,
    coverageEligibilityRequest,
    coverageEligibilityResponse,
    detectedIssue,
    device,
    deviceDefinition,
    deviceMetric,
    deviceRequest,
    deviceUseStatement,
    diagnosticReport,
    documentManifest,
    documentReference,
    encounter,
    endpoint,
    enrollmentRequest,
    enrollmentResponse,
    episodeOfCare,
    eventDefinition,
    evidence,
    evidenceReport,
    evidenceVariable,
    exampleScenario,
    explanationOfBenefit,
    familyMemberHistory,
    flag,
    goal,
    graphDefinition,
    group,
    guidanceResponse,
    healthcareService,
    imagingStudy,
    immunization,
    immunizationEvaluation,
    immunizationRecommendation,
    implementationGuide,
    ingredient,
    insurancePlan,
    invoice,
    library,
    linkage,
    list_,
    location,
    manufacturedItemDefinition,
    measure,
    measureReport,
    media,
    medication,
    medicationAdministration,
    medicationDispense,
    medicationKnowledge,
    medicationRequest,
    medicationStatement,
    medicinalProductDefinition,
    messageDefinition,
    messageHeader,
    molecularSequence,
    namingSystem,
    nutritionOrder,
    nutritionProduct,
    observation,
    observationDefinition,
    operationDefinition,
    operationOutcome,
    organization,
    organizationAffiliation,
    packagedProductDefinition,
    patient,
    paymentNotice,
    paymentReconciliation,
    person,
    planDefinition,
    practitioner,
    practitionerRole,
    procedure,
    provenance,
    questionnaire,
    questionnaireResponse,
    regulatedAuthorization,
    relatedPerson,
    requestGroup,
    researchDefinition,
    researchElementDefinition,
    researchStudy,
    researchSubject,
    riskAssessment,
    schedule,
    searchParameter,
    serviceRequest,
    slot,
    specimen,
    specimenDefinition,
    structureDefinition,
    structureMap,
    subscription,
    subscriptionStatus,
    subscriptionTopic,
    substance,
    substanceDefinition,
    supplyDelivery,
    supplyRequest,
    task,
    terminologyCapabilities,
    testReport,
    testScript,
    valueSet,
    verificationResult,
    visionPrescription,
    parameters,
    type,
    any,
  ];

  /// Returns the enum value with an element attached
  FHIRAllTypesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FHIRAllTypesBuilder._(
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
}
