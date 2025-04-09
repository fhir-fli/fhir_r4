// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRAllTypes
enum FHIRAllTypesEnum {
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
      case FHIRAllTypesEnum.address:
        return 'Address';
      case FHIRAllTypesEnum.age:
        return 'Age';
      case FHIRAllTypesEnum.annotation:
        return 'Annotation';
      case FHIRAllTypesEnum.attachment:
        return 'Attachment';
      case FHIRAllTypesEnum.backboneElement:
        return 'BackboneElement';
      case FHIRAllTypesEnum.codeableConcept:
        return 'CodeableConcept';
      case FHIRAllTypesEnum.codeableReference:
        return 'CodeableReference';
      case FHIRAllTypesEnum.coding:
        return 'Coding';
      case FHIRAllTypesEnum.contactDetail:
        return 'ContactDetail';
      case FHIRAllTypesEnum.contactPoint:
        return 'ContactPoint';
      case FHIRAllTypesEnum.contributor:
        return 'Contributor';
      case FHIRAllTypesEnum.count:
        return 'Count';
      case FHIRAllTypesEnum.dataRequirement:
        return 'DataRequirement';
      case FHIRAllTypesEnum.distance:
        return 'Distance';
      case FHIRAllTypesEnum.dosage:
        return 'Dosage';
      case FHIRAllTypesEnum.duration:
        return 'Duration';
      case FHIRAllTypesEnum.element_:
        return 'Element';
      case FHIRAllTypesEnum.elementDefinition:
        return 'ElementDefinition';
      case FHIRAllTypesEnum.expression:
        return 'Expression';
      case FHIRAllTypesEnum.extension:
        return 'Extension';
      case FHIRAllTypesEnum.humanName:
        return 'HumanName';
      case FHIRAllTypesEnum.identifier:
        return 'Identifier';
      case FHIRAllTypesEnum.marketingStatus:
        return 'MarketingStatus';
      case FHIRAllTypesEnum.meta:
        return 'Meta';
      case FHIRAllTypesEnum.money:
        return 'Money';
      case FHIRAllTypesEnum.moneyQuantity:
        return 'MoneyQuantity';
      case FHIRAllTypesEnum.narrative:
        return 'Narrative';
      case FHIRAllTypesEnum.parameterDefinition:
        return 'ParameterDefinition';
      case FHIRAllTypesEnum.period:
        return 'Period';
      case FHIRAllTypesEnum.population:
        return 'Population';
      case FHIRAllTypesEnum.prodCharacteristic:
        return 'ProdCharacteristic';
      case FHIRAllTypesEnum.productShelfLife:
        return 'ProductShelfLife';
      case FHIRAllTypesEnum.quantity:
        return 'Quantity';
      case FHIRAllTypesEnum.range:
        return 'Range';
      case FHIRAllTypesEnum.ratio:
        return 'Ratio';
      case FHIRAllTypesEnum.ratioRange:
        return 'RatioRange';
      case FHIRAllTypesEnum.reference:
        return 'Reference';
      case FHIRAllTypesEnum.relatedArtifact:
        return 'RelatedArtifact';
      case FHIRAllTypesEnum.sampledData:
        return 'SampledData';
      case FHIRAllTypesEnum.signature:
        return 'Signature';
      case FHIRAllTypesEnum.simpleQuantity:
        return 'SimpleQuantity';
      case FHIRAllTypesEnum.timing:
        return 'Timing';
      case FHIRAllTypesEnum.triggerDefinition:
        return 'TriggerDefinition';
      case FHIRAllTypesEnum.usageContext:
        return 'UsageContext';
      case FHIRAllTypesEnum.base64Binary:
        return 'base64Binary';
      case FHIRAllTypesEnum.boolean:
        return 'boolean';
      case FHIRAllTypesEnum.canonical:
        return 'canonical';
      case FHIRAllTypesEnum.code:
        return 'code';
      case FHIRAllTypesEnum.date:
        return 'date';
      case FHIRAllTypesEnum.dateTime:
        return 'dateTime';
      case FHIRAllTypesEnum.decimal:
        return 'decimal';
      case FHIRAllTypesEnum.id_:
        return 'id';
      case FHIRAllTypesEnum.instant:
        return 'instant';
      case FHIRAllTypesEnum.integer:
        return 'integer';
      case FHIRAllTypesEnum.markdown:
        return 'markdown';
      case FHIRAllTypesEnum.oid:
        return 'oid';
      case FHIRAllTypesEnum.positiveInt:
        return 'positiveInt';
      case FHIRAllTypesEnum.string:
        return 'string';
      case FHIRAllTypesEnum.time:
        return 'time';
      case FHIRAllTypesEnum.unsignedInt:
        return 'unsignedInt';
      case FHIRAllTypesEnum.uri:
        return 'uri';
      case FHIRAllTypesEnum.url:
        return 'url';
      case FHIRAllTypesEnum.uuid:
        return 'uuid';
      case FHIRAllTypesEnum.xhtml:
        return 'xhtml';
      case FHIRAllTypesEnum.resource:
        return 'Resource';
      case FHIRAllTypesEnum.binary:
        return 'Binary';
      case FHIRAllTypesEnum.bundle:
        return 'Bundle';
      case FHIRAllTypesEnum.domainResource:
        return 'DomainResource';
      case FHIRAllTypesEnum.account:
        return 'Account';
      case FHIRAllTypesEnum.activityDefinition:
        return 'ActivityDefinition';
      case FHIRAllTypesEnum.administrableProductDefinition:
        return 'AdministrableProductDefinition';
      case FHIRAllTypesEnum.adverseEvent:
        return 'AdverseEvent';
      case FHIRAllTypesEnum.allergyIntolerance:
        return 'AllergyIntolerance';
      case FHIRAllTypesEnum.appointment:
        return 'Appointment';
      case FHIRAllTypesEnum.appointmentResponse:
        return 'AppointmentResponse';
      case FHIRAllTypesEnum.auditEvent:
        return 'AuditEvent';
      case FHIRAllTypesEnum.basic:
        return 'Basic';
      case FHIRAllTypesEnum.biologicallyDerivedProduct:
        return 'BiologicallyDerivedProduct';
      case FHIRAllTypesEnum.bodyStructure:
        return 'BodyStructure';
      case FHIRAllTypesEnum.capabilityStatement:
        return 'CapabilityStatement';
      case FHIRAllTypesEnum.carePlan:
        return 'CarePlan';
      case FHIRAllTypesEnum.careTeam:
        return 'CareTeam';
      case FHIRAllTypesEnum.catalogEntry:
        return 'CatalogEntry';
      case FHIRAllTypesEnum.chargeItem:
        return 'ChargeItem';
      case FHIRAllTypesEnum.chargeItemDefinition:
        return 'ChargeItemDefinition';
      case FHIRAllTypesEnum.citation:
        return 'Citation';
      case FHIRAllTypesEnum.claim:
        return 'Claim';
      case FHIRAllTypesEnum.claimResponse:
        return 'ClaimResponse';
      case FHIRAllTypesEnum.clinicalImpression:
        return 'ClinicalImpression';
      case FHIRAllTypesEnum.clinicalUseDefinition:
        return 'ClinicalUseDefinition';
      case FHIRAllTypesEnum.codeSystem:
        return 'CodeSystem';
      case FHIRAllTypesEnum.communication:
        return 'Communication';
      case FHIRAllTypesEnum.communicationRequest:
        return 'CommunicationRequest';
      case FHIRAllTypesEnum.compartmentDefinition:
        return 'CompartmentDefinition';
      case FHIRAllTypesEnum.composition:
        return 'Composition';
      case FHIRAllTypesEnum.conceptMap:
        return 'ConceptMap';
      case FHIRAllTypesEnum.condition:
        return 'Condition';
      case FHIRAllTypesEnum.consent:
        return 'Consent';
      case FHIRAllTypesEnum.contract:
        return 'Contract';
      case FHIRAllTypesEnum.coverage:
        return 'Coverage';
      case FHIRAllTypesEnum.coverageEligibilityRequest:
        return 'CoverageEligibilityRequest';
      case FHIRAllTypesEnum.coverageEligibilityResponse:
        return 'CoverageEligibilityResponse';
      case FHIRAllTypesEnum.detectedIssue:
        return 'DetectedIssue';
      case FHIRAllTypesEnum.device:
        return 'Device';
      case FHIRAllTypesEnum.deviceDefinition:
        return 'DeviceDefinition';
      case FHIRAllTypesEnum.deviceMetric:
        return 'DeviceMetric';
      case FHIRAllTypesEnum.deviceRequest:
        return 'DeviceRequest';
      case FHIRAllTypesEnum.deviceUseStatement:
        return 'DeviceUseStatement';
      case FHIRAllTypesEnum.diagnosticReport:
        return 'DiagnosticReport';
      case FHIRAllTypesEnum.documentManifest:
        return 'DocumentManifest';
      case FHIRAllTypesEnum.documentReference:
        return 'DocumentReference';
      case FHIRAllTypesEnum.encounter:
        return 'Encounter';
      case FHIRAllTypesEnum.endpoint:
        return 'Endpoint';
      case FHIRAllTypesEnum.enrollmentRequest:
        return 'EnrollmentRequest';
      case FHIRAllTypesEnum.enrollmentResponse:
        return 'EnrollmentResponse';
      case FHIRAllTypesEnum.episodeOfCare:
        return 'EpisodeOfCare';
      case FHIRAllTypesEnum.eventDefinition:
        return 'EventDefinition';
      case FHIRAllTypesEnum.evidence:
        return 'Evidence';
      case FHIRAllTypesEnum.evidenceReport:
        return 'EvidenceReport';
      case FHIRAllTypesEnum.evidenceVariable:
        return 'EvidenceVariable';
      case FHIRAllTypesEnum.exampleScenario:
        return 'ExampleScenario';
      case FHIRAllTypesEnum.explanationOfBenefit:
        return 'ExplanationOfBenefit';
      case FHIRAllTypesEnum.familyMemberHistory:
        return 'FamilyMemberHistory';
      case FHIRAllTypesEnum.flag:
        return 'Flag';
      case FHIRAllTypesEnum.goal:
        return 'Goal';
      case FHIRAllTypesEnum.graphDefinition:
        return 'GraphDefinition';
      case FHIRAllTypesEnum.group:
        return 'Group';
      case FHIRAllTypesEnum.guidanceResponse:
        return 'GuidanceResponse';
      case FHIRAllTypesEnum.healthcareService:
        return 'HealthcareService';
      case FHIRAllTypesEnum.imagingStudy:
        return 'ImagingStudy';
      case FHIRAllTypesEnum.immunization:
        return 'Immunization';
      case FHIRAllTypesEnum.immunizationEvaluation:
        return 'ImmunizationEvaluation';
      case FHIRAllTypesEnum.immunizationRecommendation:
        return 'ImmunizationRecommendation';
      case FHIRAllTypesEnum.implementationGuide:
        return 'ImplementationGuide';
      case FHIRAllTypesEnum.ingredient:
        return 'Ingredient';
      case FHIRAllTypesEnum.insurancePlan:
        return 'InsurancePlan';
      case FHIRAllTypesEnum.invoice:
        return 'Invoice';
      case FHIRAllTypesEnum.library:
        return 'Library';
      case FHIRAllTypesEnum.linkage:
        return 'Linkage';
      case FHIRAllTypesEnum.list_:
        return 'List';
      case FHIRAllTypesEnum.location:
        return 'Location';
      case FHIRAllTypesEnum.manufacturedItemDefinition:
        return 'ManufacturedItemDefinition';
      case FHIRAllTypesEnum.measure:
        return 'Measure';
      case FHIRAllTypesEnum.measureReport:
        return 'MeasureReport';
      case FHIRAllTypesEnum.media:
        return 'Media';
      case FHIRAllTypesEnum.medication:
        return 'Medication';
      case FHIRAllTypesEnum.medicationAdministration:
        return 'MedicationAdministration';
      case FHIRAllTypesEnum.medicationDispense:
        return 'MedicationDispense';
      case FHIRAllTypesEnum.medicationKnowledge:
        return 'MedicationKnowledge';
      case FHIRAllTypesEnum.medicationRequest:
        return 'MedicationRequest';
      case FHIRAllTypesEnum.medicationStatement:
        return 'MedicationStatement';
      case FHIRAllTypesEnum.medicinalProductDefinition:
        return 'MedicinalProductDefinition';
      case FHIRAllTypesEnum.messageDefinition:
        return 'MessageDefinition';
      case FHIRAllTypesEnum.messageHeader:
        return 'MessageHeader';
      case FHIRAllTypesEnum.molecularSequence:
        return 'MolecularSequence';
      case FHIRAllTypesEnum.namingSystem:
        return 'NamingSystem';
      case FHIRAllTypesEnum.nutritionOrder:
        return 'NutritionOrder';
      case FHIRAllTypesEnum.nutritionProduct:
        return 'NutritionProduct';
      case FHIRAllTypesEnum.observation:
        return 'Observation';
      case FHIRAllTypesEnum.observationDefinition:
        return 'ObservationDefinition';
      case FHIRAllTypesEnum.operationDefinition:
        return 'OperationDefinition';
      case FHIRAllTypesEnum.operationOutcome:
        return 'OperationOutcome';
      case FHIRAllTypesEnum.organization:
        return 'Organization';
      case FHIRAllTypesEnum.organizationAffiliation:
        return 'OrganizationAffiliation';
      case FHIRAllTypesEnum.packagedProductDefinition:
        return 'PackagedProductDefinition';
      case FHIRAllTypesEnum.patient:
        return 'Patient';
      case FHIRAllTypesEnum.paymentNotice:
        return 'PaymentNotice';
      case FHIRAllTypesEnum.paymentReconciliation:
        return 'PaymentReconciliation';
      case FHIRAllTypesEnum.person:
        return 'Person';
      case FHIRAllTypesEnum.planDefinition:
        return 'PlanDefinition';
      case FHIRAllTypesEnum.practitioner:
        return 'Practitioner';
      case FHIRAllTypesEnum.practitionerRole:
        return 'PractitionerRole';
      case FHIRAllTypesEnum.procedure:
        return 'Procedure';
      case FHIRAllTypesEnum.provenance:
        return 'Provenance';
      case FHIRAllTypesEnum.questionnaire:
        return 'Questionnaire';
      case FHIRAllTypesEnum.questionnaireResponse:
        return 'QuestionnaireResponse';
      case FHIRAllTypesEnum.regulatedAuthorization:
        return 'RegulatedAuthorization';
      case FHIRAllTypesEnum.relatedPerson:
        return 'RelatedPerson';
      case FHIRAllTypesEnum.requestGroup:
        return 'RequestGroup';
      case FHIRAllTypesEnum.researchDefinition:
        return 'ResearchDefinition';
      case FHIRAllTypesEnum.researchElementDefinition:
        return 'ResearchElementDefinition';
      case FHIRAllTypesEnum.researchStudy:
        return 'ResearchStudy';
      case FHIRAllTypesEnum.researchSubject:
        return 'ResearchSubject';
      case FHIRAllTypesEnum.riskAssessment:
        return 'RiskAssessment';
      case FHIRAllTypesEnum.schedule:
        return 'Schedule';
      case FHIRAllTypesEnum.searchParameter:
        return 'SearchParameter';
      case FHIRAllTypesEnum.serviceRequest:
        return 'ServiceRequest';
      case FHIRAllTypesEnum.slot:
        return 'Slot';
      case FHIRAllTypesEnum.specimen:
        return 'Specimen';
      case FHIRAllTypesEnum.specimenDefinition:
        return 'SpecimenDefinition';
      case FHIRAllTypesEnum.structureDefinition:
        return 'StructureDefinition';
      case FHIRAllTypesEnum.structureMap:
        return 'StructureMap';
      case FHIRAllTypesEnum.subscription:
        return 'Subscription';
      case FHIRAllTypesEnum.subscriptionStatus:
        return 'SubscriptionStatus';
      case FHIRAllTypesEnum.subscriptionTopic:
        return 'SubscriptionTopic';
      case FHIRAllTypesEnum.substance:
        return 'Substance';
      case FHIRAllTypesEnum.substanceDefinition:
        return 'SubstanceDefinition';
      case FHIRAllTypesEnum.supplyDelivery:
        return 'SupplyDelivery';
      case FHIRAllTypesEnum.supplyRequest:
        return 'SupplyRequest';
      case FHIRAllTypesEnum.task:
        return 'Task';
      case FHIRAllTypesEnum.terminologyCapabilities:
        return 'TerminologyCapabilities';
      case FHIRAllTypesEnum.testReport:
        return 'TestReport';
      case FHIRAllTypesEnum.testScript:
        return 'TestScript';
      case FHIRAllTypesEnum.valueSet:
        return 'ValueSet';
      case FHIRAllTypesEnum.verificationResult:
        return 'VerificationResult';
      case FHIRAllTypesEnum.visionPrescription:
        return 'VisionPrescription';
      case FHIRAllTypesEnum.parameters:
        return 'Parameters';
      case FHIRAllTypesEnum.type:
        return 'Type';
      case FHIRAllTypesEnum.any:
        return 'Any';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRAllTypesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRAllTypesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRAllTypesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Address':
        return FHIRAllTypesEnum.address;
      case 'Age':
        return FHIRAllTypesEnum.age;
      case 'Annotation':
        return FHIRAllTypesEnum.annotation;
      case 'Attachment':
        return FHIRAllTypesEnum.attachment;
      case 'BackboneElement':
        return FHIRAllTypesEnum.backboneElement;
      case 'CodeableConcept':
        return FHIRAllTypesEnum.codeableConcept;
      case 'CodeableReference':
        return FHIRAllTypesEnum.codeableReference;
      case 'Coding':
        return FHIRAllTypesEnum.coding;
      case 'ContactDetail':
        return FHIRAllTypesEnum.contactDetail;
      case 'ContactPoint':
        return FHIRAllTypesEnum.contactPoint;
      case 'Contributor':
        return FHIRAllTypesEnum.contributor;
      case 'Count':
        return FHIRAllTypesEnum.count;
      case 'DataRequirement':
        return FHIRAllTypesEnum.dataRequirement;
      case 'Distance':
        return FHIRAllTypesEnum.distance;
      case 'Dosage':
        return FHIRAllTypesEnum.dosage;
      case 'Duration':
        return FHIRAllTypesEnum.duration;
      case 'Element':
        return FHIRAllTypesEnum.element_;
      case 'ElementDefinition':
        return FHIRAllTypesEnum.elementDefinition;
      case 'Expression':
        return FHIRAllTypesEnum.expression;
      case 'Extension':
        return FHIRAllTypesEnum.extension;
      case 'HumanName':
        return FHIRAllTypesEnum.humanName;
      case 'Identifier':
        return FHIRAllTypesEnum.identifier;
      case 'MarketingStatus':
        return FHIRAllTypesEnum.marketingStatus;
      case 'Meta':
        return FHIRAllTypesEnum.meta;
      case 'Money':
        return FHIRAllTypesEnum.money;
      case 'MoneyQuantity':
        return FHIRAllTypesEnum.moneyQuantity;
      case 'Narrative':
        return FHIRAllTypesEnum.narrative;
      case 'ParameterDefinition':
        return FHIRAllTypesEnum.parameterDefinition;
      case 'Period':
        return FHIRAllTypesEnum.period;
      case 'Population':
        return FHIRAllTypesEnum.population;
      case 'ProdCharacteristic':
        return FHIRAllTypesEnum.prodCharacteristic;
      case 'ProductShelfLife':
        return FHIRAllTypesEnum.productShelfLife;
      case 'Quantity':
        return FHIRAllTypesEnum.quantity;
      case 'Range':
        return FHIRAllTypesEnum.range;
      case 'Ratio':
        return FHIRAllTypesEnum.ratio;
      case 'RatioRange':
        return FHIRAllTypesEnum.ratioRange;
      case 'Reference':
        return FHIRAllTypesEnum.reference;
      case 'RelatedArtifact':
        return FHIRAllTypesEnum.relatedArtifact;
      case 'SampledData':
        return FHIRAllTypesEnum.sampledData;
      case 'Signature':
        return FHIRAllTypesEnum.signature;
      case 'SimpleQuantity':
        return FHIRAllTypesEnum.simpleQuantity;
      case 'Timing':
        return FHIRAllTypesEnum.timing;
      case 'TriggerDefinition':
        return FHIRAllTypesEnum.triggerDefinition;
      case 'UsageContext':
        return FHIRAllTypesEnum.usageContext;
      case 'base64Binary':
        return FHIRAllTypesEnum.base64Binary;
      case 'boolean':
        return FHIRAllTypesEnum.boolean;
      case 'canonical':
        return FHIRAllTypesEnum.canonical;
      case 'code':
        return FHIRAllTypesEnum.code;
      case 'date':
        return FHIRAllTypesEnum.date;
      case 'dateTime':
        return FHIRAllTypesEnum.dateTime;
      case 'decimal':
        return FHIRAllTypesEnum.decimal;
      case 'id':
        return FHIRAllTypesEnum.id_;
      case 'instant':
        return FHIRAllTypesEnum.instant;
      case 'integer':
        return FHIRAllTypesEnum.integer;
      case 'markdown':
        return FHIRAllTypesEnum.markdown;
      case 'oid':
        return FHIRAllTypesEnum.oid;
      case 'positiveInt':
        return FHIRAllTypesEnum.positiveInt;
      case 'string':
        return FHIRAllTypesEnum.string;
      case 'time':
        return FHIRAllTypesEnum.time;
      case 'unsignedInt':
        return FHIRAllTypesEnum.unsignedInt;
      case 'uri':
        return FHIRAllTypesEnum.uri;
      case 'url':
        return FHIRAllTypesEnum.url;
      case 'uuid':
        return FHIRAllTypesEnum.uuid;
      case 'xhtml':
        return FHIRAllTypesEnum.xhtml;
      case 'Resource':
        return FHIRAllTypesEnum.resource;
      case 'Binary':
        return FHIRAllTypesEnum.binary;
      case 'Bundle':
        return FHIRAllTypesEnum.bundle;
      case 'DomainResource':
        return FHIRAllTypesEnum.domainResource;
      case 'Account':
        return FHIRAllTypesEnum.account;
      case 'ActivityDefinition':
        return FHIRAllTypesEnum.activityDefinition;
      case 'AdministrableProductDefinition':
        return FHIRAllTypesEnum.administrableProductDefinition;
      case 'AdverseEvent':
        return FHIRAllTypesEnum.adverseEvent;
      case 'AllergyIntolerance':
        return FHIRAllTypesEnum.allergyIntolerance;
      case 'Appointment':
        return FHIRAllTypesEnum.appointment;
      case 'AppointmentResponse':
        return FHIRAllTypesEnum.appointmentResponse;
      case 'AuditEvent':
        return FHIRAllTypesEnum.auditEvent;
      case 'Basic':
        return FHIRAllTypesEnum.basic;
      case 'BiologicallyDerivedProduct':
        return FHIRAllTypesEnum.biologicallyDerivedProduct;
      case 'BodyStructure':
        return FHIRAllTypesEnum.bodyStructure;
      case 'CapabilityStatement':
        return FHIRAllTypesEnum.capabilityStatement;
      case 'CarePlan':
        return FHIRAllTypesEnum.carePlan;
      case 'CareTeam':
        return FHIRAllTypesEnum.careTeam;
      case 'CatalogEntry':
        return FHIRAllTypesEnum.catalogEntry;
      case 'ChargeItem':
        return FHIRAllTypesEnum.chargeItem;
      case 'ChargeItemDefinition':
        return FHIRAllTypesEnum.chargeItemDefinition;
      case 'Citation':
        return FHIRAllTypesEnum.citation;
      case 'Claim':
        return FHIRAllTypesEnum.claim;
      case 'ClaimResponse':
        return FHIRAllTypesEnum.claimResponse;
      case 'ClinicalImpression':
        return FHIRAllTypesEnum.clinicalImpression;
      case 'ClinicalUseDefinition':
        return FHIRAllTypesEnum.clinicalUseDefinition;
      case 'CodeSystem':
        return FHIRAllTypesEnum.codeSystem;
      case 'Communication':
        return FHIRAllTypesEnum.communication;
      case 'CommunicationRequest':
        return FHIRAllTypesEnum.communicationRequest;
      case 'CompartmentDefinition':
        return FHIRAllTypesEnum.compartmentDefinition;
      case 'Composition':
        return FHIRAllTypesEnum.composition;
      case 'ConceptMap':
        return FHIRAllTypesEnum.conceptMap;
      case 'Condition':
        return FHIRAllTypesEnum.condition;
      case 'Consent':
        return FHIRAllTypesEnum.consent;
      case 'Contract':
        return FHIRAllTypesEnum.contract;
      case 'Coverage':
        return FHIRAllTypesEnum.coverage;
      case 'CoverageEligibilityRequest':
        return FHIRAllTypesEnum.coverageEligibilityRequest;
      case 'CoverageEligibilityResponse':
        return FHIRAllTypesEnum.coverageEligibilityResponse;
      case 'DetectedIssue':
        return FHIRAllTypesEnum.detectedIssue;
      case 'Device':
        return FHIRAllTypesEnum.device;
      case 'DeviceDefinition':
        return FHIRAllTypesEnum.deviceDefinition;
      case 'DeviceMetric':
        return FHIRAllTypesEnum.deviceMetric;
      case 'DeviceRequest':
        return FHIRAllTypesEnum.deviceRequest;
      case 'DeviceUseStatement':
        return FHIRAllTypesEnum.deviceUseStatement;
      case 'DiagnosticReport':
        return FHIRAllTypesEnum.diagnosticReport;
      case 'DocumentManifest':
        return FHIRAllTypesEnum.documentManifest;
      case 'DocumentReference':
        return FHIRAllTypesEnum.documentReference;
      case 'Encounter':
        return FHIRAllTypesEnum.encounter;
      case 'Endpoint':
        return FHIRAllTypesEnum.endpoint;
      case 'EnrollmentRequest':
        return FHIRAllTypesEnum.enrollmentRequest;
      case 'EnrollmentResponse':
        return FHIRAllTypesEnum.enrollmentResponse;
      case 'EpisodeOfCare':
        return FHIRAllTypesEnum.episodeOfCare;
      case 'EventDefinition':
        return FHIRAllTypesEnum.eventDefinition;
      case 'Evidence':
        return FHIRAllTypesEnum.evidence;
      case 'EvidenceReport':
        return FHIRAllTypesEnum.evidenceReport;
      case 'EvidenceVariable':
        return FHIRAllTypesEnum.evidenceVariable;
      case 'ExampleScenario':
        return FHIRAllTypesEnum.exampleScenario;
      case 'ExplanationOfBenefit':
        return FHIRAllTypesEnum.explanationOfBenefit;
      case 'FamilyMemberHistory':
        return FHIRAllTypesEnum.familyMemberHistory;
      case 'Flag':
        return FHIRAllTypesEnum.flag;
      case 'Goal':
        return FHIRAllTypesEnum.goal;
      case 'GraphDefinition':
        return FHIRAllTypesEnum.graphDefinition;
      case 'Group':
        return FHIRAllTypesEnum.group;
      case 'GuidanceResponse':
        return FHIRAllTypesEnum.guidanceResponse;
      case 'HealthcareService':
        return FHIRAllTypesEnum.healthcareService;
      case 'ImagingStudy':
        return FHIRAllTypesEnum.imagingStudy;
      case 'Immunization':
        return FHIRAllTypesEnum.immunization;
      case 'ImmunizationEvaluation':
        return FHIRAllTypesEnum.immunizationEvaluation;
      case 'ImmunizationRecommendation':
        return FHIRAllTypesEnum.immunizationRecommendation;
      case 'ImplementationGuide':
        return FHIRAllTypesEnum.implementationGuide;
      case 'Ingredient':
        return FHIRAllTypesEnum.ingredient;
      case 'InsurancePlan':
        return FHIRAllTypesEnum.insurancePlan;
      case 'Invoice':
        return FHIRAllTypesEnum.invoice;
      case 'Library':
        return FHIRAllTypesEnum.library;
      case 'Linkage':
        return FHIRAllTypesEnum.linkage;
      case 'List':
        return FHIRAllTypesEnum.list_;
      case 'Location':
        return FHIRAllTypesEnum.location;
      case 'ManufacturedItemDefinition':
        return FHIRAllTypesEnum.manufacturedItemDefinition;
      case 'Measure':
        return FHIRAllTypesEnum.measure;
      case 'MeasureReport':
        return FHIRAllTypesEnum.measureReport;
      case 'Media':
        return FHIRAllTypesEnum.media;
      case 'Medication':
        return FHIRAllTypesEnum.medication;
      case 'MedicationAdministration':
        return FHIRAllTypesEnum.medicationAdministration;
      case 'MedicationDispense':
        return FHIRAllTypesEnum.medicationDispense;
      case 'MedicationKnowledge':
        return FHIRAllTypesEnum.medicationKnowledge;
      case 'MedicationRequest':
        return FHIRAllTypesEnum.medicationRequest;
      case 'MedicationStatement':
        return FHIRAllTypesEnum.medicationStatement;
      case 'MedicinalProductDefinition':
        return FHIRAllTypesEnum.medicinalProductDefinition;
      case 'MessageDefinition':
        return FHIRAllTypesEnum.messageDefinition;
      case 'MessageHeader':
        return FHIRAllTypesEnum.messageHeader;
      case 'MolecularSequence':
        return FHIRAllTypesEnum.molecularSequence;
      case 'NamingSystem':
        return FHIRAllTypesEnum.namingSystem;
      case 'NutritionOrder':
        return FHIRAllTypesEnum.nutritionOrder;
      case 'NutritionProduct':
        return FHIRAllTypesEnum.nutritionProduct;
      case 'Observation':
        return FHIRAllTypesEnum.observation;
      case 'ObservationDefinition':
        return FHIRAllTypesEnum.observationDefinition;
      case 'OperationDefinition':
        return FHIRAllTypesEnum.operationDefinition;
      case 'OperationOutcome':
        return FHIRAllTypesEnum.operationOutcome;
      case 'Organization':
        return FHIRAllTypesEnum.organization;
      case 'OrganizationAffiliation':
        return FHIRAllTypesEnum.organizationAffiliation;
      case 'PackagedProductDefinition':
        return FHIRAllTypesEnum.packagedProductDefinition;
      case 'Patient':
        return FHIRAllTypesEnum.patient;
      case 'PaymentNotice':
        return FHIRAllTypesEnum.paymentNotice;
      case 'PaymentReconciliation':
        return FHIRAllTypesEnum.paymentReconciliation;
      case 'Person':
        return FHIRAllTypesEnum.person;
      case 'PlanDefinition':
        return FHIRAllTypesEnum.planDefinition;
      case 'Practitioner':
        return FHIRAllTypesEnum.practitioner;
      case 'PractitionerRole':
        return FHIRAllTypesEnum.practitionerRole;
      case 'Procedure':
        return FHIRAllTypesEnum.procedure;
      case 'Provenance':
        return FHIRAllTypesEnum.provenance;
      case 'Questionnaire':
        return FHIRAllTypesEnum.questionnaire;
      case 'QuestionnaireResponse':
        return FHIRAllTypesEnum.questionnaireResponse;
      case 'RegulatedAuthorization':
        return FHIRAllTypesEnum.regulatedAuthorization;
      case 'RelatedPerson':
        return FHIRAllTypesEnum.relatedPerson;
      case 'RequestGroup':
        return FHIRAllTypesEnum.requestGroup;
      case 'ResearchDefinition':
        return FHIRAllTypesEnum.researchDefinition;
      case 'ResearchElementDefinition':
        return FHIRAllTypesEnum.researchElementDefinition;
      case 'ResearchStudy':
        return FHIRAllTypesEnum.researchStudy;
      case 'ResearchSubject':
        return FHIRAllTypesEnum.researchSubject;
      case 'RiskAssessment':
        return FHIRAllTypesEnum.riskAssessment;
      case 'Schedule':
        return FHIRAllTypesEnum.schedule;
      case 'SearchParameter':
        return FHIRAllTypesEnum.searchParameter;
      case 'ServiceRequest':
        return FHIRAllTypesEnum.serviceRequest;
      case 'Slot':
        return FHIRAllTypesEnum.slot;
      case 'Specimen':
        return FHIRAllTypesEnum.specimen;
      case 'SpecimenDefinition':
        return FHIRAllTypesEnum.specimenDefinition;
      case 'StructureDefinition':
        return FHIRAllTypesEnum.structureDefinition;
      case 'StructureMap':
        return FHIRAllTypesEnum.structureMap;
      case 'Subscription':
        return FHIRAllTypesEnum.subscription;
      case 'SubscriptionStatus':
        return FHIRAllTypesEnum.subscriptionStatus;
      case 'SubscriptionTopic':
        return FHIRAllTypesEnum.subscriptionTopic;
      case 'Substance':
        return FHIRAllTypesEnum.substance;
      case 'SubstanceDefinition':
        return FHIRAllTypesEnum.substanceDefinition;
      case 'SupplyDelivery':
        return FHIRAllTypesEnum.supplyDelivery;
      case 'SupplyRequest':
        return FHIRAllTypesEnum.supplyRequest;
      case 'Task':
        return FHIRAllTypesEnum.task;
      case 'TerminologyCapabilities':
        return FHIRAllTypesEnum.terminologyCapabilities;
      case 'TestReport':
        return FHIRAllTypesEnum.testReport;
      case 'TestScript':
        return FHIRAllTypesEnum.testScript;
      case 'ValueSet':
        return FHIRAllTypesEnum.valueSet;
      case 'VerificationResult':
        return FHIRAllTypesEnum.verificationResult;
      case 'VisionPrescription':
        return FHIRAllTypesEnum.visionPrescription;
      case 'Parameters':
        return FHIRAllTypesEnum.parameters;
      case 'Type':
        return FHIRAllTypesEnum.type;
      case 'Any':
        return FHIRAllTypesEnum.any;
    }
    return null;
  }
}

