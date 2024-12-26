// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypes extends FhirCode {
  // Private constructor for internal use (like enum)
  FHIRAllTypes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [FHIRAllTypes] from JSON.
  factory FHIRAllTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRAllTypes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRAllTypes cannot be constructed from JSON.',
      );
    }
    return FHIRAllTypes._(
      value,
      element: element,
    );
  }

  /// Address
  static final FHIRAllTypes Address = FHIRAllTypes._(
    'Address',
  );

  /// Age
  static final FHIRAllTypes Age = FHIRAllTypes._(
    'Age',
  );

  /// Annotation
  static final FHIRAllTypes Annotation = FHIRAllTypes._(
    'Annotation',
  );

  /// Attachment
  static final FHIRAllTypes Attachment = FHIRAllTypes._(
    'Attachment',
  );

  /// BackboneElement
  static final FHIRAllTypes BackboneElement = FHIRAllTypes._(
    'BackboneElement',
  );

  /// CodeableConcept
  static final FHIRAllTypes CodeableConcept = FHIRAllTypes._(
    'CodeableConcept',
  );

  /// CodeableReference
  static final FHIRAllTypes CodeableReference = FHIRAllTypes._(
    'CodeableReference',
  );

  /// Coding
  static final FHIRAllTypes Coding = FHIRAllTypes._(
    'Coding',
  );

  /// ContactDetail
  static final FHIRAllTypes ContactDetail = FHIRAllTypes._(
    'ContactDetail',
  );

  /// ContactPoint
  static final FHIRAllTypes ContactPoint = FHIRAllTypes._(
    'ContactPoint',
  );

  /// Contributor
  static final FHIRAllTypes Contributor = FHIRAllTypes._(
    'Contributor',
  );

  /// Count
  static final FHIRAllTypes Count = FHIRAllTypes._(
    'Count',
  );

  /// DataRequirement
  static final FHIRAllTypes DataRequirement = FHIRAllTypes._(
    'DataRequirement',
  );

  /// Distance
  static final FHIRAllTypes Distance = FHIRAllTypes._(
    'Distance',
  );

  /// Dosage
  static final FHIRAllTypes Dosage = FHIRAllTypes._(
    'Dosage',
  );

  /// Duration
  static final FHIRAllTypes Duration = FHIRAllTypes._(
    'Duration',
  );

  /// Element_
  static final FHIRAllTypes Element_ = FHIRAllTypes._(
    'Element',
  );

  /// ElementDefinition
  static final FHIRAllTypes ElementDefinition = FHIRAllTypes._(
    'ElementDefinition',
  );

  /// Expression
  static final FHIRAllTypes Expression = FHIRAllTypes._(
    'Expression',
  );

  /// Extension
  static final FHIRAllTypes Extension = FHIRAllTypes._(
    'Extension',
  );

  /// HumanName
  static final FHIRAllTypes HumanName = FHIRAllTypes._(
    'HumanName',
  );

  /// Identifier
  static final FHIRAllTypes Identifier = FHIRAllTypes._(
    'Identifier',
  );

  /// MarketingStatus
  static final FHIRAllTypes MarketingStatus = FHIRAllTypes._(
    'MarketingStatus',
  );

  /// Meta
  static final FHIRAllTypes Meta = FHIRAllTypes._(
    'Meta',
  );

  /// Money
  static final FHIRAllTypes Money = FHIRAllTypes._(
    'Money',
  );

  /// MoneyQuantity
  static final FHIRAllTypes MoneyQuantity = FHIRAllTypes._(
    'MoneyQuantity',
  );

  /// Narrative
  static final FHIRAllTypes Narrative = FHIRAllTypes._(
    'Narrative',
  );

  /// ParameterDefinition
  static final FHIRAllTypes ParameterDefinition = FHIRAllTypes._(
    'ParameterDefinition',
  );

  /// Period
  static final FHIRAllTypes Period = FHIRAllTypes._(
    'Period',
  );

  /// Population
  static final FHIRAllTypes Population = FHIRAllTypes._(
    'Population',
  );

  /// ProdCharacteristic
  static final FHIRAllTypes ProdCharacteristic = FHIRAllTypes._(
    'ProdCharacteristic',
  );

  /// ProductShelfLife
  static final FHIRAllTypes ProductShelfLife = FHIRAllTypes._(
    'ProductShelfLife',
  );

  /// Quantity
  static final FHIRAllTypes Quantity = FHIRAllTypes._(
    'Quantity',
  );

  /// Range
  static final FHIRAllTypes Range = FHIRAllTypes._(
    'Range',
  );

  /// Ratio
  static final FHIRAllTypes Ratio = FHIRAllTypes._(
    'Ratio',
  );

  /// RatioRange
  static final FHIRAllTypes RatioRange = FHIRAllTypes._(
    'RatioRange',
  );

  /// Reference
  static final FHIRAllTypes Reference = FHIRAllTypes._(
    'Reference',
  );

  /// RelatedArtifact
  static final FHIRAllTypes RelatedArtifact = FHIRAllTypes._(
    'RelatedArtifact',
  );

  /// SampledData
  static final FHIRAllTypes SampledData = FHIRAllTypes._(
    'SampledData',
  );

  /// Signature
  static final FHIRAllTypes Signature = FHIRAllTypes._(
    'Signature',
  );

  /// SimpleQuantity
  static final FHIRAllTypes SimpleQuantity = FHIRAllTypes._(
    'SimpleQuantity',
  );

  /// Timing
  static final FHIRAllTypes Timing = FHIRAllTypes._(
    'Timing',
  );

  /// TriggerDefinition
  static final FHIRAllTypes TriggerDefinition = FHIRAllTypes._(
    'TriggerDefinition',
  );

  /// UsageContext
  static final FHIRAllTypes UsageContext = FHIRAllTypes._(
    'UsageContext',
  );

  /// base64Binary
  static final FHIRAllTypes base64Binary = FHIRAllTypes._(
    'base64Binary',
  );

  /// boolean
  static final FHIRAllTypes boolean = FHIRAllTypes._(
    'boolean',
  );

  /// canonical
  static final FHIRAllTypes canonical = FHIRAllTypes._(
    'canonical',
  );

  /// code
  static final FHIRAllTypes code = FHIRAllTypes._(
    'code',
  );

  /// date
  static final FHIRAllTypes date = FHIRAllTypes._(
    'date',
  );

  /// dateTime
  static final FHIRAllTypes dateTime = FHIRAllTypes._(
    'dateTime',
  );

  /// decimal
  static final FHIRAllTypes decimal = FHIRAllTypes._(
    'decimal',
  );

  /// id
  static final FHIRAllTypes id_ = FHIRAllTypes._(
    'id',
  );

  /// instant
  static final FHIRAllTypes instant = FHIRAllTypes._(
    'instant',
  );

  /// integer
  static final FHIRAllTypes integer = FHIRAllTypes._(
    'integer',
  );

  /// markdown
  static final FHIRAllTypes markdown = FHIRAllTypes._(
    'markdown',
  );

  /// oid
  static final FHIRAllTypes oid = FHIRAllTypes._(
    'oid',
  );

  /// positiveInt
  static final FHIRAllTypes positiveInt = FHIRAllTypes._(
    'positiveInt',
  );

  /// string
  static final FHIRAllTypes string = FHIRAllTypes._(
    'string',
  );

  /// time
  static final FHIRAllTypes time = FHIRAllTypes._(
    'time',
  );

  /// unsignedInt
  static final FHIRAllTypes unsignedInt = FHIRAllTypes._(
    'unsignedInt',
  );

  /// uri
  static final FHIRAllTypes uri = FHIRAllTypes._(
    'uri',
  );

  /// url
  static final FHIRAllTypes url = FHIRAllTypes._(
    'url',
  );

  /// uuid
  static final FHIRAllTypes uuid = FHIRAllTypes._(
    'uuid',
  );

  /// xhtml
  static final FHIRAllTypes xhtml = FHIRAllTypes._(
    'xhtml',
  );

  /// Resource
  static final FHIRAllTypes Resource = FHIRAllTypes._(
    'Resource',
  );

  /// Binary
  static final FHIRAllTypes Binary = FHIRAllTypes._(
    'Binary',
  );

  /// Bundle
  static final FHIRAllTypes Bundle = FHIRAllTypes._(
    'Bundle',
  );

  /// DomainResource
  static final FHIRAllTypes DomainResource = FHIRAllTypes._(
    'DomainResource',
  );

  /// Account
  static final FHIRAllTypes Account = FHIRAllTypes._(
    'Account',
  );

  /// ActivityDefinition
  static final FHIRAllTypes ActivityDefinition = FHIRAllTypes._(
    'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final FHIRAllTypes AdministrableProductDefinition = FHIRAllTypes._(
    'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final FHIRAllTypes AdverseEvent = FHIRAllTypes._(
    'AdverseEvent',
  );

  /// AllergyIntolerance
  static final FHIRAllTypes AllergyIntolerance = FHIRAllTypes._(
    'AllergyIntolerance',
  );

  /// Appointment
  static final FHIRAllTypes Appointment = FHIRAllTypes._(
    'Appointment',
  );

  /// AppointmentResponse
  static final FHIRAllTypes AppointmentResponse = FHIRAllTypes._(
    'AppointmentResponse',
  );

  /// AuditEvent
  static final FHIRAllTypes AuditEvent = FHIRAllTypes._(
    'AuditEvent',
  );

  /// Basic
  static final FHIRAllTypes Basic = FHIRAllTypes._(
    'Basic',
  );

  /// BiologicallyDerivedProduct
  static final FHIRAllTypes BiologicallyDerivedProduct = FHIRAllTypes._(
    'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final FHIRAllTypes BodyStructure = FHIRAllTypes._(
    'BodyStructure',
  );

  /// CapabilityStatement
  static final FHIRAllTypes CapabilityStatement = FHIRAllTypes._(
    'CapabilityStatement',
  );

  /// CarePlan
  static final FHIRAllTypes CarePlan = FHIRAllTypes._(
    'CarePlan',
  );

  /// CareTeam
  static final FHIRAllTypes CareTeam = FHIRAllTypes._(
    'CareTeam',
  );

  /// CatalogEntry
  static final FHIRAllTypes CatalogEntry = FHIRAllTypes._(
    'CatalogEntry',
  );

  /// ChargeItem
  static final FHIRAllTypes ChargeItem = FHIRAllTypes._(
    'ChargeItem',
  );

  /// ChargeItemDefinition
  static final FHIRAllTypes ChargeItemDefinition = FHIRAllTypes._(
    'ChargeItemDefinition',
  );

  /// Citation
  static final FHIRAllTypes Citation = FHIRAllTypes._(
    'Citation',
  );

  /// Claim
  static final FHIRAllTypes Claim = FHIRAllTypes._(
    'Claim',
  );

  /// ClaimResponse
  static final FHIRAllTypes ClaimResponse = FHIRAllTypes._(
    'ClaimResponse',
  );

  /// ClinicalImpression
  static final FHIRAllTypes ClinicalImpression = FHIRAllTypes._(
    'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final FHIRAllTypes ClinicalUseDefinition = FHIRAllTypes._(
    'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final FHIRAllTypes CodeSystem = FHIRAllTypes._(
    'CodeSystem',
  );

  /// Communication
  static final FHIRAllTypes Communication = FHIRAllTypes._(
    'Communication',
  );

  /// CommunicationRequest
  static final FHIRAllTypes CommunicationRequest = FHIRAllTypes._(
    'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final FHIRAllTypes CompartmentDefinition = FHIRAllTypes._(
    'CompartmentDefinition',
  );

  /// Composition
  static final FHIRAllTypes Composition = FHIRAllTypes._(
    'Composition',
  );

  /// ConceptMap
  static final FHIRAllTypes ConceptMap = FHIRAllTypes._(
    'ConceptMap',
  );

  /// Condition
  static final FHIRAllTypes Condition = FHIRAllTypes._(
    'Condition',
  );

  /// Consent
  static final FHIRAllTypes Consent = FHIRAllTypes._(
    'Consent',
  );

  /// Contract
  static final FHIRAllTypes Contract = FHIRAllTypes._(
    'Contract',
  );

  /// Coverage
  static final FHIRAllTypes Coverage = FHIRAllTypes._(
    'Coverage',
  );

  /// CoverageEligibilityRequest
  static final FHIRAllTypes CoverageEligibilityRequest = FHIRAllTypes._(
    'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final FHIRAllTypes CoverageEligibilityResponse = FHIRAllTypes._(
    'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final FHIRAllTypes DetectedIssue = FHIRAllTypes._(
    'DetectedIssue',
  );

  /// Device
  static final FHIRAllTypes Device = FHIRAllTypes._(
    'Device',
  );

  /// DeviceDefinition
  static final FHIRAllTypes DeviceDefinition = FHIRAllTypes._(
    'DeviceDefinition',
  );

  /// DeviceMetric
  static final FHIRAllTypes DeviceMetric = FHIRAllTypes._(
    'DeviceMetric',
  );

  /// DeviceRequest
  static final FHIRAllTypes DeviceRequest = FHIRAllTypes._(
    'DeviceRequest',
  );

  /// DeviceUseStatement
  static final FHIRAllTypes DeviceUseStatement = FHIRAllTypes._(
    'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final FHIRAllTypes DiagnosticReport = FHIRAllTypes._(
    'DiagnosticReport',
  );

  /// DocumentManifest
  static final FHIRAllTypes DocumentManifest = FHIRAllTypes._(
    'DocumentManifest',
  );

  /// DocumentReference
  static final FHIRAllTypes DocumentReference = FHIRAllTypes._(
    'DocumentReference',
  );

  /// Encounter
  static final FHIRAllTypes Encounter = FHIRAllTypes._(
    'Encounter',
  );

  /// Endpoint
  static final FHIRAllTypes Endpoint = FHIRAllTypes._(
    'Endpoint',
  );

  /// EnrollmentRequest
  static final FHIRAllTypes EnrollmentRequest = FHIRAllTypes._(
    'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final FHIRAllTypes EnrollmentResponse = FHIRAllTypes._(
    'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final FHIRAllTypes EpisodeOfCare = FHIRAllTypes._(
    'EpisodeOfCare',
  );

  /// EventDefinition
  static final FHIRAllTypes EventDefinition = FHIRAllTypes._(
    'EventDefinition',
  );

  /// Evidence
  static final FHIRAllTypes Evidence = FHIRAllTypes._(
    'Evidence',
  );

  /// EvidenceReport
  static final FHIRAllTypes EvidenceReport = FHIRAllTypes._(
    'EvidenceReport',
  );

  /// EvidenceVariable
  static final FHIRAllTypes EvidenceVariable = FHIRAllTypes._(
    'EvidenceVariable',
  );

  /// ExampleScenario
  static final FHIRAllTypes ExampleScenario = FHIRAllTypes._(
    'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final FHIRAllTypes ExplanationOfBenefit = FHIRAllTypes._(
    'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final FHIRAllTypes FamilyMemberHistory = FHIRAllTypes._(
    'FamilyMemberHistory',
  );

  /// Flag
  static final FHIRAllTypes Flag = FHIRAllTypes._(
    'Flag',
  );

  /// Goal
  static final FHIRAllTypes Goal = FHIRAllTypes._(
    'Goal',
  );

  /// GraphDefinition
  static final FHIRAllTypes GraphDefinition = FHIRAllTypes._(
    'GraphDefinition',
  );

  /// Group
  static final FHIRAllTypes Group = FHIRAllTypes._(
    'Group',
  );

  /// GuidanceResponse
  static final FHIRAllTypes GuidanceResponse = FHIRAllTypes._(
    'GuidanceResponse',
  );

  /// HealthcareService
  static final FHIRAllTypes HealthcareService = FHIRAllTypes._(
    'HealthcareService',
  );

  /// ImagingStudy
  static final FHIRAllTypes ImagingStudy = FHIRAllTypes._(
    'ImagingStudy',
  );

  /// Immunization
  static final FHIRAllTypes Immunization = FHIRAllTypes._(
    'Immunization',
  );

  /// ImmunizationEvaluation
  static final FHIRAllTypes ImmunizationEvaluation = FHIRAllTypes._(
    'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final FHIRAllTypes ImmunizationRecommendation = FHIRAllTypes._(
    'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final FHIRAllTypes ImplementationGuide = FHIRAllTypes._(
    'ImplementationGuide',
  );

  /// Ingredient
  static final FHIRAllTypes Ingredient = FHIRAllTypes._(
    'Ingredient',
  );

  /// InsurancePlan
  static final FHIRAllTypes InsurancePlan = FHIRAllTypes._(
    'InsurancePlan',
  );

  /// Invoice
  static final FHIRAllTypes Invoice = FHIRAllTypes._(
    'Invoice',
  );

  /// Library
  static final FHIRAllTypes Library = FHIRAllTypes._(
    'Library',
  );

  /// Linkage
  static final FHIRAllTypes Linkage = FHIRAllTypes._(
    'Linkage',
  );

  /// List_
  static final FHIRAllTypes List_ = FHIRAllTypes._(
    'List',
  );

  /// Location
  static final FHIRAllTypes Location = FHIRAllTypes._(
    'Location',
  );

  /// ManufacturedItemDefinition
  static final FHIRAllTypes ManufacturedItemDefinition = FHIRAllTypes._(
    'ManufacturedItemDefinition',
  );

  /// Measure
  static final FHIRAllTypes Measure = FHIRAllTypes._(
    'Measure',
  );

  /// MeasureReport
  static final FHIRAllTypes MeasureReport = FHIRAllTypes._(
    'MeasureReport',
  );

  /// Media
  static final FHIRAllTypes Media = FHIRAllTypes._(
    'Media',
  );

  /// Medication
  static final FHIRAllTypes Medication = FHIRAllTypes._(
    'Medication',
  );

  /// MedicationAdministration
  static final FHIRAllTypes MedicationAdministration = FHIRAllTypes._(
    'MedicationAdministration',
  );

  /// MedicationDispense
  static final FHIRAllTypes MedicationDispense = FHIRAllTypes._(
    'MedicationDispense',
  );

  /// MedicationKnowledge
  static final FHIRAllTypes MedicationKnowledge = FHIRAllTypes._(
    'MedicationKnowledge',
  );

  /// MedicationRequest
  static final FHIRAllTypes MedicationRequest = FHIRAllTypes._(
    'MedicationRequest',
  );

  /// MedicationStatement
  static final FHIRAllTypes MedicationStatement = FHIRAllTypes._(
    'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final FHIRAllTypes MedicinalProductDefinition = FHIRAllTypes._(
    'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final FHIRAllTypes MessageDefinition = FHIRAllTypes._(
    'MessageDefinition',
  );

  /// MessageHeader
  static final FHIRAllTypes MessageHeader = FHIRAllTypes._(
    'MessageHeader',
  );

  /// MolecularSequence
  static final FHIRAllTypes MolecularSequence = FHIRAllTypes._(
    'MolecularSequence',
  );

  /// NamingSystem
  static final FHIRAllTypes NamingSystem = FHIRAllTypes._(
    'NamingSystem',
  );

  /// NutritionOrder
  static final FHIRAllTypes NutritionOrder = FHIRAllTypes._(
    'NutritionOrder',
  );

  /// NutritionProduct
  static final FHIRAllTypes NutritionProduct = FHIRAllTypes._(
    'NutritionProduct',
  );

  /// Observation
  static final FHIRAllTypes Observation = FHIRAllTypes._(
    'Observation',
  );

  /// ObservationDefinition
  static final FHIRAllTypes ObservationDefinition = FHIRAllTypes._(
    'ObservationDefinition',
  );

  /// OperationDefinition
  static final FHIRAllTypes OperationDefinition = FHIRAllTypes._(
    'OperationDefinition',
  );

  /// OperationOutcome
  static final FHIRAllTypes OperationOutcome = FHIRAllTypes._(
    'OperationOutcome',
  );

  /// Organization
  static final FHIRAllTypes Organization = FHIRAllTypes._(
    'Organization',
  );

  /// OrganizationAffiliation
  static final FHIRAllTypes OrganizationAffiliation = FHIRAllTypes._(
    'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final FHIRAllTypes PackagedProductDefinition = FHIRAllTypes._(
    'PackagedProductDefinition',
  );

  /// Patient
  static final FHIRAllTypes Patient = FHIRAllTypes._(
    'Patient',
  );

  /// PaymentNotice
  static final FHIRAllTypes PaymentNotice = FHIRAllTypes._(
    'PaymentNotice',
  );

  /// PaymentReconciliation
  static final FHIRAllTypes PaymentReconciliation = FHIRAllTypes._(
    'PaymentReconciliation',
  );

  /// Person
  static final FHIRAllTypes Person = FHIRAllTypes._(
    'Person',
  );

  /// PlanDefinition
  static final FHIRAllTypes PlanDefinition = FHIRAllTypes._(
    'PlanDefinition',
  );

  /// Practitioner
  static final FHIRAllTypes Practitioner = FHIRAllTypes._(
    'Practitioner',
  );

  /// PractitionerRole
  static final FHIRAllTypes PractitionerRole = FHIRAllTypes._(
    'PractitionerRole',
  );

  /// Procedure
  static final FHIRAllTypes Procedure = FHIRAllTypes._(
    'Procedure',
  );

  /// Provenance
  static final FHIRAllTypes Provenance = FHIRAllTypes._(
    'Provenance',
  );

  /// Questionnaire
  static final FHIRAllTypes Questionnaire = FHIRAllTypes._(
    'Questionnaire',
  );

  /// QuestionnaireResponse
  static final FHIRAllTypes QuestionnaireResponse = FHIRAllTypes._(
    'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final FHIRAllTypes RegulatedAuthorization = FHIRAllTypes._(
    'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final FHIRAllTypes RelatedPerson = FHIRAllTypes._(
    'RelatedPerson',
  );

  /// RequestGroup
  static final FHIRAllTypes RequestGroup = FHIRAllTypes._(
    'RequestGroup',
  );

  /// ResearchDefinition
  static final FHIRAllTypes ResearchDefinition = FHIRAllTypes._(
    'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final FHIRAllTypes ResearchElementDefinition = FHIRAllTypes._(
    'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final FHIRAllTypes ResearchStudy = FHIRAllTypes._(
    'ResearchStudy',
  );

  /// ResearchSubject
  static final FHIRAllTypes ResearchSubject = FHIRAllTypes._(
    'ResearchSubject',
  );

  /// RiskAssessment
  static final FHIRAllTypes RiskAssessment = FHIRAllTypes._(
    'RiskAssessment',
  );

  /// Schedule
  static final FHIRAllTypes Schedule = FHIRAllTypes._(
    'Schedule',
  );

  /// SearchParameter
  static final FHIRAllTypes SearchParameter = FHIRAllTypes._(
    'SearchParameter',
  );

  /// ServiceRequest
  static final FHIRAllTypes ServiceRequest = FHIRAllTypes._(
    'ServiceRequest',
  );

  /// Slot
  static final FHIRAllTypes Slot = FHIRAllTypes._(
    'Slot',
  );

  /// Specimen
  static final FHIRAllTypes Specimen = FHIRAllTypes._(
    'Specimen',
  );

  /// SpecimenDefinition
  static final FHIRAllTypes SpecimenDefinition = FHIRAllTypes._(
    'SpecimenDefinition',
  );

  /// StructureDefinition
  static final FHIRAllTypes StructureDefinition = FHIRAllTypes._(
    'StructureDefinition',
  );

  /// StructureMap
  static final FHIRAllTypes StructureMap = FHIRAllTypes._(
    'StructureMap',
  );

  /// Subscription
  static final FHIRAllTypes Subscription = FHIRAllTypes._(
    'Subscription',
  );

  /// SubscriptionStatus
  static final FHIRAllTypes SubscriptionStatus = FHIRAllTypes._(
    'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final FHIRAllTypes SubscriptionTopic = FHIRAllTypes._(
    'SubscriptionTopic',
  );

  /// Substance
  static final FHIRAllTypes Substance = FHIRAllTypes._(
    'Substance',
  );

  /// SubstanceDefinition
  static final FHIRAllTypes SubstanceDefinition = FHIRAllTypes._(
    'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final FHIRAllTypes SupplyDelivery = FHIRAllTypes._(
    'SupplyDelivery',
  );

  /// SupplyRequest
  static final FHIRAllTypes SupplyRequest = FHIRAllTypes._(
    'SupplyRequest',
  );

  /// Task
  static final FHIRAllTypes Task = FHIRAllTypes._(
    'Task',
  );

  /// TerminologyCapabilities
  static final FHIRAllTypes TerminologyCapabilities = FHIRAllTypes._(
    'TerminologyCapabilities',
  );

  /// TestReport
  static final FHIRAllTypes TestReport = FHIRAllTypes._(
    'TestReport',
  );

  /// TestScript
  static final FHIRAllTypes TestScript = FHIRAllTypes._(
    'TestScript',
  );

  /// ValueSet
  static final FHIRAllTypes ValueSet = FHIRAllTypes._(
    'ValueSet',
  );

  /// VerificationResult
  static final FHIRAllTypes VerificationResult = FHIRAllTypes._(
    'VerificationResult',
  );

  /// VisionPrescription
  static final FHIRAllTypes VisionPrescription = FHIRAllTypes._(
    'VisionPrescription',
  );

  /// Parameters
  static final FHIRAllTypes Parameters = FHIRAllTypes._(
    'Parameters',
  );

  /// Type
  static final FHIRAllTypes Type = FHIRAllTypes._(
    'Type',
  );

  /// Any
  static final FHIRAllTypes Any = FHIRAllTypes._(
    'Any',
  );

  /// For instances where an Element is present but not value

  static final FHIRAllTypes elementOnly = FHIRAllTypes._('');

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

  /// Clones the current instance
  @override
  FHIRAllTypes clone() => FHIRAllTypes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(
      value,
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
  FHIRAllTypes copyWith({
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
    return FHIRAllTypes._(
      newValue ?? value,
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
