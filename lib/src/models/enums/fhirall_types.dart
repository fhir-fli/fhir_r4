// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A list of all the concrete types defined in this version of the FHIR specification - Abstract Types, Data Types and Resource Types.
class FHIRAllTypes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FHIRAllTypes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
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
    return FHIRAllTypes._(value: value, element: element);
  }

  /// Address
  static final FHIRAllTypes Address = FHIRAllTypes._(
    value: 'Address',
  );

  /// Age
  static final FHIRAllTypes Age = FHIRAllTypes._(
    value: 'Age',
  );

  /// Annotation
  static final FHIRAllTypes Annotation = FHIRAllTypes._(
    value: 'Annotation',
  );

  /// Attachment
  static final FHIRAllTypes Attachment = FHIRAllTypes._(
    value: 'Attachment',
  );

  /// BackboneElement
  static final FHIRAllTypes BackboneElement = FHIRAllTypes._(
    value: 'BackboneElement',
  );

  /// CodeableConcept
  static final FHIRAllTypes CodeableConcept = FHIRAllTypes._(
    value: 'CodeableConcept',
  );

  /// CodeableReference
  static final FHIRAllTypes CodeableReference = FHIRAllTypes._(
    value: 'CodeableReference',
  );

  /// Coding
  static final FHIRAllTypes Coding = FHIRAllTypes._(
    value: 'Coding',
  );

  /// ContactDetail
  static final FHIRAllTypes ContactDetail = FHIRAllTypes._(
    value: 'ContactDetail',
  );

  /// ContactPoint
  static final FHIRAllTypes ContactPoint = FHIRAllTypes._(
    value: 'ContactPoint',
  );

  /// Contributor
  static final FHIRAllTypes Contributor = FHIRAllTypes._(
    value: 'Contributor',
  );

  /// Count
  static final FHIRAllTypes Count = FHIRAllTypes._(
    value: 'Count',
  );

  /// DataRequirement
  static final FHIRAllTypes DataRequirement = FHIRAllTypes._(
    value: 'DataRequirement',
  );

  /// Distance
  static final FHIRAllTypes Distance = FHIRAllTypes._(
    value: 'Distance',
  );

  /// Dosage
  static final FHIRAllTypes Dosage = FHIRAllTypes._(
    value: 'Dosage',
  );

  /// Duration
  static final FHIRAllTypes Duration = FHIRAllTypes._(
    value: 'Duration',
  );

  /// Element_
  static final FHIRAllTypes Element_ = FHIRAllTypes._(
    value: 'Element',
  );

  /// ElementDefinition
  static final FHIRAllTypes ElementDefinition = FHIRAllTypes._(
    value: 'ElementDefinition',
  );

  /// Expression
  static final FHIRAllTypes Expression = FHIRAllTypes._(
    value: 'Expression',
  );

  /// Extension
  static final FHIRAllTypes Extension = FHIRAllTypes._(
    value: 'Extension',
  );

  /// HumanName
  static final FHIRAllTypes HumanName = FHIRAllTypes._(
    value: 'HumanName',
  );

  /// Identifier
  static final FHIRAllTypes Identifier = FHIRAllTypes._(
    value: 'Identifier',
  );

  /// MarketingStatus
  static final FHIRAllTypes MarketingStatus = FHIRAllTypes._(
    value: 'MarketingStatus',
  );

  /// Meta
  static final FHIRAllTypes Meta = FHIRAllTypes._(
    value: 'Meta',
  );

  /// Money
  static final FHIRAllTypes Money = FHIRAllTypes._(
    value: 'Money',
  );

  /// MoneyQuantity
  static final FHIRAllTypes MoneyQuantity = FHIRAllTypes._(
    value: 'MoneyQuantity',
  );

  /// Narrative
  static final FHIRAllTypes Narrative = FHIRAllTypes._(
    value: 'Narrative',
  );

  /// ParameterDefinition
  static final FHIRAllTypes ParameterDefinition = FHIRAllTypes._(
    value: 'ParameterDefinition',
  );

  /// Period
  static final FHIRAllTypes Period = FHIRAllTypes._(
    value: 'Period',
  );

  /// Population
  static final FHIRAllTypes Population = FHIRAllTypes._(
    value: 'Population',
  );

  /// ProdCharacteristic
  static final FHIRAllTypes ProdCharacteristic = FHIRAllTypes._(
    value: 'ProdCharacteristic',
  );

  /// ProductShelfLife
  static final FHIRAllTypes ProductShelfLife = FHIRAllTypes._(
    value: 'ProductShelfLife',
  );

  /// Quantity
  static final FHIRAllTypes Quantity = FHIRAllTypes._(
    value: 'Quantity',
  );

  /// Range
  static final FHIRAllTypes Range = FHIRAllTypes._(
    value: 'Range',
  );

  /// Ratio
  static final FHIRAllTypes Ratio = FHIRAllTypes._(
    value: 'Ratio',
  );

  /// RatioRange
  static final FHIRAllTypes RatioRange = FHIRAllTypes._(
    value: 'RatioRange',
  );

  /// Reference
  static final FHIRAllTypes Reference = FHIRAllTypes._(
    value: 'Reference',
  );

  /// RelatedArtifact
  static final FHIRAllTypes RelatedArtifact = FHIRAllTypes._(
    value: 'RelatedArtifact',
  );

  /// SampledData
  static final FHIRAllTypes SampledData = FHIRAllTypes._(
    value: 'SampledData',
  );

  /// Signature
  static final FHIRAllTypes Signature = FHIRAllTypes._(
    value: 'Signature',
  );

  /// SimpleQuantity
  static final FHIRAllTypes SimpleQuantity = FHIRAllTypes._(
    value: 'SimpleQuantity',
  );

  /// Timing
  static final FHIRAllTypes Timing = FHIRAllTypes._(
    value: 'Timing',
  );

  /// TriggerDefinition
  static final FHIRAllTypes TriggerDefinition = FHIRAllTypes._(
    value: 'TriggerDefinition',
  );

  /// UsageContext
  static final FHIRAllTypes UsageContext = FHIRAllTypes._(
    value: 'UsageContext',
  );

  /// base64Binary
  static final FHIRAllTypes base64Binary = FHIRAllTypes._(
    value: 'base64Binary',
  );

  /// boolean
  static final FHIRAllTypes boolean = FHIRAllTypes._(
    value: 'boolean',
  );

  /// canonical
  static final FHIRAllTypes canonical = FHIRAllTypes._(
    value: 'canonical',
  );

  /// code
  static final FHIRAllTypes code = FHIRAllTypes._(
    value: 'code',
  );

  /// date
  static final FHIRAllTypes date = FHIRAllTypes._(
    value: 'date',
  );

  /// dateTime
  static final FHIRAllTypes dateTime = FHIRAllTypes._(
    value: 'dateTime',
  );

  /// decimal
  static final FHIRAllTypes decimal = FHIRAllTypes._(
    value: 'decimal',
  );

  /// id
  static final FHIRAllTypes id_ = FHIRAllTypes._(
    value: 'id',
  );

  /// instant
  static final FHIRAllTypes instant = FHIRAllTypes._(
    value: 'instant',
  );

  /// integer
  static final FHIRAllTypes integer = FHIRAllTypes._(
    value: 'integer',
  );

  /// markdown
  static final FHIRAllTypes markdown = FHIRAllTypes._(
    value: 'markdown',
  );

  /// oid
  static final FHIRAllTypes oid = FHIRAllTypes._(
    value: 'oid',
  );

  /// positiveInt
  static final FHIRAllTypes positiveInt = FHIRAllTypes._(
    value: 'positiveInt',
  );

  /// string
  static final FHIRAllTypes string = FHIRAllTypes._(
    value: 'string',
  );

  /// time
  static final FHIRAllTypes time = FHIRAllTypes._(
    value: 'time',
  );

  /// unsignedInt
  static final FHIRAllTypes unsignedInt = FHIRAllTypes._(
    value: 'unsignedInt',
  );

  /// uri
  static final FHIRAllTypes uri = FHIRAllTypes._(
    value: 'uri',
  );

  /// url
  static final FHIRAllTypes url = FHIRAllTypes._(
    value: 'url',
  );

  /// uuid
  static final FHIRAllTypes uuid = FHIRAllTypes._(
    value: 'uuid',
  );

  /// xhtml
  static final FHIRAllTypes xhtml = FHIRAllTypes._(
    value: 'xhtml',
  );

  /// Resource
  static final FHIRAllTypes Resource = FHIRAllTypes._(
    value: 'Resource',
  );

  /// Binary
  static final FHIRAllTypes Binary = FHIRAllTypes._(
    value: 'Binary',
  );

  /// Bundle
  static final FHIRAllTypes Bundle = FHIRAllTypes._(
    value: 'Bundle',
  );

  /// DomainResource
  static final FHIRAllTypes DomainResource = FHIRAllTypes._(
    value: 'DomainResource',
  );

  /// Account
  static final FHIRAllTypes Account = FHIRAllTypes._(
    value: 'Account',
  );

  /// ActivityDefinition
  static final FHIRAllTypes ActivityDefinition = FHIRAllTypes._(
    value: 'ActivityDefinition',
  );

  /// AdministrableProductDefinition
  static final FHIRAllTypes AdministrableProductDefinition = FHIRAllTypes._(
    value: 'AdministrableProductDefinition',
  );

  /// AdverseEvent
  static final FHIRAllTypes AdverseEvent = FHIRAllTypes._(
    value: 'AdverseEvent',
  );

  /// AllergyIntolerance
  static final FHIRAllTypes AllergyIntolerance = FHIRAllTypes._(
    value: 'AllergyIntolerance',
  );

  /// Appointment
  static final FHIRAllTypes Appointment = FHIRAllTypes._(
    value: 'Appointment',
  );

  /// AppointmentResponse
  static final FHIRAllTypes AppointmentResponse = FHIRAllTypes._(
    value: 'AppointmentResponse',
  );

  /// AuditEvent
  static final FHIRAllTypes AuditEvent = FHIRAllTypes._(
    value: 'AuditEvent',
  );

  /// Basic
  static final FHIRAllTypes Basic = FHIRAllTypes._(
    value: 'Basic',
  );

  /// BiologicallyDerivedProduct
  static final FHIRAllTypes BiologicallyDerivedProduct = FHIRAllTypes._(
    value: 'BiologicallyDerivedProduct',
  );

  /// BodyStructure
  static final FHIRAllTypes BodyStructure = FHIRAllTypes._(
    value: 'BodyStructure',
  );

  /// CapabilityStatement
  static final FHIRAllTypes CapabilityStatement = FHIRAllTypes._(
    value: 'CapabilityStatement',
  );

  /// CarePlan
  static final FHIRAllTypes CarePlan = FHIRAllTypes._(
    value: 'CarePlan',
  );

  /// CareTeam
  static final FHIRAllTypes CareTeam = FHIRAllTypes._(
    value: 'CareTeam',
  );

  /// CatalogEntry
  static final FHIRAllTypes CatalogEntry = FHIRAllTypes._(
    value: 'CatalogEntry',
  );

  /// ChargeItem
  static final FHIRAllTypes ChargeItem = FHIRAllTypes._(
    value: 'ChargeItem',
  );

  /// ChargeItemDefinition
  static final FHIRAllTypes ChargeItemDefinition = FHIRAllTypes._(
    value: 'ChargeItemDefinition',
  );

  /// Citation
  static final FHIRAllTypes Citation = FHIRAllTypes._(
    value: 'Citation',
  );

  /// Claim
  static final FHIRAllTypes Claim = FHIRAllTypes._(
    value: 'Claim',
  );

  /// ClaimResponse
  static final FHIRAllTypes ClaimResponse = FHIRAllTypes._(
    value: 'ClaimResponse',
  );

  /// ClinicalImpression
  static final FHIRAllTypes ClinicalImpression = FHIRAllTypes._(
    value: 'ClinicalImpression',
  );

  /// ClinicalUseDefinition
  static final FHIRAllTypes ClinicalUseDefinition = FHIRAllTypes._(
    value: 'ClinicalUseDefinition',
  );

  /// CodeSystem
  static final FHIRAllTypes CodeSystem = FHIRAllTypes._(
    value: 'CodeSystem',
  );

  /// Communication
  static final FHIRAllTypes Communication = FHIRAllTypes._(
    value: 'Communication',
  );

  /// CommunicationRequest
  static final FHIRAllTypes CommunicationRequest = FHIRAllTypes._(
    value: 'CommunicationRequest',
  );

  /// CompartmentDefinition
  static final FHIRAllTypes CompartmentDefinition = FHIRAllTypes._(
    value: 'CompartmentDefinition',
  );

  /// Composition
  static final FHIRAllTypes Composition = FHIRAllTypes._(
    value: 'Composition',
  );

  /// ConceptMap
  static final FHIRAllTypes ConceptMap = FHIRAllTypes._(
    value: 'ConceptMap',
  );

  /// Condition
  static final FHIRAllTypes Condition = FHIRAllTypes._(
    value: 'Condition',
  );

  /// Consent
  static final FHIRAllTypes Consent = FHIRAllTypes._(
    value: 'Consent',
  );

  /// Contract
  static final FHIRAllTypes Contract = FHIRAllTypes._(
    value: 'Contract',
  );

  /// Coverage
  static final FHIRAllTypes Coverage = FHIRAllTypes._(
    value: 'Coverage',
  );

  /// CoverageEligibilityRequest
  static final FHIRAllTypes CoverageEligibilityRequest = FHIRAllTypes._(
    value: 'CoverageEligibilityRequest',
  );

  /// CoverageEligibilityResponse
  static final FHIRAllTypes CoverageEligibilityResponse = FHIRAllTypes._(
    value: 'CoverageEligibilityResponse',
  );

  /// DetectedIssue
  static final FHIRAllTypes DetectedIssue = FHIRAllTypes._(
    value: 'DetectedIssue',
  );

  /// Device
  static final FHIRAllTypes Device = FHIRAllTypes._(
    value: 'Device',
  );

  /// DeviceDefinition
  static final FHIRAllTypes DeviceDefinition = FHIRAllTypes._(
    value: 'DeviceDefinition',
  );

  /// DeviceMetric
  static final FHIRAllTypes DeviceMetric = FHIRAllTypes._(
    value: 'DeviceMetric',
  );

  /// DeviceRequest
  static final FHIRAllTypes DeviceRequest = FHIRAllTypes._(
    value: 'DeviceRequest',
  );

  /// DeviceUseStatement
  static final FHIRAllTypes DeviceUseStatement = FHIRAllTypes._(
    value: 'DeviceUseStatement',
  );

  /// DiagnosticReport
  static final FHIRAllTypes DiagnosticReport = FHIRAllTypes._(
    value: 'DiagnosticReport',
  );

  /// DocumentManifest
  static final FHIRAllTypes DocumentManifest = FHIRAllTypes._(
    value: 'DocumentManifest',
  );

  /// DocumentReference
  static final FHIRAllTypes DocumentReference = FHIRAllTypes._(
    value: 'DocumentReference',
  );

  /// Encounter
  static final FHIRAllTypes Encounter = FHIRAllTypes._(
    value: 'Encounter',
  );

  /// Endpoint
  static final FHIRAllTypes Endpoint = FHIRAllTypes._(
    value: 'Endpoint',
  );

  /// EnrollmentRequest
  static final FHIRAllTypes EnrollmentRequest = FHIRAllTypes._(
    value: 'EnrollmentRequest',
  );

  /// EnrollmentResponse
  static final FHIRAllTypes EnrollmentResponse = FHIRAllTypes._(
    value: 'EnrollmentResponse',
  );

  /// EpisodeOfCare
  static final FHIRAllTypes EpisodeOfCare = FHIRAllTypes._(
    value: 'EpisodeOfCare',
  );

  /// EventDefinition
  static final FHIRAllTypes EventDefinition = FHIRAllTypes._(
    value: 'EventDefinition',
  );

  /// Evidence
  static final FHIRAllTypes Evidence = FHIRAllTypes._(
    value: 'Evidence',
  );

  /// EvidenceReport
  static final FHIRAllTypes EvidenceReport = FHIRAllTypes._(
    value: 'EvidenceReport',
  );

  /// EvidenceVariable
  static final FHIRAllTypes EvidenceVariable = FHIRAllTypes._(
    value: 'EvidenceVariable',
  );

  /// ExampleScenario
  static final FHIRAllTypes ExampleScenario = FHIRAllTypes._(
    value: 'ExampleScenario',
  );

  /// ExplanationOfBenefit
  static final FHIRAllTypes ExplanationOfBenefit = FHIRAllTypes._(
    value: 'ExplanationOfBenefit',
  );

  /// FamilyMemberHistory
  static final FHIRAllTypes FamilyMemberHistory = FHIRAllTypes._(
    value: 'FamilyMemberHistory',
  );

  /// Flag
  static final FHIRAllTypes Flag = FHIRAllTypes._(
    value: 'Flag',
  );

  /// Goal
  static final FHIRAllTypes Goal = FHIRAllTypes._(
    value: 'Goal',
  );

  /// GraphDefinition
  static final FHIRAllTypes GraphDefinition = FHIRAllTypes._(
    value: 'GraphDefinition',
  );

  /// Group
  static final FHIRAllTypes Group = FHIRAllTypes._(
    value: 'Group',
  );

  /// GuidanceResponse
  static final FHIRAllTypes GuidanceResponse = FHIRAllTypes._(
    value: 'GuidanceResponse',
  );

  /// HealthcareService
  static final FHIRAllTypes HealthcareService = FHIRAllTypes._(
    value: 'HealthcareService',
  );

  /// ImagingStudy
  static final FHIRAllTypes ImagingStudy = FHIRAllTypes._(
    value: 'ImagingStudy',
  );

  /// Immunization
  static final FHIRAllTypes Immunization = FHIRAllTypes._(
    value: 'Immunization',
  );

  /// ImmunizationEvaluation
  static final FHIRAllTypes ImmunizationEvaluation = FHIRAllTypes._(
    value: 'ImmunizationEvaluation',
  );

  /// ImmunizationRecommendation
  static final FHIRAllTypes ImmunizationRecommendation = FHIRAllTypes._(
    value: 'ImmunizationRecommendation',
  );

  /// ImplementationGuide
  static final FHIRAllTypes ImplementationGuide = FHIRAllTypes._(
    value: 'ImplementationGuide',
  );

  /// Ingredient
  static final FHIRAllTypes Ingredient = FHIRAllTypes._(
    value: 'Ingredient',
  );

  /// InsurancePlan
  static final FHIRAllTypes InsurancePlan = FHIRAllTypes._(
    value: 'InsurancePlan',
  );

  /// Invoice
  static final FHIRAllTypes Invoice = FHIRAllTypes._(
    value: 'Invoice',
  );

  /// Library
  static final FHIRAllTypes Library = FHIRAllTypes._(
    value: 'Library',
  );

  /// Linkage
  static final FHIRAllTypes Linkage = FHIRAllTypes._(
    value: 'Linkage',
  );

  /// List_
  static final FHIRAllTypes List_ = FHIRAllTypes._(
    value: 'List',
  );

  /// Location
  static final FHIRAllTypes Location = FHIRAllTypes._(
    value: 'Location',
  );

  /// ManufacturedItemDefinition
  static final FHIRAllTypes ManufacturedItemDefinition = FHIRAllTypes._(
    value: 'ManufacturedItemDefinition',
  );

  /// Measure
  static final FHIRAllTypes Measure = FHIRAllTypes._(
    value: 'Measure',
  );

  /// MeasureReport
  static final FHIRAllTypes MeasureReport = FHIRAllTypes._(
    value: 'MeasureReport',
  );

  /// Media
  static final FHIRAllTypes Media = FHIRAllTypes._(
    value: 'Media',
  );

  /// Medication
  static final FHIRAllTypes Medication = FHIRAllTypes._(
    value: 'Medication',
  );

  /// MedicationAdministration
  static final FHIRAllTypes MedicationAdministration = FHIRAllTypes._(
    value: 'MedicationAdministration',
  );

  /// MedicationDispense
  static final FHIRAllTypes MedicationDispense = FHIRAllTypes._(
    value: 'MedicationDispense',
  );

  /// MedicationKnowledge
  static final FHIRAllTypes MedicationKnowledge = FHIRAllTypes._(
    value: 'MedicationKnowledge',
  );

  /// MedicationRequest
  static final FHIRAllTypes MedicationRequest = FHIRAllTypes._(
    value: 'MedicationRequest',
  );

  /// MedicationStatement
  static final FHIRAllTypes MedicationStatement = FHIRAllTypes._(
    value: 'MedicationStatement',
  );

  /// MedicinalProductDefinition
  static final FHIRAllTypes MedicinalProductDefinition = FHIRAllTypes._(
    value: 'MedicinalProductDefinition',
  );

  /// MessageDefinition
  static final FHIRAllTypes MessageDefinition = FHIRAllTypes._(
    value: 'MessageDefinition',
  );

  /// MessageHeader
  static final FHIRAllTypes MessageHeader = FHIRAllTypes._(
    value: 'MessageHeader',
  );

  /// MolecularSequence
  static final FHIRAllTypes MolecularSequence = FHIRAllTypes._(
    value: 'MolecularSequence',
  );

  /// NamingSystem
  static final FHIRAllTypes NamingSystem = FHIRAllTypes._(
    value: 'NamingSystem',
  );

  /// NutritionOrder
  static final FHIRAllTypes NutritionOrder = FHIRAllTypes._(
    value: 'NutritionOrder',
  );

  /// NutritionProduct
  static final FHIRAllTypes NutritionProduct = FHIRAllTypes._(
    value: 'NutritionProduct',
  );

  /// Observation
  static final FHIRAllTypes Observation = FHIRAllTypes._(
    value: 'Observation',
  );

  /// ObservationDefinition
  static final FHIRAllTypes ObservationDefinition = FHIRAllTypes._(
    value: 'ObservationDefinition',
  );

  /// OperationDefinition
  static final FHIRAllTypes OperationDefinition = FHIRAllTypes._(
    value: 'OperationDefinition',
  );

  /// OperationOutcome
  static final FHIRAllTypes OperationOutcome = FHIRAllTypes._(
    value: 'OperationOutcome',
  );

  /// Organization
  static final FHIRAllTypes Organization = FHIRAllTypes._(
    value: 'Organization',
  );

  /// OrganizationAffiliation
  static final FHIRAllTypes OrganizationAffiliation = FHIRAllTypes._(
    value: 'OrganizationAffiliation',
  );

  /// PackagedProductDefinition
  static final FHIRAllTypes PackagedProductDefinition = FHIRAllTypes._(
    value: 'PackagedProductDefinition',
  );

  /// Patient
  static final FHIRAllTypes Patient = FHIRAllTypes._(
    value: 'Patient',
  );

  /// PaymentNotice
  static final FHIRAllTypes PaymentNotice = FHIRAllTypes._(
    value: 'PaymentNotice',
  );

  /// PaymentReconciliation
  static final FHIRAllTypes PaymentReconciliation = FHIRAllTypes._(
    value: 'PaymentReconciliation',
  );

  /// Person
  static final FHIRAllTypes Person = FHIRAllTypes._(
    value: 'Person',
  );

  /// PlanDefinition
  static final FHIRAllTypes PlanDefinition = FHIRAllTypes._(
    value: 'PlanDefinition',
  );

  /// Practitioner
  static final FHIRAllTypes Practitioner = FHIRAllTypes._(
    value: 'Practitioner',
  );

  /// PractitionerRole
  static final FHIRAllTypes PractitionerRole = FHIRAllTypes._(
    value: 'PractitionerRole',
  );

  /// Procedure
  static final FHIRAllTypes Procedure = FHIRAllTypes._(
    value: 'Procedure',
  );

  /// Provenance
  static final FHIRAllTypes Provenance = FHIRAllTypes._(
    value: 'Provenance',
  );

  /// Questionnaire
  static final FHIRAllTypes Questionnaire = FHIRAllTypes._(
    value: 'Questionnaire',
  );

  /// QuestionnaireResponse
  static final FHIRAllTypes QuestionnaireResponse = FHIRAllTypes._(
    value: 'QuestionnaireResponse',
  );

  /// RegulatedAuthorization
  static final FHIRAllTypes RegulatedAuthorization = FHIRAllTypes._(
    value: 'RegulatedAuthorization',
  );

  /// RelatedPerson
  static final FHIRAllTypes RelatedPerson = FHIRAllTypes._(
    value: 'RelatedPerson',
  );

  /// RequestGroup
  static final FHIRAllTypes RequestGroup = FHIRAllTypes._(
    value: 'RequestGroup',
  );

  /// ResearchDefinition
  static final FHIRAllTypes ResearchDefinition = FHIRAllTypes._(
    value: 'ResearchDefinition',
  );

  /// ResearchElementDefinition
  static final FHIRAllTypes ResearchElementDefinition = FHIRAllTypes._(
    value: 'ResearchElementDefinition',
  );

  /// ResearchStudy
  static final FHIRAllTypes ResearchStudy = FHIRAllTypes._(
    value: 'ResearchStudy',
  );

  /// ResearchSubject
  static final FHIRAllTypes ResearchSubject = FHIRAllTypes._(
    value: 'ResearchSubject',
  );

  /// RiskAssessment
  static final FHIRAllTypes RiskAssessment = FHIRAllTypes._(
    value: 'RiskAssessment',
  );

  /// Schedule
  static final FHIRAllTypes Schedule = FHIRAllTypes._(
    value: 'Schedule',
  );

  /// SearchParameter
  static final FHIRAllTypes SearchParameter = FHIRAllTypes._(
    value: 'SearchParameter',
  );

  /// ServiceRequest
  static final FHIRAllTypes ServiceRequest = FHIRAllTypes._(
    value: 'ServiceRequest',
  );

  /// Slot
  static final FHIRAllTypes Slot = FHIRAllTypes._(
    value: 'Slot',
  );

  /// Specimen
  static final FHIRAllTypes Specimen = FHIRAllTypes._(
    value: 'Specimen',
  );

  /// SpecimenDefinition
  static final FHIRAllTypes SpecimenDefinition = FHIRAllTypes._(
    value: 'SpecimenDefinition',
  );

  /// StructureDefinition
  static final FHIRAllTypes StructureDefinition = FHIRAllTypes._(
    value: 'StructureDefinition',
  );

  /// StructureMap
  static final FHIRAllTypes StructureMap = FHIRAllTypes._(
    value: 'StructureMap',
  );

  /// Subscription
  static final FHIRAllTypes Subscription = FHIRAllTypes._(
    value: 'Subscription',
  );

  /// SubscriptionStatus
  static final FHIRAllTypes SubscriptionStatus = FHIRAllTypes._(
    value: 'SubscriptionStatus',
  );

  /// SubscriptionTopic
  static final FHIRAllTypes SubscriptionTopic = FHIRAllTypes._(
    value: 'SubscriptionTopic',
  );

  /// Substance
  static final FHIRAllTypes Substance = FHIRAllTypes._(
    value: 'Substance',
  );

  /// SubstanceDefinition
  static final FHIRAllTypes SubstanceDefinition = FHIRAllTypes._(
    value: 'SubstanceDefinition',
  );

  /// SupplyDelivery
  static final FHIRAllTypes SupplyDelivery = FHIRAllTypes._(
    value: 'SupplyDelivery',
  );

  /// SupplyRequest
  static final FHIRAllTypes SupplyRequest = FHIRAllTypes._(
    value: 'SupplyRequest',
  );

  /// Task
  static final FHIRAllTypes Task = FHIRAllTypes._(
    value: 'Task',
  );

  /// TerminologyCapabilities
  static final FHIRAllTypes TerminologyCapabilities = FHIRAllTypes._(
    value: 'TerminologyCapabilities',
  );

  /// TestReport
  static final FHIRAllTypes TestReport = FHIRAllTypes._(
    value: 'TestReport',
  );

  /// TestScript
  static final FHIRAllTypes TestScript = FHIRAllTypes._(
    value: 'TestScript',
  );

  /// ValueSet
  static final FHIRAllTypes ValueSet = FHIRAllTypes._(
    value: 'ValueSet',
  );

  /// VerificationResult
  static final FHIRAllTypes VerificationResult = FHIRAllTypes._(
    value: 'VerificationResult',
  );

  /// VisionPrescription
  static final FHIRAllTypes VisionPrescription = FHIRAllTypes._(
    value: 'VisionPrescription',
  );

  /// Parameters
  static final FHIRAllTypes Parameters = FHIRAllTypes._(
    value: 'Parameters',
  );

  /// Type
  static final FHIRAllTypes Type = FHIRAllTypes._(
    value: 'Type',
  );

  /// Any
  static final FHIRAllTypes Any = FHIRAllTypes._(
    value: 'Any',
  );

  /// For instances where an Element is present but not value

  static final FHIRAllTypes elementOnly = FHIRAllTypes._(value: '');

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
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRAllTypes withElement(Element? newElement) {
    return FHIRAllTypes._(value: value, element: newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FHIRAllTypes._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