/// A list of all the concrete types defined in this version of the FHIR
/// specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FHIRAllTypes._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory FHIRAllTypes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = FHIRAllTypesEnum.fromString(valueString);
    return FHIRAllTypes._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [FHIRAllTypes]
  /// from JSON.
  factory FHIRAllTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FHIRAllTypesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRAllTypes cannot be constructed from JSON.',
      );
    }
    return FHIRAllTypes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FHIRAllTypes
  final FHIRAllTypesEnum? valueEnum;

  /// Address
  static const FHIRAllTypes address = FHIRAllTypes._(
    valueString: 'Address',
    valueEnum: FHIRAllTypesEnum.address,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Address',
    ),
  );

  /// Age
  static const FHIRAllTypes age = FHIRAllTypes._(
    valueString: 'Age',
    valueEnum: FHIRAllTypesEnum.age,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Age',
    ),
  );

  /// Annotation
  static const FHIRAllTypes annotation = FHIRAllTypes._(
    valueString: 'Annotation',
    valueEnum: FHIRAllTypesEnum.annotation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Annotation',
    ),
  );

  /// Attachment
  static const FHIRAllTypes attachment = FHIRAllTypes._(
    valueString: 'Attachment',
    valueEnum: FHIRAllTypesEnum.attachment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Attachment',
    ),
  );

  /// BackboneElement
  static const FHIRAllTypes backboneElement = FHIRAllTypes._(
    valueString: 'BackboneElement',
    valueEnum: FHIRAllTypesEnum.backboneElement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'BackboneElement',
    ),
  );

  /// CodeableConcept
  static const FHIRAllTypes codeableConcept = FHIRAllTypes._(
    valueString: 'CodeableConcept',
    valueEnum: FHIRAllTypesEnum.codeableConcept,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CodeableConcept',
    ),
  );

  /// CodeableReference
  static const FHIRAllTypes codeableReference = FHIRAllTypes._(
    valueString: 'CodeableReference',
    valueEnum: FHIRAllTypesEnum.codeableReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CodeableReference',
    ),
  );

  /// Coding
  static const FHIRAllTypes coding = FHIRAllTypes._(
    valueString: 'Coding',
    valueEnum: FHIRAllTypesEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coding',
    ),
  );

  /// ContactDetail
  static const FHIRAllTypes contactDetail = FHIRAllTypes._(
    valueString: 'ContactDetail',
    valueEnum: FHIRAllTypesEnum.contactDetail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ContactDetail',
    ),
  );

  /// ContactPoint
  static const FHIRAllTypes contactPoint = FHIRAllTypes._(
    valueString: 'ContactPoint',
    valueEnum: FHIRAllTypesEnum.contactPoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ContactPoint',
    ),
  );

  /// Contributor
  static const FHIRAllTypes contributor = FHIRAllTypes._(
    valueString: 'Contributor',
    valueEnum: FHIRAllTypesEnum.contributor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contributor',
    ),
  );

  /// Count
  static const FHIRAllTypes count = FHIRAllTypes._(
    valueString: 'Count',
    valueEnum: FHIRAllTypesEnum.count,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Count',
    ),
  );

  /// DataRequirement
  static const FHIRAllTypes dataRequirement = FHIRAllTypes._(
    valueString: 'DataRequirement',
    valueEnum: FHIRAllTypesEnum.dataRequirement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DataRequirement',
    ),
  );

  /// Distance
  static const FHIRAllTypes distance = FHIRAllTypes._(
    valueString: 'Distance',
    valueEnum: FHIRAllTypesEnum.distance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Distance',
    ),
  );

  /// Dosage
  static const FHIRAllTypes dosage = FHIRAllTypes._(
    valueString: 'Dosage',
    valueEnum: FHIRAllTypesEnum.dosage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Dosage',
    ),
  );

  /// Duration
  static const FHIRAllTypes duration = FHIRAllTypes._(
    valueString: 'Duration',
    valueEnum: FHIRAllTypesEnum.duration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Duration',
    ),
  );

  /// Element_
  static const FHIRAllTypes element_ = FHIRAllTypes._(
    valueString: 'Element',
    valueEnum: FHIRAllTypesEnum.element_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Element',
    ),
  );

  /// ElementDefinition
  static const FHIRAllTypes elementDefinition = FHIRAllTypes._(
    valueString: 'ElementDefinition',
    valueEnum: FHIRAllTypesEnum.elementDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ElementDefinition',
    ),
  );

  /// Expression
  static const FHIRAllTypes expression = FHIRAllTypes._(
    valueString: 'Expression',
    valueEnum: FHIRAllTypesEnum.expression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Expression',
    ),
  );

  /// Extension
  static const FHIRAllTypes extension = FHIRAllTypes._(
    valueString: 'Extension',
    valueEnum: FHIRAllTypesEnum.extension,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Extension',
    ),
  );

  /// HumanName
  static const FHIRAllTypes humanName = FHIRAllTypes._(
    valueString: 'HumanName',
    valueEnum: FHIRAllTypesEnum.humanName,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HumanName',
    ),
  );

  /// Identifier
  static const FHIRAllTypes identifier = FHIRAllTypes._(
    valueString: 'Identifier',
    valueEnum: FHIRAllTypesEnum.identifier,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Identifier',
    ),
  );

  /// MarketingStatus
  static const FHIRAllTypes marketingStatus = FHIRAllTypes._(
    valueString: 'MarketingStatus',
    valueEnum: FHIRAllTypesEnum.marketingStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MarketingStatus',
    ),
  );

  /// Meta
  static const FHIRAllTypes meta = FHIRAllTypes._(
    valueString: 'Meta',
    valueEnum: FHIRAllTypesEnum.meta,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Meta',
    ),
  );

  /// Money
  static const FHIRAllTypes money = FHIRAllTypes._(
    valueString: 'Money',
    valueEnum: FHIRAllTypesEnum.money,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Money',
    ),
  );

  /// MoneyQuantity
  static const FHIRAllTypes moneyQuantity = FHIRAllTypes._(
    valueString: 'MoneyQuantity',
    valueEnum: FHIRAllTypesEnum.moneyQuantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MoneyQuantity',
    ),
  );

  /// Narrative
  static const FHIRAllTypes narrative = FHIRAllTypes._(
    valueString: 'Narrative',
    valueEnum: FHIRAllTypesEnum.narrative,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Narrative',
    ),
  );

  /// ParameterDefinition
  static const FHIRAllTypes parameterDefinition = FHIRAllTypes._(
    valueString: 'ParameterDefinition',
    valueEnum: FHIRAllTypesEnum.parameterDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ParameterDefinition',
    ),
  );

  /// Period
  static const FHIRAllTypes period = FHIRAllTypes._(
    valueString: 'Period',
    valueEnum: FHIRAllTypesEnum.period,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Period',
    ),
  );

  /// Population
  static const FHIRAllTypes population = FHIRAllTypes._(
    valueString: 'Population',
    valueEnum: FHIRAllTypesEnum.population,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Population',
    ),
  );

  /// ProdCharacteristic
  static const FHIRAllTypes prodCharacteristic = FHIRAllTypes._(
    valueString: 'ProdCharacteristic',
    valueEnum: FHIRAllTypesEnum.prodCharacteristic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ProdCharacteristic',
    ),
  );

  /// ProductShelfLife
  static const FHIRAllTypes productShelfLife = FHIRAllTypes._(
    valueString: 'ProductShelfLife',
    valueEnum: FHIRAllTypesEnum.productShelfLife,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ProductShelfLife',
    ),
  );

  /// Quantity
  static const FHIRAllTypes quantity = FHIRAllTypes._(
    valueString: 'Quantity',
    valueEnum: FHIRAllTypesEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// Range
  static const FHIRAllTypes range = FHIRAllTypes._(
    valueString: 'Range',
    valueEnum: FHIRAllTypesEnum.range,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static const FHIRAllTypes ratio = FHIRAllTypes._(
    valueString: 'Ratio',
    valueEnum: FHIRAllTypesEnum.ratio,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ratio',
    ),
  );

  /// RatioRange
  static const FHIRAllTypes ratioRange = FHIRAllTypes._(
    valueString: 'RatioRange',
    valueEnum: FHIRAllTypesEnum.ratioRange,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RatioRange',
    ),
  );

  /// Reference
  static const FHIRAllTypes reference = FHIRAllTypes._(
    valueString: 'Reference',
    valueEnum: FHIRAllTypesEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reference',
    ),
  );

  /// RelatedArtifact
  static const FHIRAllTypes relatedArtifact = FHIRAllTypes._(
    valueString: 'RelatedArtifact',
    valueEnum: FHIRAllTypesEnum.relatedArtifact,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RelatedArtifact',
    ),
  );

  /// SampledData
  static const FHIRAllTypes sampledData = FHIRAllTypes._(
    valueString: 'SampledData',
    valueEnum: FHIRAllTypesEnum.sampledData,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SampledData',
    ),
  );

  /// Signature
  static const FHIRAllTypes signature = FHIRAllTypes._(
    valueString: 'Signature',
    valueEnum: FHIRAllTypesEnum.signature,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Signature',
    ),
  );

  /// SimpleQuantity
  static const FHIRAllTypes simpleQuantity = FHIRAllTypes._(
    valueString: 'SimpleQuantity',
    valueEnum: FHIRAllTypesEnum.simpleQuantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SimpleQuantity',
    ),
  );

  /// Timing
  static const FHIRAllTypes timing = FHIRAllTypes._(
    valueString: 'Timing',
    valueEnum: FHIRAllTypesEnum.timing,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Timing',
    ),
  );

  /// TriggerDefinition
  static const FHIRAllTypes triggerDefinition = FHIRAllTypes._(
    valueString: 'TriggerDefinition',
    valueEnum: FHIRAllTypesEnum.triggerDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TriggerDefinition',
    ),
  );

  /// UsageContext
  static const FHIRAllTypes usageContext = FHIRAllTypes._(
    valueString: 'UsageContext',
    valueEnum: FHIRAllTypesEnum.usageContext,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'UsageContext',
    ),
  );

  /// base64Binary
  static const FHIRAllTypes base64Binary = FHIRAllTypes._(
    valueString: 'base64Binary',
    valueEnum: FHIRAllTypesEnum.base64Binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'base64Binary',
    ),
  );

  /// boolean
  static const FHIRAllTypes boolean = FHIRAllTypes._(
    valueString: 'boolean',
    valueEnum: FHIRAllTypesEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// canonical
  static const FHIRAllTypes canonical = FHIRAllTypes._(
    valueString: 'canonical',
    valueEnum: FHIRAllTypesEnum.canonical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'canonical',
    ),
  );

  /// code
  static const FHIRAllTypes code = FHIRAllTypes._(
    valueString: 'code',
    valueEnum: FHIRAllTypesEnum.code,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'code',
    ),
  );

  /// date
  static const FHIRAllTypes date = FHIRAllTypes._(
    valueString: 'date',
    valueEnum: FHIRAllTypesEnum.date,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'date',
    ),
  );

  /// dateTime
  static const FHIRAllTypes dateTime = FHIRAllTypes._(
    valueString: 'dateTime',
    valueEnum: FHIRAllTypesEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static const FHIRAllTypes decimal = FHIRAllTypes._(
    valueString: 'decimal',
    valueEnum: FHIRAllTypesEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'decimal',
    ),
  );

  /// id
  static const FHIRAllTypes id_ = FHIRAllTypes._(
    valueString: 'id',
    valueEnum: FHIRAllTypesEnum.id_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'id',
    ),
  );

  /// instant
  static const FHIRAllTypes instant = FHIRAllTypes._(
    valueString: 'instant',
    valueEnum: FHIRAllTypesEnum.instant,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'instant',
    ),
  );

  /// integer
  static const FHIRAllTypes integer = FHIRAllTypes._(
    valueString: 'integer',
    valueEnum: FHIRAllTypesEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'integer',
    ),
  );

  /// markdown
  static const FHIRAllTypes markdown = FHIRAllTypes._(
    valueString: 'markdown',
    valueEnum: FHIRAllTypesEnum.markdown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'markdown',
    ),
  );

  /// oid
  static const FHIRAllTypes oid = FHIRAllTypes._(
    valueString: 'oid',
    valueEnum: FHIRAllTypesEnum.oid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'oid',
    ),
  );

  /// positiveInt
  static const FHIRAllTypes positiveInt = FHIRAllTypes._(
    valueString: 'positiveInt',
    valueEnum: FHIRAllTypesEnum.positiveInt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'positiveInt',
    ),
  );

  /// string
  static const FHIRAllTypes string = FHIRAllTypes._(
    valueString: 'string',
    valueEnum: FHIRAllTypesEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// time
  static const FHIRAllTypes time = FHIRAllTypes._(
    valueString: 'time',
    valueEnum: FHIRAllTypesEnum.time,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'time',
    ),
  );

  /// unsignedInt
  static const FHIRAllTypes unsignedInt = FHIRAllTypes._(
    valueString: 'unsignedInt',
    valueEnum: FHIRAllTypesEnum.unsignedInt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'unsignedInt',
    ),
  );

  /// uri
  static const FHIRAllTypes uri = FHIRAllTypes._(
    valueString: 'uri',
    valueEnum: FHIRAllTypesEnum.uri,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'uri',
    ),
  );

  /// url
  static const FHIRAllTypes url = FHIRAllTypes._(
    valueString: 'url',
    valueEnum: FHIRAllTypesEnum.url,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'url',
    ),
  );

  /// uuid
  static const FHIRAllTypes uuid = FHIRAllTypes._(
    valueString: 'uuid',
    valueEnum: FHIRAllTypesEnum.uuid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'uuid',
    ),
  );

  /// xhtml
  static const FHIRAllTypes xhtml = FHIRAllTypes._(
    valueString: 'xhtml',
    valueEnum: FHIRAllTypesEnum.xhtml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'XHTML',
    ),
  );

  /// Resource
  static const FHIRAllTypes resource = FHIRAllTypes._(
    valueString: 'Resource',
    valueEnum: FHIRAllTypesEnum.resource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resource',
    ),
  );

  /// Binary
  static const FHIRAllTypes binary = FHIRAllTypes._(
    valueString: 'Binary',
    valueEnum: FHIRAllTypesEnum.binary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Binary',
    ),
  );

  /// Bundle
  static const FHIRAllTypes bundle = FHIRAllTypes._(
    valueString: 'Bundle',
    valueEnum: FHIRAllTypesEnum.bundle,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Bundle',
    ),
  );

  /// DomainResource
  static const FHIRAllTypes domainResource = FHIRAllTypes._(
    valueString: 'DomainResource',
    valueEnum: FHIRAllTypesEnum.domainResource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DomainResource',
    ),
  );

  /// Account
  static const FHIRAllTypes account = FHIRAllTypes._(
    valueString: 'Account',
    valueEnum: FHIRAllTypesEnum.account,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Account',
    ),
  );

  /// ActivityDefinition
  static const FHIRAllTypes activityDefinition = FHIRAllTypes._(
    valueString: 'ActivityDefinition',
    valueEnum: FHIRAllTypesEnum.activityDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ActivityDefinition',
    ),
  );

  /// AdministrableProductDefinition
  static const FHIRAllTypes administrableProductDefinition = FHIRAllTypes._(
    valueString: 'AdministrableProductDefinition',
    valueEnum: FHIRAllTypesEnum.administrableProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AdministrableProductDefinition',
    ),
  );

  /// AdverseEvent
  static const FHIRAllTypes adverseEvent = FHIRAllTypes._(
    valueString: 'AdverseEvent',
    valueEnum: FHIRAllTypesEnum.adverseEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AdverseEvent',
    ),
  );

  /// AllergyIntolerance
  static const FHIRAllTypes allergyIntolerance = FHIRAllTypes._(
    valueString: 'AllergyIntolerance',
    valueEnum: FHIRAllTypesEnum.allergyIntolerance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AllergyIntolerance',
    ),
  );

  /// Appointment
  static const FHIRAllTypes appointment = FHIRAllTypes._(
    valueString: 'Appointment',
    valueEnum: FHIRAllTypesEnum.appointment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appointment',
    ),
  );

  /// AppointmentResponse
  static const FHIRAllTypes appointmentResponse = FHIRAllTypes._(
    valueString: 'AppointmentResponse',
    valueEnum: FHIRAllTypesEnum.appointmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AppointmentResponse',
    ),
  );

  /// AuditEvent
  static const FHIRAllTypes auditEvent = FHIRAllTypes._(
    valueString: 'AuditEvent',
    valueEnum: FHIRAllTypesEnum.auditEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AuditEvent',
    ),
  );

  /// Basic
  static const FHIRAllTypes basic = FHIRAllTypes._(
    valueString: 'Basic',
    valueEnum: FHIRAllTypesEnum.basic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Basic',
    ),
  );

  /// BiologicallyDerivedProduct
  static const FHIRAllTypes biologicallyDerivedProduct = FHIRAllTypes._(
    valueString: 'BiologicallyDerivedProduct',
    valueEnum: FHIRAllTypesEnum.biologicallyDerivedProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'BiologicallyDerivedProduct',
    ),
  );

  /// BodyStructure
  static const FHIRAllTypes bodyStructure = FHIRAllTypes._(
    valueString: 'BodyStructure',
    valueEnum: FHIRAllTypesEnum.bodyStructure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'BodyStructure',
    ),
  );

  /// CapabilityStatement
  static const FHIRAllTypes capabilityStatement = FHIRAllTypes._(
    valueString: 'CapabilityStatement',
    valueEnum: FHIRAllTypesEnum.capabilityStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CapabilityStatement',
    ),
  );

  /// CarePlan
  static const FHIRAllTypes carePlan = FHIRAllTypes._(
    valueString: 'CarePlan',
    valueEnum: FHIRAllTypesEnum.carePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CarePlan',
    ),
  );

  /// CareTeam
  static const FHIRAllTypes careTeam = FHIRAllTypes._(
    valueString: 'CareTeam',
    valueEnum: FHIRAllTypesEnum.careTeam,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CareTeam',
    ),
  );

  /// CatalogEntry
  static const FHIRAllTypes catalogEntry = FHIRAllTypes._(
    valueString: 'CatalogEntry',
    valueEnum: FHIRAllTypesEnum.catalogEntry,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CatalogEntry',
    ),
  );

  /// ChargeItem
  static const FHIRAllTypes chargeItem = FHIRAllTypes._(
    valueString: 'ChargeItem',
    valueEnum: FHIRAllTypesEnum.chargeItem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ChargeItem',
    ),
  );

  /// ChargeItemDefinition
  static const FHIRAllTypes chargeItemDefinition = FHIRAllTypes._(
    valueString: 'ChargeItemDefinition',
    valueEnum: FHIRAllTypesEnum.chargeItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ChargeItemDefinition',
    ),
  );

  /// Citation
  static const FHIRAllTypes citation = FHIRAllTypes._(
    valueString: 'Citation',
    valueEnum: FHIRAllTypesEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// Claim
  static const FHIRAllTypes claim = FHIRAllTypes._(
    valueString: 'Claim',
    valueEnum: FHIRAllTypesEnum.claim,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Claim',
    ),
  );

  /// ClaimResponse
  static const FHIRAllTypes claimResponse = FHIRAllTypes._(
    valueString: 'ClaimResponse',
    valueEnum: FHIRAllTypesEnum.claimResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ClaimResponse',
    ),
  );

  /// ClinicalImpression
  static const FHIRAllTypes clinicalImpression = FHIRAllTypes._(
    valueString: 'ClinicalImpression',
    valueEnum: FHIRAllTypesEnum.clinicalImpression,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ClinicalImpression',
    ),
  );

  /// ClinicalUseDefinition
  static const FHIRAllTypes clinicalUseDefinition = FHIRAllTypes._(
    valueString: 'ClinicalUseDefinition',
    valueEnum: FHIRAllTypesEnum.clinicalUseDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ClinicalUseDefinition',
    ),
  );

  /// CodeSystem
  static const FHIRAllTypes codeSystem = FHIRAllTypes._(
    valueString: 'CodeSystem',
    valueEnum: FHIRAllTypesEnum.codeSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CodeSystem',
    ),
  );

  /// Communication
  static const FHIRAllTypes communication = FHIRAllTypes._(
    valueString: 'Communication',
    valueEnum: FHIRAllTypesEnum.communication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Communication',
    ),
  );

  /// CommunicationRequest
  static const FHIRAllTypes communicationRequest = FHIRAllTypes._(
    valueString: 'CommunicationRequest',
    valueEnum: FHIRAllTypesEnum.communicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CommunicationRequest',
    ),
  );

  /// CompartmentDefinition
  static const FHIRAllTypes compartmentDefinition = FHIRAllTypes._(
    valueString: 'CompartmentDefinition',
    valueEnum: FHIRAllTypesEnum.compartmentDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CompartmentDefinition',
    ),
  );

  /// Composition
  static const FHIRAllTypes composition = FHIRAllTypes._(
    valueString: 'Composition',
    valueEnum: FHIRAllTypesEnum.composition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Composition',
    ),
  );

  /// ConceptMap
  static const FHIRAllTypes conceptMap = FHIRAllTypes._(
    valueString: 'ConceptMap',
    valueEnum: FHIRAllTypesEnum.conceptMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ConceptMap',
    ),
  );

  /// Condition
  static const FHIRAllTypes condition = FHIRAllTypes._(
    valueString: 'Condition',
    valueEnum: FHIRAllTypesEnum.condition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Condition',
    ),
  );

  /// Consent
  static const FHIRAllTypes consent = FHIRAllTypes._(
    valueString: 'Consent',
    valueEnum: FHIRAllTypesEnum.consent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Consent',
    ),
  );

  /// Contract
  static const FHIRAllTypes contract = FHIRAllTypes._(
    valueString: 'Contract',
    valueEnum: FHIRAllTypesEnum.contract,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contract',
    ),
  );

  /// Coverage
  static const FHIRAllTypes coverage = FHIRAllTypes._(
    valueString: 'Coverage',
    valueEnum: FHIRAllTypesEnum.coverage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coverage',
    ),
  );

  /// CoverageEligibilityRequest
  static const FHIRAllTypes coverageEligibilityRequest = FHIRAllTypes._(
    valueString: 'CoverageEligibilityRequest',
    valueEnum: FHIRAllTypesEnum.coverageEligibilityRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityRequest',
    ),
  );

  /// CoverageEligibilityResponse
  static const FHIRAllTypes coverageEligibilityResponse = FHIRAllTypes._(
    valueString: 'CoverageEligibilityResponse',
    valueEnum: FHIRAllTypesEnum.coverageEligibilityResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CoverageEligibilityResponse',
    ),
  );

  /// DetectedIssue
  static const FHIRAllTypes detectedIssue = FHIRAllTypes._(
    valueString: 'DetectedIssue',
    valueEnum: FHIRAllTypesEnum.detectedIssue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DetectedIssue',
    ),
  );

  /// Device
  static const FHIRAllTypes device = FHIRAllTypes._(
    valueString: 'Device',
    valueEnum: FHIRAllTypesEnum.device,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Device',
    ),
  );

  /// DeviceDefinition
  static const FHIRAllTypes deviceDefinition = FHIRAllTypes._(
    valueString: 'DeviceDefinition',
    valueEnum: FHIRAllTypesEnum.deviceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceDefinition',
    ),
  );

  /// DeviceMetric
  static const FHIRAllTypes deviceMetric = FHIRAllTypes._(
    valueString: 'DeviceMetric',
    valueEnum: FHIRAllTypesEnum.deviceMetric,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceMetric',
    ),
  );

  /// DeviceRequest
  static const FHIRAllTypes deviceRequest = FHIRAllTypes._(
    valueString: 'DeviceRequest',
    valueEnum: FHIRAllTypesEnum.deviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceRequest',
    ),
  );

  /// DeviceUseStatement
  static const FHIRAllTypes deviceUseStatement = FHIRAllTypes._(
    valueString: 'DeviceUseStatement',
    valueEnum: FHIRAllTypesEnum.deviceUseStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DeviceUseStatement',
    ),
  );

  /// DiagnosticReport
  static const FHIRAllTypes diagnosticReport = FHIRAllTypes._(
    valueString: 'DiagnosticReport',
    valueEnum: FHIRAllTypesEnum.diagnosticReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DiagnosticReport',
    ),
  );

  /// DocumentManifest
  static const FHIRAllTypes documentManifest = FHIRAllTypes._(
    valueString: 'DocumentManifest',
    valueEnum: FHIRAllTypesEnum.documentManifest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DocumentManifest',
    ),
  );

  /// DocumentReference
  static const FHIRAllTypes documentReference = FHIRAllTypes._(
    valueString: 'DocumentReference',
    valueEnum: FHIRAllTypesEnum.documentReference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DocumentReference',
    ),
  );

  /// Encounter
  static const FHIRAllTypes encounter = FHIRAllTypes._(
    valueString: 'Encounter',
    valueEnum: FHIRAllTypesEnum.encounter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Encounter',
    ),
  );

  /// Endpoint
  static const FHIRAllTypes endpoint = FHIRAllTypes._(
    valueString: 'Endpoint',
    valueEnum: FHIRAllTypesEnum.endpoint,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Endpoint',
    ),
  );

  /// EnrollmentRequest
  static const FHIRAllTypes enrollmentRequest = FHIRAllTypes._(
    valueString: 'EnrollmentRequest',
    valueEnum: FHIRAllTypesEnum.enrollmentRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EnrollmentRequest',
    ),
  );

  /// EnrollmentResponse
  static const FHIRAllTypes enrollmentResponse = FHIRAllTypes._(
    valueString: 'EnrollmentResponse',
    valueEnum: FHIRAllTypesEnum.enrollmentResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EnrollmentResponse',
    ),
  );

  /// EpisodeOfCare
  static const FHIRAllTypes episodeOfCare = FHIRAllTypes._(
    valueString: 'EpisodeOfCare',
    valueEnum: FHIRAllTypesEnum.episodeOfCare,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EpisodeOfCare',
    ),
  );

  /// EventDefinition
  static const FHIRAllTypes eventDefinition = FHIRAllTypes._(
    valueString: 'EventDefinition',
    valueEnum: FHIRAllTypesEnum.eventDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EventDefinition',
    ),
  );

  /// Evidence
  static const FHIRAllTypes evidence = FHIRAllTypes._(
    valueString: 'Evidence',
    valueEnum: FHIRAllTypesEnum.evidence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Evidence',
    ),
  );

  /// EvidenceReport
  static const FHIRAllTypes evidenceReport = FHIRAllTypes._(
    valueString: 'EvidenceReport',
    valueEnum: FHIRAllTypesEnum.evidenceReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EvidenceReport',
    ),
  );

  /// EvidenceVariable
  static const FHIRAllTypes evidenceVariable = FHIRAllTypes._(
    valueString: 'EvidenceVariable',
    valueEnum: FHIRAllTypesEnum.evidenceVariable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'EvidenceVariable',
    ),
  );

  /// ExampleScenario
  static const FHIRAllTypes exampleScenario = FHIRAllTypes._(
    valueString: 'ExampleScenario',
    valueEnum: FHIRAllTypesEnum.exampleScenario,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ExampleScenario',
    ),
  );

  /// ExplanationOfBenefit
  static const FHIRAllTypes explanationOfBenefit = FHIRAllTypes._(
    valueString: 'ExplanationOfBenefit',
    valueEnum: FHIRAllTypesEnum.explanationOfBenefit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ExplanationOfBenefit',
    ),
  );

  /// FamilyMemberHistory
  static const FHIRAllTypes familyMemberHistory = FHIRAllTypes._(
    valueString: 'FamilyMemberHistory',
    valueEnum: FHIRAllTypesEnum.familyMemberHistory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'FamilyMemberHistory',
    ),
  );

  /// Flag
  static const FHIRAllTypes flag = FHIRAllTypes._(
    valueString: 'Flag',
    valueEnum: FHIRAllTypesEnum.flag,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Flag',
    ),
  );

  /// Goal
  static const FHIRAllTypes goal = FHIRAllTypes._(
    valueString: 'Goal',
    valueEnum: FHIRAllTypesEnum.goal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Goal',
    ),
  );

  /// GraphDefinition
  static const FHIRAllTypes graphDefinition = FHIRAllTypes._(
    valueString: 'GraphDefinition',
    valueEnum: FHIRAllTypesEnum.graphDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'GraphDefinition',
    ),
  );

  /// Group
  static const FHIRAllTypes group = FHIRAllTypes._(
    valueString: 'Group',
    valueEnum: FHIRAllTypesEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// GuidanceResponse
  static const FHIRAllTypes guidanceResponse = FHIRAllTypes._(
    valueString: 'GuidanceResponse',
    valueEnum: FHIRAllTypesEnum.guidanceResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'GuidanceResponse',
    ),
  );

  /// HealthcareService
  static const FHIRAllTypes healthcareService = FHIRAllTypes._(
    valueString: 'HealthcareService',
    valueEnum: FHIRAllTypesEnum.healthcareService,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HealthcareService',
    ),
  );

  /// ImagingStudy
  static const FHIRAllTypes imagingStudy = FHIRAllTypes._(
    valueString: 'ImagingStudy',
    valueEnum: FHIRAllTypesEnum.imagingStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImagingStudy',
    ),
  );

  /// Immunization
  static const FHIRAllTypes immunization = FHIRAllTypes._(
    valueString: 'Immunization',
    valueEnum: FHIRAllTypesEnum.immunization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Immunization',
    ),
  );

  /// ImmunizationEvaluation
  static const FHIRAllTypes immunizationEvaluation = FHIRAllTypes._(
    valueString: 'ImmunizationEvaluation',
    valueEnum: FHIRAllTypesEnum.immunizationEvaluation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImmunizationEvaluation',
    ),
  );

  /// ImmunizationRecommendation
  static const FHIRAllTypes immunizationRecommendation = FHIRAllTypes._(
    valueString: 'ImmunizationRecommendation',
    valueEnum: FHIRAllTypesEnum.immunizationRecommendation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImmunizationRecommendation',
    ),
  );

  /// ImplementationGuide
  static const FHIRAllTypes implementationGuide = FHIRAllTypes._(
    valueString: 'ImplementationGuide',
    valueEnum: FHIRAllTypesEnum.implementationGuide,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ImplementationGuide',
    ),
  );

  /// Ingredient
  static const FHIRAllTypes ingredient = FHIRAllTypes._(
    valueString: 'Ingredient',
    valueEnum: FHIRAllTypesEnum.ingredient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ingredient',
    ),
  );

  /// InsurancePlan
  static const FHIRAllTypes insurancePlan = FHIRAllTypes._(
    valueString: 'InsurancePlan',
    valueEnum: FHIRAllTypesEnum.insurancePlan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'InsurancePlan',
    ),
  );

  /// Invoice
  static const FHIRAllTypes invoice = FHIRAllTypes._(
    valueString: 'Invoice',
    valueEnum: FHIRAllTypesEnum.invoice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Invoice',
    ),
  );

  /// Library
  static const FHIRAllTypes library = FHIRAllTypes._(
    valueString: 'Library',
    valueEnum: FHIRAllTypesEnum.library,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Library',
    ),
  );

  /// Linkage
  static const FHIRAllTypes linkage = FHIRAllTypes._(
    valueString: 'Linkage',
    valueEnum: FHIRAllTypesEnum.linkage,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Linkage',
    ),
  );

  /// List_
  static const FHIRAllTypes list_ = FHIRAllTypes._(
    valueString: 'List',
    valueEnum: FHIRAllTypesEnum.list_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'List',
    ),
  );

  /// Location
  static const FHIRAllTypes location = FHIRAllTypes._(
    valueString: 'Location',
    valueEnum: FHIRAllTypesEnum.location,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Location',
    ),
  );

  /// ManufacturedItemDefinition
  static const FHIRAllTypes manufacturedItemDefinition = FHIRAllTypes._(
    valueString: 'ManufacturedItemDefinition',
    valueEnum: FHIRAllTypesEnum.manufacturedItemDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ManufacturedItemDefinition',
    ),
  );

  /// Measure
  static const FHIRAllTypes measure = FHIRAllTypes._(
    valueString: 'Measure',
    valueEnum: FHIRAllTypesEnum.measure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Measure',
    ),
  );

  /// MeasureReport
  static const FHIRAllTypes measureReport = FHIRAllTypes._(
    valueString: 'MeasureReport',
    valueEnum: FHIRAllTypesEnum.measureReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MeasureReport',
    ),
  );

  /// Media
  static const FHIRAllTypes media = FHIRAllTypes._(
    valueString: 'Media',
    valueEnum: FHIRAllTypesEnum.media,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Media',
    ),
  );

  /// Medication
  static const FHIRAllTypes medication = FHIRAllTypes._(
    valueString: 'Medication',
    valueEnum: FHIRAllTypesEnum.medication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Medication',
    ),
  );

  /// MedicationAdministration
  static const FHIRAllTypes medicationAdministration = FHIRAllTypes._(
    valueString: 'MedicationAdministration',
    valueEnum: FHIRAllTypesEnum.medicationAdministration,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationAdministration',
    ),
  );

  /// MedicationDispense
  static const FHIRAllTypes medicationDispense = FHIRAllTypes._(
    valueString: 'MedicationDispense',
    valueEnum: FHIRAllTypesEnum.medicationDispense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationDispense',
    ),
  );

  /// MedicationKnowledge
  static const FHIRAllTypes medicationKnowledge = FHIRAllTypes._(
    valueString: 'MedicationKnowledge',
    valueEnum: FHIRAllTypesEnum.medicationKnowledge,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationKnowledge',
    ),
  );

  /// MedicationRequest
  static const FHIRAllTypes medicationRequest = FHIRAllTypes._(
    valueString: 'MedicationRequest',
    valueEnum: FHIRAllTypesEnum.medicationRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationRequest',
    ),
  );

  /// MedicationStatement
  static const FHIRAllTypes medicationStatement = FHIRAllTypes._(
    valueString: 'MedicationStatement',
    valueEnum: FHIRAllTypesEnum.medicationStatement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicationStatement',
    ),
  );

  /// MedicinalProductDefinition
  static const FHIRAllTypes medicinalProductDefinition = FHIRAllTypes._(
    valueString: 'MedicinalProductDefinition',
    valueEnum: FHIRAllTypesEnum.medicinalProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MedicinalProductDefinition',
    ),
  );

  /// MessageDefinition
  static const FHIRAllTypes messageDefinition = FHIRAllTypes._(
    valueString: 'MessageDefinition',
    valueEnum: FHIRAllTypesEnum.messageDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MessageDefinition',
    ),
  );

  /// MessageHeader
  static const FHIRAllTypes messageHeader = FHIRAllTypes._(
    valueString: 'MessageHeader',
    valueEnum: FHIRAllTypesEnum.messageHeader,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MessageHeader',
    ),
  );

  /// MolecularSequence
  static const FHIRAllTypes molecularSequence = FHIRAllTypes._(
    valueString: 'MolecularSequence',
    valueEnum: FHIRAllTypesEnum.molecularSequence,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'MolecularSequence',
    ),
  );

  /// NamingSystem
  static const FHIRAllTypes namingSystem = FHIRAllTypes._(
    valueString: 'NamingSystem',
    valueEnum: FHIRAllTypesEnum.namingSystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NamingSystem',
    ),
  );

  /// NutritionOrder
  static const FHIRAllTypes nutritionOrder = FHIRAllTypes._(
    valueString: 'NutritionOrder',
    valueEnum: FHIRAllTypesEnum.nutritionOrder,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NutritionOrder',
    ),
  );

  /// NutritionProduct
  static const FHIRAllTypes nutritionProduct = FHIRAllTypes._(
    valueString: 'NutritionProduct',
    valueEnum: FHIRAllTypesEnum.nutritionProduct,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'NutritionProduct',
    ),
  );

  /// Observation
  static const FHIRAllTypes observation = FHIRAllTypes._(
    valueString: 'Observation',
    valueEnum: FHIRAllTypesEnum.observation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Observation',
    ),
  );

  /// ObservationDefinition
  static const FHIRAllTypes observationDefinition = FHIRAllTypes._(
    valueString: 'ObservationDefinition',
    valueEnum: FHIRAllTypesEnum.observationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ObservationDefinition',
    ),
  );

  /// OperationDefinition
  static const FHIRAllTypes operationDefinition = FHIRAllTypes._(
    valueString: 'OperationDefinition',
    valueEnum: FHIRAllTypesEnum.operationDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OperationDefinition',
    ),
  );

  /// OperationOutcome
  static const FHIRAllTypes operationOutcome = FHIRAllTypes._(
    valueString: 'OperationOutcome',
    valueEnum: FHIRAllTypesEnum.operationOutcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OperationOutcome',
    ),
  );

  /// Organization
  static const FHIRAllTypes organization = FHIRAllTypes._(
    valueString: 'Organization',
    valueEnum: FHIRAllTypesEnum.organization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Organization',
    ),
  );

  /// OrganizationAffiliation
  static const FHIRAllTypes organizationAffiliation = FHIRAllTypes._(
    valueString: 'OrganizationAffiliation',
    valueEnum: FHIRAllTypesEnum.organizationAffiliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OrganizationAffiliation',
    ),
  );

  /// PackagedProductDefinition
  static const FHIRAllTypes packagedProductDefinition = FHIRAllTypes._(
    valueString: 'PackagedProductDefinition',
    valueEnum: FHIRAllTypesEnum.packagedProductDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PackagedProductDefinition',
    ),
  );

  /// Patient
  static const FHIRAllTypes patient = FHIRAllTypes._(
    valueString: 'Patient',
    valueEnum: FHIRAllTypesEnum.patient,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Patient',
    ),
  );

  /// PaymentNotice
  static const FHIRAllTypes paymentNotice = FHIRAllTypes._(
    valueString: 'PaymentNotice',
    valueEnum: FHIRAllTypesEnum.paymentNotice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PaymentNotice',
    ),
  );

  /// PaymentReconciliation
  static const FHIRAllTypes paymentReconciliation = FHIRAllTypes._(
    valueString: 'PaymentReconciliation',
    valueEnum: FHIRAllTypesEnum.paymentReconciliation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PaymentReconciliation',
    ),
  );

  /// Person
  static const FHIRAllTypes person = FHIRAllTypes._(
    valueString: 'Person',
    valueEnum: FHIRAllTypesEnum.person,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Person',
    ),
  );

  /// PlanDefinition
  static const FHIRAllTypes planDefinition = FHIRAllTypes._(
    valueString: 'PlanDefinition',
    valueEnum: FHIRAllTypesEnum.planDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PlanDefinition',
    ),
  );

  /// Practitioner
  static const FHIRAllTypes practitioner = FHIRAllTypes._(
    valueString: 'Practitioner',
    valueEnum: FHIRAllTypesEnum.practitioner,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Practitioner',
    ),
  );

  /// PractitionerRole
  static const FHIRAllTypes practitionerRole = FHIRAllTypes._(
    valueString: 'PractitionerRole',
    valueEnum: FHIRAllTypesEnum.practitionerRole,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PractitionerRole',
    ),
  );

  /// Procedure
  static const FHIRAllTypes procedure = FHIRAllTypes._(
    valueString: 'Procedure',
    valueEnum: FHIRAllTypesEnum.procedure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Procedure',
    ),
  );

  /// Provenance
  static const FHIRAllTypes provenance = FHIRAllTypes._(
    valueString: 'Provenance',
    valueEnum: FHIRAllTypesEnum.provenance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Provenance',
    ),
  );

  /// Questionnaire
  static const FHIRAllTypes questionnaire = FHIRAllTypes._(
    valueString: 'Questionnaire',
    valueEnum: FHIRAllTypesEnum.questionnaire,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Questionnaire',
    ),
  );

  /// QuestionnaireResponse
  static const FHIRAllTypes questionnaireResponse = FHIRAllTypes._(
    valueString: 'QuestionnaireResponse',
    valueEnum: FHIRAllTypesEnum.questionnaireResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'QuestionnaireResponse',
    ),
  );

  /// RegulatedAuthorization
  static const FHIRAllTypes regulatedAuthorization = FHIRAllTypes._(
    valueString: 'RegulatedAuthorization',
    valueEnum: FHIRAllTypesEnum.regulatedAuthorization,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RegulatedAuthorization',
    ),
  );

  /// RelatedPerson
  static const FHIRAllTypes relatedPerson = FHIRAllTypes._(
    valueString: 'RelatedPerson',
    valueEnum: FHIRAllTypesEnum.relatedPerson,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RelatedPerson',
    ),
  );

  /// RequestGroup
  static const FHIRAllTypes requestGroup = FHIRAllTypes._(
    valueString: 'RequestGroup',
    valueEnum: FHIRAllTypesEnum.requestGroup,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RequestGroup',
    ),
  );

  /// ResearchDefinition
  static const FHIRAllTypes researchDefinition = FHIRAllTypes._(
    valueString: 'ResearchDefinition',
    valueEnum: FHIRAllTypesEnum.researchDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchDefinition',
    ),
  );

  /// ResearchElementDefinition
  static const FHIRAllTypes researchElementDefinition = FHIRAllTypes._(
    valueString: 'ResearchElementDefinition',
    valueEnum: FHIRAllTypesEnum.researchElementDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchElementDefinition',
    ),
  );

  /// ResearchStudy
  static const FHIRAllTypes researchStudy = FHIRAllTypes._(
    valueString: 'ResearchStudy',
    valueEnum: FHIRAllTypesEnum.researchStudy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchStudy',
    ),
  );

  /// ResearchSubject
  static const FHIRAllTypes researchSubject = FHIRAllTypes._(
    valueString: 'ResearchSubject',
    valueEnum: FHIRAllTypesEnum.researchSubject,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ResearchSubject',
    ),
  );

  /// RiskAssessment
  static const FHIRAllTypes riskAssessment = FHIRAllTypes._(
    valueString: 'RiskAssessment',
    valueEnum: FHIRAllTypesEnum.riskAssessment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RiskAssessment',
    ),
  );

  /// Schedule
  static const FHIRAllTypes schedule = FHIRAllTypes._(
    valueString: 'Schedule',
    valueEnum: FHIRAllTypesEnum.schedule,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Schedule',
    ),
  );

  /// SearchParameter
  static const FHIRAllTypes searchParameter = FHIRAllTypes._(
    valueString: 'SearchParameter',
    valueEnum: FHIRAllTypesEnum.searchParameter,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SearchParameter',
    ),
  );

  /// ServiceRequest
  static const FHIRAllTypes serviceRequest = FHIRAllTypes._(
    valueString: 'ServiceRequest',
    valueEnum: FHIRAllTypesEnum.serviceRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ServiceRequest',
    ),
  );

  /// Slot
  static const FHIRAllTypes slot = FHIRAllTypes._(
    valueString: 'Slot',
    valueEnum: FHIRAllTypesEnum.slot,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Slot',
    ),
  );

  /// Specimen
  static const FHIRAllTypes specimen = FHIRAllTypes._(
    valueString: 'Specimen',
    valueEnum: FHIRAllTypesEnum.specimen,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Specimen',
    ),
  );

  /// SpecimenDefinition
  static const FHIRAllTypes specimenDefinition = FHIRAllTypes._(
    valueString: 'SpecimenDefinition',
    valueEnum: FHIRAllTypesEnum.specimenDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SpecimenDefinition',
    ),
  );

  /// StructureDefinition
  static const FHIRAllTypes structureDefinition = FHIRAllTypes._(
    valueString: 'StructureDefinition',
    valueEnum: FHIRAllTypesEnum.structureDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'StructureDefinition',
    ),
  );

  /// StructureMap
  static const FHIRAllTypes structureMap = FHIRAllTypes._(
    valueString: 'StructureMap',
    valueEnum: FHIRAllTypesEnum.structureMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'StructureMap',
    ),
  );

  /// Subscription
  static const FHIRAllTypes subscription = FHIRAllTypes._(
    valueString: 'Subscription',
    valueEnum: FHIRAllTypesEnum.subscription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Subscription',
    ),
  );

  /// SubscriptionStatus
  static const FHIRAllTypes subscriptionStatus = FHIRAllTypes._(
    valueString: 'SubscriptionStatus',
    valueEnum: FHIRAllTypesEnum.subscriptionStatus,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SubscriptionStatus',
    ),
  );

  /// SubscriptionTopic
  static const FHIRAllTypes subscriptionTopic = FHIRAllTypes._(
    valueString: 'SubscriptionTopic',
    valueEnum: FHIRAllTypesEnum.subscriptionTopic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SubscriptionTopic',
    ),
  );

  /// Substance
  static const FHIRAllTypes substance = FHIRAllTypes._(
    valueString: 'Substance',
    valueEnum: FHIRAllTypesEnum.substance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Substance',
    ),
  );

  /// SubstanceDefinition
  static const FHIRAllTypes substanceDefinition = FHIRAllTypes._(
    valueString: 'SubstanceDefinition',
    valueEnum: FHIRAllTypesEnum.substanceDefinition,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SubstanceDefinition',
    ),
  );

  /// SupplyDelivery
  static const FHIRAllTypes supplyDelivery = FHIRAllTypes._(
    valueString: 'SupplyDelivery',
    valueEnum: FHIRAllTypesEnum.supplyDelivery,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SupplyDelivery',
    ),
  );

  /// SupplyRequest
  static const FHIRAllTypes supplyRequest = FHIRAllTypes._(
    valueString: 'SupplyRequest',
    valueEnum: FHIRAllTypesEnum.supplyRequest,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SupplyRequest',
    ),
  );

  /// Task
  static const FHIRAllTypes task = FHIRAllTypes._(
    valueString: 'Task',
    valueEnum: FHIRAllTypesEnum.task,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Task',
    ),
  );

  /// TerminologyCapabilities
  static const FHIRAllTypes terminologyCapabilities = FHIRAllTypes._(
    valueString: 'TerminologyCapabilities',
    valueEnum: FHIRAllTypesEnum.terminologyCapabilities,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TerminologyCapabilities',
    ),
  );

  /// TestReport
  static const FHIRAllTypes testReport = FHIRAllTypes._(
    valueString: 'TestReport',
    valueEnum: FHIRAllTypesEnum.testReport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TestReport',
    ),
  );

  /// TestScript
  static const FHIRAllTypes testScript = FHIRAllTypes._(
    valueString: 'TestScript',
    valueEnum: FHIRAllTypesEnum.testScript,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'TestScript',
    ),
  );

  /// ValueSet
  static const FHIRAllTypes valueSet = FHIRAllTypes._(
    valueString: 'ValueSet',
    valueEnum: FHIRAllTypesEnum.valueSet,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ValueSet',
    ),
  );

  /// VerificationResult
  static const FHIRAllTypes verificationResult = FHIRAllTypes._(
    valueString: 'VerificationResult',
    valueEnum: FHIRAllTypesEnum.verificationResult,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'VerificationResult',
    ),
  );

  /// VisionPrescription
  static const FHIRAllTypes visionPrescription = FHIRAllTypes._(
    valueString: 'VisionPrescription',
    valueEnum: FHIRAllTypesEnum.visionPrescription,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'VisionPrescription',
    ),
  );

  /// Parameters
  static const FHIRAllTypes parameters = FHIRAllTypes._(
    valueString: 'Parameters',
    valueEnum: FHIRAllTypesEnum.parameters,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Parameters',
    ),
  );

  /// Type
  static const FHIRAllTypes type = FHIRAllTypes._(
    valueString: 'Type',
    valueEnum: FHIRAllTypesEnum.type,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Type',
    ),
  );

  /// Any
  static const FHIRAllTypes any = FHIRAllTypes._(
    valueString: 'Any',
    valueEnum: FHIRAllTypesEnum.any,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/all-types',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Any',
    ),
  );

  /// List of all enum-like values
  static final List<FHIRAllTypes> values = [
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
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(
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

  @override
  FHIRAllTypes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FHIRAllTypesCopyWithImpl<FHIRAllTypes> get copyWith =>
      FHIRAllTypesCopyWithImpl<FHIRAllTypes>(
        this,
        (v) => v as FHIRAllTypes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FHIRAllTypesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FHIRAllTypesCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      FHIRAllTypes(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
