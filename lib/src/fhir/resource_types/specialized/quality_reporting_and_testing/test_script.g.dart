// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_script.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestScriptImpl _$$TestScriptImplFromJson(Map<String, dynamic> json) =>
    _$TestScriptImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.TestScript) ??
          R4ResourceType.TestScript,
      id: json['id'] as String?,
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['_implicitRules'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_implicitRules'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['_language'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_language'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Narrative.fromJson(json['text'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] == null ? null : FhirUri.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      version: json['version'] as String?,
      versionElement: json['_version'] == null
          ? null
          : PrimitiveElement.fromJson(json['_version'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nameElement: json['_name'] == null
          ? null
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] as String?,
      titleElement: json['_title'] == null
          ? null
          : PrimitiveElement.fromJson(json['_title'] as Map<String, dynamic>),
      status: json['status'] == null ? null : FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : PrimitiveElement.fromJson(json['_status'] as Map<String, dynamic>),
      experimental: json['experimental'] == null
          ? null
          : FhirBoolean.fromJson(json['experimental']),
      experimentalElement: json['_experimental'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_experimental'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : PrimitiveElement.fromJson(json['_date'] as Map<String, dynamic>),
      publisher: json['publisher'] as String?,
      publisherElement: json['_publisher'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_publisher'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      purpose: json['purpose'] == null
          ? null
          : FhirMarkdown.fromJson(json['purpose']),
      purposeElement: json['_purpose'] == null
          ? null
          : PrimitiveElement.fromJson(json['_purpose'] as Map<String, dynamic>),
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_copyright'] as Map<String, dynamic>),
      origin: (json['origin'] as List<dynamic>?)
          ?.map((e) => TestScriptOrigin.fromJson(e as Map<String, dynamic>))
          .toList(),
      destination: (json['destination'] as List<dynamic>?)
          ?.map(
              (e) => TestScriptDestination.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] == null
          ? null
          : TestScriptMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
      fixture: (json['fixture'] as List<dynamic>?)
          ?.map((e) => TestScriptFixture.fromJson(e as Map<String, dynamic>))
          .toList(),
      profile: (json['profile'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) => TestScriptVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      setup: json['setup'] == null
          ? null
          : TestScriptSetup.fromJson(json['setup'] as Map<String, dynamic>),
      test: (json['test'] as List<dynamic>?)
          ?.map((e) => TestScriptTest.fromJson(e as Map<String, dynamic>))
          .toList(),
      teardown: json['teardown'] == null
          ? null
          : TestScriptTeardown.fromJson(
              json['teardown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptImplToJson(_$TestScriptImpl instance) {
  final val = <String, dynamic>{
    'resourceType': instance.resourceType.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules?.toJson());
  writeNotNull('_implicitRules', instance.implicitRulesElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('_language', instance.languageElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull(
      'contained', instance.contained?.map((e) => e.toJson()).toList());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('_publisher', instance.publisherElement?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('_purpose', instance.purposeElement?.toJson());
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  writeNotNull('origin', instance.origin?.map((e) => e.toJson()).toList());
  writeNotNull(
      'destination', instance.destination?.map((e) => e.toJson()).toList());
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('fixture', instance.fixture?.map((e) => e.toJson()).toList());
  writeNotNull('profile', instance.profile?.map((e) => e.toJson()).toList());
  writeNotNull('variable', instance.variable?.map((e) => e.toJson()).toList());
  writeNotNull('setup', instance.setup?.toJson());
  writeNotNull('test', instance.test?.map((e) => e.toJson()).toList());
  writeNotNull('teardown', instance.teardown?.toJson());
  return val;
}

const _$R4ResourceTypeEnumMap = {
  R4ResourceType.Account: 'Account',
  R4ResourceType.ActivityDefinition: 'ActivityDefinition',
  R4ResourceType.AdministrableProductDefinition:
      'AdministrableProductDefinition',
  R4ResourceType.AdverseEvent: 'AdverseEvent',
  R4ResourceType.AllergyIntolerance: 'AllergyIntolerance',
  R4ResourceType.Appointment: 'Appointment',
  R4ResourceType.AppointmentResponse: 'AppointmentResponse',
  R4ResourceType.AuditEvent: 'AuditEvent',
  R4ResourceType.Basic: 'Basic',
  R4ResourceType.Binary: 'Binary',
  R4ResourceType.BiologicallyDerivedProduct: 'BiologicallyDerivedProduct',
  R4ResourceType.BodyStructure: 'BodyStructure',
  R4ResourceType.Bundle: 'Bundle',
  R4ResourceType.CapabilityStatement: 'CapabilityStatement',
  R4ResourceType.CarePlan: 'CarePlan',
  R4ResourceType.CareTeam: 'CareTeam',
  R4ResourceType.CatalogEntry: 'CatalogEntry',
  R4ResourceType.ChargeItem: 'ChargeItem',
  R4ResourceType.ChargeItemDefinition: 'ChargeItemDefinition',
  R4ResourceType.Citation: 'Citation',
  R4ResourceType.Claim: 'Claim',
  R4ResourceType.ClaimResponse: 'ClaimResponse',
  R4ResourceType.ClinicalImpression: 'ClinicalImpression',
  R4ResourceType.ClinicalUseDefinition: 'ClinicalUseDefinition',
  R4ResourceType.CodeSystem: 'CodeSystem',
  R4ResourceType.Communication: 'Communication',
  R4ResourceType.CommunicationRequest: 'CommunicationRequest',
  R4ResourceType.CompartmentDefinition: 'CompartmentDefinition',
  R4ResourceType.Composition: 'Composition',
  R4ResourceType.ConceptMap: 'ConceptMap',
  R4ResourceType.Condition: 'Condition',
  R4ResourceType.Consent: 'Consent',
  R4ResourceType.Contract: 'Contract',
  R4ResourceType.Coverage: 'Coverage',
  R4ResourceType.CoverageEligibilityRequest: 'CoverageEligibilityRequest',
  R4ResourceType.CoverageEligibilityResponse: 'CoverageEligibilityResponse',
  R4ResourceType.DetectedIssue: 'DetectedIssue',
  R4ResourceType.Device: 'Device',
  R4ResourceType.DeviceDefinition: 'DeviceDefinition',
  R4ResourceType.DeviceMetric: 'DeviceMetric',
  R4ResourceType.DeviceRequest: 'DeviceRequest',
  R4ResourceType.DeviceUseStatement: 'DeviceUseStatement',
  R4ResourceType.DiagnosticReport: 'DiagnosticReport',
  R4ResourceType.DocumentManifest: 'DocumentManifest',
  R4ResourceType.DocumentReference: 'DocumentReference',
  R4ResourceType.Encounter: 'Encounter',
  R4ResourceType.Endpoint: 'Endpoint',
  R4ResourceType.EnrollmentRequest: 'EnrollmentRequest',
  R4ResourceType.EnrollmentResponse: 'EnrollmentResponse',
  R4ResourceType.EpisodeOfCare: 'EpisodeOfCare',
  R4ResourceType.EventDefinition: 'EventDefinition',
  R4ResourceType.Evidence: 'Evidence',
  R4ResourceType.EvidenceReport: 'EvidenceReport',
  R4ResourceType.EvidenceVariable: 'EvidenceVariable',
  R4ResourceType.ExampleScenario: 'ExampleScenario',
  R4ResourceType.ExplanationOfBenefit: 'ExplanationOfBenefit',
  R4ResourceType.FamilyMemberHistory: 'FamilyMemberHistory',
  R4ResourceType.Flag: 'Flag',
  R4ResourceType.Goal: 'Goal',
  R4ResourceType.GraphDefinition: 'GraphDefinition',
  R4ResourceType.Group: 'Group',
  R4ResourceType.GuidanceResponse: 'GuidanceResponse',
  R4ResourceType.HealthcareService: 'HealthcareService',
  R4ResourceType.ImagingStudy: 'ImagingStudy',
  R4ResourceType.Immunization: 'Immunization',
  R4ResourceType.ImmunizationEvaluation: 'ImmunizationEvaluation',
  R4ResourceType.ImmunizationRecommendation: 'ImmunizationRecommendation',
  R4ResourceType.ImplementationGuide: 'ImplementationGuide',
  R4ResourceType.Ingredient: 'Ingredient',
  R4ResourceType.InsurancePlan: 'InsurancePlan',
  R4ResourceType.Invoice: 'Invoice',
  R4ResourceType.Library: 'Library',
  R4ResourceType.Linkage: 'Linkage',
  R4ResourceType.FhirList: 'List',
  R4ResourceType.Location: 'Location',
  R4ResourceType.ManufacturedItemDefinition: 'ManufacturedItemDefinition',
  R4ResourceType.Measure: 'Measure',
  R4ResourceType.MeasureReport: 'MeasureReport',
  R4ResourceType.Media: 'Media',
  R4ResourceType.Medication: 'Medication',
  R4ResourceType.MedicationAdministration: 'MedicationAdministration',
  R4ResourceType.MedicationDispense: 'MedicationDispense',
  R4ResourceType.MedicationKnowledge: 'MedicationKnowledge',
  R4ResourceType.MedicationRequest: 'MedicationRequest',
  R4ResourceType.MedicationStatement: 'MedicationStatement',
  R4ResourceType.MedicinalProductDefinition: 'MedicinalProductDefinition',
  R4ResourceType.MessageDefinition: 'MessageDefinition',
  R4ResourceType.MessageHeader: 'MessageHeader',
  R4ResourceType.MolecularSequence: 'MolecularSequence',
  R4ResourceType.NamingSystem: 'NamingSystem',
  R4ResourceType.NutritionOrder: 'NutritionOrder',
  R4ResourceType.NutritionProduct: 'NutritionProduct',
  R4ResourceType.Observation: 'Observation',
  R4ResourceType.ObservationDefinition: 'ObservationDefinition',
  R4ResourceType.OperationDefinition: 'OperationDefinition',
  R4ResourceType.OperationOutcome: 'OperationOutcome',
  R4ResourceType.Organization: 'Organization',
  R4ResourceType.OrganizationAffiliation: 'OrganizationAffiliation',
  R4ResourceType.PackagedProductDefinition: 'PackagedProductDefinition',
  R4ResourceType.Parameters: 'Parameters',
  R4ResourceType.Patient: 'Patient',
  R4ResourceType.PaymentNotice: 'PaymentNotice',
  R4ResourceType.PaymentReconciliation: 'PaymentReconciliation',
  R4ResourceType.Person: 'Person',
  R4ResourceType.PlanDefinition: 'PlanDefinition',
  R4ResourceType.Practitioner: 'Practitioner',
  R4ResourceType.PractitionerRole: 'PractitionerRole',
  R4ResourceType.Procedure: 'Procedure',
  R4ResourceType.Provenance: 'Provenance',
  R4ResourceType.Questionnaire: 'Questionnaire',
  R4ResourceType.QuestionnaireResponse: 'QuestionnaireResponse',
  R4ResourceType.RegulatedAuthorization: 'RegulatedAuthorization',
  R4ResourceType.RelatedPerson: 'RelatedPerson',
  R4ResourceType.RequestGroup: 'RequestGroup',
  R4ResourceType.ResearchDefinition: 'ResearchDefinition',
  R4ResourceType.ResearchElementDefinition: 'ResearchElementDefinition',
  R4ResourceType.ResearchStudy: 'ResearchStudy',
  R4ResourceType.ResearchSubject: 'ResearchSubject',
  R4ResourceType.RiskAssessment: 'RiskAssessment',
  R4ResourceType.Schedule: 'Schedule',
  R4ResourceType.SearchParameter: 'SearchParameter',
  R4ResourceType.ServiceRequest: 'ServiceRequest',
  R4ResourceType.Slot: 'Slot',
  R4ResourceType.Specimen: 'Specimen',
  R4ResourceType.SpecimenDefinition: 'SpecimenDefinition',
  R4ResourceType.StructureDefinition: 'StructureDefinition',
  R4ResourceType.StructureMap: 'StructureMap',
  R4ResourceType.Subscription: 'Subscription',
  R4ResourceType.SubscriptionStatus: 'SubscriptionStatus',
  R4ResourceType.SubscriptionTopic: 'SubscriptionTopic',
  R4ResourceType.Substance: 'Substance',
  R4ResourceType.SubstanceDefinition: 'SubstanceDefinition',
  R4ResourceType.SupplyDelivery: 'SupplyDelivery',
  R4ResourceType.SupplyRequest: 'SupplyRequest',
  R4ResourceType.Task: 'Task',
  R4ResourceType.TerminologyCapabilities: 'TerminologyCapabilities',
  R4ResourceType.TestReport: 'TestReport',
  R4ResourceType.TestScript: 'TestScript',
  R4ResourceType.ValueSet: 'ValueSet',
  R4ResourceType.VerificationResult: 'VerificationResult',
  R4ResourceType.VisionPrescription: 'VisionPrescription',
};

_$TestScriptOriginImpl _$$TestScriptOriginImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptOriginImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      index: json['index'] == null ? null : FhirInteger.fromJson(json['index']),
      indexElement: json['_index'] == null
          ? null
          : PrimitiveElement.fromJson(json['_index'] as Map<String, dynamic>),
      profile: Coding.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptOriginImplToJson(
    _$TestScriptOriginImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('index', instance.index?.toJson());
  writeNotNull('_index', instance.indexElement?.toJson());
  val['profile'] = instance.profile.toJson();
  return val;
}

_$TestScriptDestinationImpl _$$TestScriptDestinationImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptDestinationImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      index: json['index'] == null ? null : FhirInteger.fromJson(json['index']),
      indexElement: json['_index'] == null
          ? null
          : PrimitiveElement.fromJson(json['_index'] as Map<String, dynamic>),
      profile: Coding.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptDestinationImplToJson(
    _$TestScriptDestinationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('index', instance.index?.toJson());
  writeNotNull('_index', instance.indexElement?.toJson());
  val['profile'] = instance.profile.toJson();
  return val;
}

_$TestScriptMetadataImpl _$$TestScriptMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptMetadataImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map((e) => TestScriptLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      capability: (json['capability'] as List<dynamic>)
          .map((e) => TestScriptCapability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestScriptMetadataImplToJson(
    _$TestScriptMetadataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('link', instance.link?.map((e) => e.toJson()).toList());
  val['capability'] = instance.capability.map((e) => e.toJson()).toList();
  return val;
}

_$TestScriptLinkImpl _$$TestScriptLinkImplFromJson(Map<String, dynamic> json) =>
    _$TestScriptLinkImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] == null ? null : FhirUri.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptLinkImplToJson(
    _$TestScriptLinkImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  return val;
}

_$TestScriptCapabilityImpl _$$TestScriptCapabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptCapabilityImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      required_: json['required'] == null
          ? null
          : FhirBoolean.fromJson(json['required']),
      requiredElement: json['_required'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_required'] as Map<String, dynamic>),
      validated: json['validated'] == null
          ? null
          : FhirBoolean.fromJson(json['validated']),
      validatedElement: json['_validated'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_validated'] as Map<String, dynamic>),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      origin: (json['origin'] as List<dynamic>?)
          ?.map(FhirInteger.fromJson)
          .toList(),
      originElement: (json['_origin'] as List<dynamic>?)
          ?.map((e) => PrimitiveElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      destination: json['destination'] == null
          ? null
          : FhirInteger.fromJson(json['destination']),
      destinationElement: json['_destination'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_destination'] as Map<String, dynamic>),
      link: (json['link'] as List<dynamic>?)?.map(FhirUri.fromJson).toList(),
      linkElement: (json['_link'] as List<dynamic>?)
          ?.map((e) => PrimitiveElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      capabilities: FhirCanonical.fromJson(json['capabilities']),
    );

Map<String, dynamic> _$$TestScriptCapabilityImplToJson(
    _$TestScriptCapabilityImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('required', instance.required_?.toJson());
  writeNotNull('_required', instance.requiredElement?.toJson());
  writeNotNull('validated', instance.validated?.toJson());
  writeNotNull('_validated', instance.validatedElement?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('origin', instance.origin?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_origin', instance.originElement?.map((e) => e.toJson()).toList());
  writeNotNull('destination', instance.destination?.toJson());
  writeNotNull('_destination', instance.destinationElement?.toJson());
  writeNotNull('link', instance.link?.map((e) => e.toJson()).toList());
  writeNotNull('_link', instance.linkElement?.map((e) => e.toJson()).toList());
  val['capabilities'] = instance.capabilities.toJson();
  return val;
}

_$TestScriptFixtureImpl _$$TestScriptFixtureImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptFixtureImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      autocreate: json['autocreate'] == null
          ? null
          : FhirBoolean.fromJson(json['autocreate']),
      autocreateElement: json['_autocreate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_autocreate'] as Map<String, dynamic>),
      autodelete: json['autodelete'] == null
          ? null
          : FhirBoolean.fromJson(json['autodelete']),
      autodeleteElement: json['_autodelete'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_autodelete'] as Map<String, dynamic>),
      resource: json['resource'] == null
          ? null
          : Reference.fromJson(json['resource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptFixtureImplToJson(
    _$TestScriptFixtureImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('autocreate', instance.autocreate?.toJson());
  writeNotNull('_autocreate', instance.autocreateElement?.toJson());
  writeNotNull('autodelete', instance.autodelete?.toJson());
  writeNotNull('_autodelete', instance.autodeleteElement?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  return val;
}

_$TestScriptVariableImpl _$$TestScriptVariableImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptVariableImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      nameElement: json['_name'] == null
          ? null
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      defaultValue: json['defaultValue'] as String?,
      defaultValueElement: json['_defaultValue'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_defaultValue'] as Map<String, dynamic>),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      expression: json['expression'] as String?,
      expressionElement: json['_expression'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_expression'] as Map<String, dynamic>),
      headerField: json['headerField'] as String?,
      headerFieldElement: json['_headerField'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_headerField'] as Map<String, dynamic>),
      hint: json['hint'] as String?,
      hintElement: json['_hint'] == null
          ? null
          : PrimitiveElement.fromJson(json['_hint'] as Map<String, dynamic>),
      path: json['path'] as String?,
      pathElement: json['_path'] == null
          ? null
          : PrimitiveElement.fromJson(json['_path'] as Map<String, dynamic>),
      sourceId:
          json['sourceId'] == null ? null : FhirId.fromJson(json['sourceId']),
      sourceIdElement: json['_sourceId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sourceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptVariableImplToJson(
    _$TestScriptVariableImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('_defaultValue', instance.defaultValueElement?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('_expression', instance.expressionElement?.toJson());
  writeNotNull('headerField', instance.headerField);
  writeNotNull('_headerField', instance.headerFieldElement?.toJson());
  writeNotNull('hint', instance.hint);
  writeNotNull('_hint', instance.hintElement?.toJson());
  writeNotNull('path', instance.path);
  writeNotNull('_path', instance.pathElement?.toJson());
  writeNotNull('sourceId', instance.sourceId?.toJson());
  writeNotNull('_sourceId', instance.sourceIdElement?.toJson());
  return val;
}

_$TestScriptSetupImpl _$$TestScriptSetupImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptSetupImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      action: (json['action'] as List<dynamic>)
          .map((e) => TestScriptAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestScriptSetupImplToJson(
    _$TestScriptSetupImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['action'] = instance.action.map((e) => e.toJson()).toList();
  return val;
}

_$TestScriptActionImpl _$$TestScriptActionImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptActionImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: json['operation'] == null
          ? null
          : TestScriptOperation.fromJson(
              json['operation'] as Map<String, dynamic>),
      assert_: json['assert'] == null
          ? null
          : TestScriptAssert.fromJson(json['assert'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptActionImplToJson(
    _$TestScriptActionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('operation', instance.operation?.toJson());
  writeNotNull('assert', instance.assert_?.toJson());
  return val;
}

_$TestScriptOperationImpl _$$TestScriptOperationImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptOperationImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : Coding.fromJson(json['type'] as Map<String, dynamic>),
      resource:
          json['resource'] == null ? null : FhirCode.fromJson(json['resource']),
      resourceElement: json['_resource'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_resource'] as Map<String, dynamic>),
      label: json['label'] as String?,
      labelElement: json['_label'] == null
          ? null
          : PrimitiveElement.fromJson(json['_label'] as Map<String, dynamic>),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      accept: json['accept'] == null ? null : FhirCode.fromJson(json['accept']),
      acceptElement: json['_accept'] == null
          ? null
          : PrimitiveElement.fromJson(json['_accept'] as Map<String, dynamic>),
      contentType: json['contentType'] == null
          ? null
          : FhirCode.fromJson(json['contentType']),
      contentTypeElement: json['_contentType'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_contentType'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : FhirInteger.fromJson(json['destination']),
      destinationElement: json['_destination'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_destination'] as Map<String, dynamic>),
      encodeRequestUrl: json['encodeRequestUrl'] == null
          ? null
          : FhirBoolean.fromJson(json['encodeRequestUrl']),
      encodeRequestUrlElement: json['_encodeRequestUrl'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_encodeRequestUrl'] as Map<String, dynamic>),
      method: json['method'] == null ? null : FhirCode.fromJson(json['method']),
      methodElement: json['_method'] == null
          ? null
          : PrimitiveElement.fromJson(json['_method'] as Map<String, dynamic>),
      origin:
          json['origin'] == null ? null : FhirInteger.fromJson(json['origin']),
      originElement: json['_origin'] == null
          ? null
          : PrimitiveElement.fromJson(json['_origin'] as Map<String, dynamic>),
      params: json['params'] as String?,
      paramsElement: json['_params'] == null
          ? null
          : PrimitiveElement.fromJson(json['_params'] as Map<String, dynamic>),
      requestHeader: (json['requestHeader'] as List<dynamic>?)
          ?.map((e) =>
              TestScriptRequestHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestId:
          json['requestId'] == null ? null : FhirId.fromJson(json['requestId']),
      requestIdElement: json['_requestId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_requestId'] as Map<String, dynamic>),
      responseId: json['responseId'] == null
          ? null
          : FhirId.fromJson(json['responseId']),
      responseIdElement: json['_responseId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_responseId'] as Map<String, dynamic>),
      sourceId:
          json['sourceId'] == null ? null : FhirId.fromJson(json['sourceId']),
      sourceIdElement: json['_sourceId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sourceId'] as Map<String, dynamic>),
      targetId:
          json['targetId'] == null ? null : FhirId.fromJson(json['targetId']),
      targetIdElement: json['_targetId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_targetId'] as Map<String, dynamic>),
      url: json['url'] as String?,
      urlElement: json['_url'] == null
          ? null
          : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptOperationImplToJson(
    _$TestScriptOperationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('_resource', instance.resourceElement?.toJson());
  writeNotNull('label', instance.label);
  writeNotNull('_label', instance.labelElement?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('accept', instance.accept?.toJson());
  writeNotNull('_accept', instance.acceptElement?.toJson());
  writeNotNull('contentType', instance.contentType?.toJson());
  writeNotNull('_contentType', instance.contentTypeElement?.toJson());
  writeNotNull('destination', instance.destination?.toJson());
  writeNotNull('_destination', instance.destinationElement?.toJson());
  writeNotNull('encodeRequestUrl', instance.encodeRequestUrl?.toJson());
  writeNotNull('_encodeRequestUrl', instance.encodeRequestUrlElement?.toJson());
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('_method', instance.methodElement?.toJson());
  writeNotNull('origin', instance.origin?.toJson());
  writeNotNull('_origin', instance.originElement?.toJson());
  writeNotNull('params', instance.params);
  writeNotNull('_params', instance.paramsElement?.toJson());
  writeNotNull(
      'requestHeader', instance.requestHeader?.map((e) => e.toJson()).toList());
  writeNotNull('requestId', instance.requestId?.toJson());
  writeNotNull('_requestId', instance.requestIdElement?.toJson());
  writeNotNull('responseId', instance.responseId?.toJson());
  writeNotNull('_responseId', instance.responseIdElement?.toJson());
  writeNotNull('sourceId', instance.sourceId?.toJson());
  writeNotNull('_sourceId', instance.sourceIdElement?.toJson());
  writeNotNull('targetId', instance.targetId?.toJson());
  writeNotNull('_targetId', instance.targetIdElement?.toJson());
  writeNotNull('url', instance.url);
  writeNotNull('_url', instance.urlElement?.toJson());
  return val;
}

_$TestScriptRequestHeaderImpl _$$TestScriptRequestHeaderImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptRequestHeaderImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      field: json['field'] as String?,
      fieldElement: json['_field'] == null
          ? null
          : PrimitiveElement.fromJson(json['_field'] as Map<String, dynamic>),
      value: json['value'] as String?,
      valueElement: json['_value'] == null
          ? null
          : PrimitiveElement.fromJson(json['_value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptRequestHeaderImplToJson(
    _$TestScriptRequestHeaderImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('field', instance.field);
  writeNotNull('_field', instance.fieldElement?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('_value', instance.valueElement?.toJson());
  return val;
}

_$TestScriptAssertImpl _$$TestScriptAssertImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptAssertImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: json['label'] as String?,
      labelElement: json['_label'] == null
          ? null
          : PrimitiveElement.fromJson(json['_label'] as Map<String, dynamic>),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      direction: json['direction'] == null
          ? null
          : FhirCode.fromJson(json['direction']),
      directionElement: json['_direction'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_direction'] as Map<String, dynamic>),
      compareToSourceId: json['compareToSourceId'] as String?,
      compareToSourceIdElement: json['_compareToSourceId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_compareToSourceId'] as Map<String, dynamic>),
      compareToSourceExpression: json['compareToSourceExpression'] as String?,
      compareToSourceExpressionElement:
          json['_compareToSourceExpression'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_compareToSourceExpression'] as Map<String, dynamic>),
      compareToSourcePath: json['compareToSourcePath'] as String?,
      compareToSourcePathElement: json['_compareToSourcePath'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_compareToSourcePath'] as Map<String, dynamic>),
      contentType: json['contentType'] == null
          ? null
          : FhirCode.fromJson(json['contentType']),
      contentTypeElement: json['_contentType'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_contentType'] as Map<String, dynamic>),
      expression: json['expression'] as String?,
      expressionElement: json['_expression'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_expression'] as Map<String, dynamic>),
      headerField: json['headerField'] as String?,
      headerFieldElement: json['_headerField'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_headerField'] as Map<String, dynamic>),
      minimumId: json['minimumId'] as String?,
      minimumIdElement: json['_minimumId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_minimumId'] as Map<String, dynamic>),
      navigationLinks: json['navigationLinks'] == null
          ? null
          : FhirBoolean.fromJson(json['navigationLinks']),
      navigationLinksElement: json['_navigationLinks'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_navigationLinks'] as Map<String, dynamic>),
      operator_:
          json['operator'] == null ? null : FhirCode.fromJson(json['operator']),
      operatorElement: json['_operator'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_operator'] as Map<String, dynamic>),
      path: json['path'] as String?,
      pathElement: json['_path'] == null
          ? null
          : PrimitiveElement.fromJson(json['_path'] as Map<String, dynamic>),
      requestMethod: json['requestMethod'] == null
          ? null
          : FhirCode.fromJson(json['requestMethod']),
      requestMethodElement: json['_requestMethod'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_requestMethod'] as Map<String, dynamic>),
      requestURL: json['requestURL'] as String?,
      requestURLElement: json['_requestURL'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_requestURL'] as Map<String, dynamic>),
      resource:
          json['resource'] == null ? null : FhirCode.fromJson(json['resource']),
      resourceElement: json['_resource'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_resource'] as Map<String, dynamic>),
      response:
          json['response'] == null ? null : FhirCode.fromJson(json['response']),
      responseElement: json['_response'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_response'] as Map<String, dynamic>),
      responseCode: json['responseCode'] as String?,
      responseCodeElement: json['_responseCode'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_responseCode'] as Map<String, dynamic>),
      sourceId:
          json['sourceId'] == null ? null : FhirId.fromJson(json['sourceId']),
      sourceIdElement: json['_sourceId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sourceId'] as Map<String, dynamic>),
      validateProfileId: json['validateProfileId'] == null
          ? null
          : FhirId.fromJson(json['validateProfileId']),
      validateProfileIdElement: json['_validateProfileId'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_validateProfileId'] as Map<String, dynamic>),
      value: json['value'] as String?,
      valueElement: json['_value'] == null
          ? null
          : PrimitiveElement.fromJson(json['_value'] as Map<String, dynamic>),
      warningOnly: json['warningOnly'] == null
          ? null
          : FhirBoolean.fromJson(json['warningOnly']),
      warningOnlyElement: json['_warningOnly'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_warningOnly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptAssertImplToJson(
    _$TestScriptAssertImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('label', instance.label);
  writeNotNull('_label', instance.labelElement?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('direction', instance.direction?.toJson());
  writeNotNull('_direction', instance.directionElement?.toJson());
  writeNotNull('compareToSourceId', instance.compareToSourceId);
  writeNotNull(
      '_compareToSourceId', instance.compareToSourceIdElement?.toJson());
  writeNotNull('compareToSourceExpression', instance.compareToSourceExpression);
  writeNotNull('_compareToSourceExpression',
      instance.compareToSourceExpressionElement?.toJson());
  writeNotNull('compareToSourcePath', instance.compareToSourcePath);
  writeNotNull(
      '_compareToSourcePath', instance.compareToSourcePathElement?.toJson());
  writeNotNull('contentType', instance.contentType?.toJson());
  writeNotNull('_contentType', instance.contentTypeElement?.toJson());
  writeNotNull('expression', instance.expression);
  writeNotNull('_expression', instance.expressionElement?.toJson());
  writeNotNull('headerField', instance.headerField);
  writeNotNull('_headerField', instance.headerFieldElement?.toJson());
  writeNotNull('minimumId', instance.minimumId);
  writeNotNull('_minimumId', instance.minimumIdElement?.toJson());
  writeNotNull('navigationLinks', instance.navigationLinks?.toJson());
  writeNotNull('_navigationLinks', instance.navigationLinksElement?.toJson());
  writeNotNull('operator', instance.operator_?.toJson());
  writeNotNull('_operator', instance.operatorElement?.toJson());
  writeNotNull('path', instance.path);
  writeNotNull('_path', instance.pathElement?.toJson());
  writeNotNull('requestMethod', instance.requestMethod?.toJson());
  writeNotNull('_requestMethod', instance.requestMethodElement?.toJson());
  writeNotNull('requestURL', instance.requestURL);
  writeNotNull('_requestURL', instance.requestURLElement?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('_resource', instance.resourceElement?.toJson());
  writeNotNull('response', instance.response?.toJson());
  writeNotNull('_response', instance.responseElement?.toJson());
  writeNotNull('responseCode', instance.responseCode);
  writeNotNull('_responseCode', instance.responseCodeElement?.toJson());
  writeNotNull('sourceId', instance.sourceId?.toJson());
  writeNotNull('_sourceId', instance.sourceIdElement?.toJson());
  writeNotNull('validateProfileId', instance.validateProfileId?.toJson());
  writeNotNull(
      '_validateProfileId', instance.validateProfileIdElement?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('_value', instance.valueElement?.toJson());
  writeNotNull('warningOnly', instance.warningOnly?.toJson());
  writeNotNull('_warningOnly', instance.warningOnlyElement?.toJson());
  return val;
}

_$TestScriptTestImpl _$$TestScriptTestImplFromJson(Map<String, dynamic> json) =>
    _$TestScriptTestImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      nameElement: json['_name'] == null
          ? null
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      description: json['description'] as String?,
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      action: (json['action'] as List<dynamic>)
          .map((e) => TestScriptAction1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestScriptTestImplToJson(
    _$TestScriptTestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  val['action'] = instance.action.map((e) => e.toJson()).toList();
  return val;
}

_$TestScriptAction1Impl _$$TestScriptAction1ImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptAction1Impl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: json['operation'] == null
          ? null
          : TestScriptOperation.fromJson(
              json['operation'] as Map<String, dynamic>),
      assert_: json['assert'] == null
          ? null
          : TestScriptAssert.fromJson(json['assert'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptAction1ImplToJson(
    _$TestScriptAction1Impl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('operation', instance.operation?.toJson());
  writeNotNull('assert', instance.assert_?.toJson());
  return val;
}

_$TestScriptTeardownImpl _$$TestScriptTeardownImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptTeardownImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      action: (json['action'] as List<dynamic>)
          .map((e) => TestScriptAction2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestScriptTeardownImplToJson(
    _$TestScriptTeardownImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['action'] = instance.action.map((e) => e.toJson()).toList();
  return val;
}

_$TestScriptAction2Impl _$$TestScriptAction2ImplFromJson(
        Map<String, dynamic> json) =>
    _$TestScriptAction2Impl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: TestScriptOperation.fromJson(
          json['operation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TestScriptAction2ImplToJson(
    _$TestScriptAction2Impl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['operation'] = instance.operation.toJson();
  return val;
}
