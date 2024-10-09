// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationDefinition _$OperationDefinitionFromJson(Map<String, dynamic> json) =>
    OperationDefinition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['_implicitRules'] == null
          ? null
          : Element.fromJson(json['_implicitRules'] as Map<String, dynamic>),
      language: $enumDecodeNullable(_$CommonLanguagesEnumMap, json['language']),
      languageElement: json['_language'] == null
          ? null
          : Element.fromJson(json['_language'] as Map<String, dynamic>),
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
          : Element.fromJson(json['_url'] as Map<String, dynamic>),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] == null ? null : FhirString.fromJson(json['title']),
      titleElement: json['_title'] == null
          ? null
          : Element.fromJson(json['_title'] as Map<String, dynamic>),
      status: $enumDecode(_$PublicationStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      kind: $enumDecode(_$OperationKindEnumMap, json['kind']),
      kindElement: json['_kind'] == null
          ? null
          : Element.fromJson(json['_kind'] as Map<String, dynamic>),
      experimental: json['experimental'] == null
          ? null
          : FhirBoolean.fromJson(json['experimental']),
      experimentalElement: json['_experimental'] == null
          ? null
          : Element.fromJson(json['_experimental'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      publisher: json['publisher'] == null
          ? null
          : FhirString.fromJson(json['publisher']),
      publisherElement: json['_publisher'] == null
          ? null
          : Element.fromJson(json['_publisher'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
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
          : Element.fromJson(json['_purpose'] as Map<String, dynamic>),
      affectsState: json['affectsState'] == null
          ? null
          : FhirBoolean.fromJson(json['affectsState']),
      affectsStateElement: json['_affectsState'] == null
          ? null
          : Element.fromJson(json['_affectsState'] as Map<String, dynamic>),
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : FhirMarkdown.fromJson(json['comment']),
      commentElement: json['_comment'] == null
          ? null
          : Element.fromJson(json['_comment'] as Map<String, dynamic>),
      base: json['base'] == null ? null : FhirCanonical.fromJson(json['base']),
      baseElement: json['_base'] == null
          ? null
          : Element.fromJson(json['_base'] as Map<String, dynamic>),
      resource:
          (json['resource'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
      resourceElement: (json['_resource'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      system: FhirBoolean.fromJson(json['system']),
      systemElement: json['_system'] == null
          ? null
          : Element.fromJson(json['_system'] as Map<String, dynamic>),
      type: FhirBoolean.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      instance: FhirBoolean.fromJson(json['instance']),
      instanceElement: json['_instance'] == null
          ? null
          : Element.fromJson(json['_instance'] as Map<String, dynamic>),
      inputProfile: json['inputProfile'] == null
          ? null
          : FhirCanonical.fromJson(json['inputProfile']),
      inputProfileElement: json['_inputProfile'] == null
          ? null
          : Element.fromJson(json['_inputProfile'] as Map<String, dynamic>),
      outputProfile: json['outputProfile'] == null
          ? null
          : FhirCanonical.fromJson(json['outputProfile']),
      outputProfileElement: json['_outputProfile'] == null
          ? null
          : Element.fromJson(json['_outputProfile'] as Map<String, dynamic>),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) =>
              OperationDefinitionParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      overload: (json['overload'] as List<dynamic>?)
          ?.map((e) =>
              OperationDefinitionOverload.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
      resourceType:
          $enumDecodeNullable(_$R4ResourceTypeEnumMap, json['resourceType']),
    );

Map<String, dynamic> _$OperationDefinitionToJson(OperationDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  val['resourceType'] = instance.resourceType.toJson();
  writeNotNull('id', instance.id?.toJson());
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
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  val['kind'] = instance.kind.toJson();
  writeNotNull('_kind', instance.kindElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
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
  writeNotNull('affectsState', instance.affectsState?.toJson());
  writeNotNull('_affectsState', instance.affectsStateElement?.toJson());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('_comment', instance.commentElement?.toJson());
  writeNotNull('base', instance.base?.toJson());
  writeNotNull('_base', instance.baseElement?.toJson());
  writeNotNull('resource', instance.resource?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_resource', instance.resourceElement?.map((e) => e.toJson()).toList());
  val['system'] = instance.system.toJson();
  writeNotNull('_system', instance.systemElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  val['instance'] = instance.instance.toJson();
  writeNotNull('_instance', instance.instanceElement?.toJson());
  writeNotNull('inputProfile', instance.inputProfile?.toJson());
  writeNotNull('_inputProfile', instance.inputProfileElement?.toJson());
  writeNotNull('outputProfile', instance.outputProfile?.toJson());
  writeNotNull('_outputProfile', instance.outputProfileElement?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e.toJson()).toList());
  writeNotNull('overload', instance.overload?.map((e) => e.toJson()).toList());
  return val;
}

const _$CommonLanguagesEnumMap = {
  CommonLanguages.ar: 'ar',
  CommonLanguages.bn: 'bn',
  CommonLanguages.cs: 'cs',
  CommonLanguages.da: 'da',
  CommonLanguages.de: 'de',
  CommonLanguages.de_AT: 'de-AT',
  CommonLanguages.de_CH: 'de-CH',
  CommonLanguages.de_DE: 'de-DE',
  CommonLanguages.el: 'el',
  CommonLanguages.en: 'en',
  CommonLanguages.en_AU: 'en-AU',
  CommonLanguages.en_CA: 'en-CA',
  CommonLanguages.en_GB: 'en-GB',
  CommonLanguages.en_IN: 'en-IN',
  CommonLanguages.en_NZ: 'en-NZ',
  CommonLanguages.en_SG: 'en-SG',
  CommonLanguages.en_US: 'en-US',
  CommonLanguages.es: 'es',
  CommonLanguages.es_AR: 'es-AR',
  CommonLanguages.es_ES: 'es-ES',
  CommonLanguages.es_UY: 'es-UY',
  CommonLanguages.fi: 'fi',
  CommonLanguages.fr: 'fr',
  CommonLanguages.fr_BE: 'fr-BE',
  CommonLanguages.fr_CH: 'fr-CH',
  CommonLanguages.fr_FR: 'fr-FR',
  CommonLanguages.fy: 'fy',
  CommonLanguages.fy_NL: 'fy-NL',
  CommonLanguages.hi: 'hi',
  CommonLanguages.hr: 'hr',
  CommonLanguages.it: 'it',
  CommonLanguages.it_CH: 'it-CH',
  CommonLanguages.it_IT: 'it-IT',
  CommonLanguages.ja: 'ja',
  CommonLanguages.ko: 'ko',
  CommonLanguages.nl: 'nl',
  CommonLanguages.nl_BE: 'nl-BE',
  CommonLanguages.nl_NL: 'nl-NL',
  CommonLanguages.no: 'no',
  CommonLanguages.no_NO: 'no-NO',
  CommonLanguages.pa: 'pa',
  CommonLanguages.pl: 'pl',
  CommonLanguages.pt: 'pt',
  CommonLanguages.pt_BR: 'pt-BR',
  CommonLanguages.ru: 'ru',
  CommonLanguages.ru_RU: 'ru-RU',
  CommonLanguages.sr: 'sr',
  CommonLanguages.sr_RS: 'sr-RS',
  CommonLanguages.sv: 'sv',
  CommonLanguages.sv_SE: 'sv-SE',
  CommonLanguages.te: 'te',
  CommonLanguages.zh: 'zh',
  CommonLanguages.zh_CN: 'zh-CN',
  CommonLanguages.zh_HK: 'zh-HK',
  CommonLanguages.zh_SG: 'zh-SG',
  CommonLanguages.zh_TW: 'zh-TW',
};

const _$PublicationStatusEnumMap = {
  PublicationStatus.draft: 'draft',
  PublicationStatus.active: 'active',
  PublicationStatus.retired: 'retired',
  PublicationStatus.unknown: 'unknown',
};

const _$OperationKindEnumMap = {
  OperationKind.operation: 'operation',
  OperationKind.query: 'query',
};

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
  R4ResourceType.FhirEndpoint: 'Endpoint',
  R4ResourceType.FhirGroup: 'Group',
  R4ResourceType.FhirList: 'List',
  R4ResourceType.Flag: 'Flag',
  R4ResourceType.Goal: 'Goal',
  R4ResourceType.GraphDefinition: 'GraphDefinition',
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

OperationDefinitionParameter _$OperationDefinitionParameterFromJson(
        Map<String, dynamic> json) =>
    OperationDefinitionParameter(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: FhirCode.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      use: $enumDecode(_$OperationParameterUseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      min: FhirInteger.fromJson(json['min']),
      minElement: json['_min'] == null
          ? null
          : Element.fromJson(json['_min'] as Map<String, dynamic>),
      max: FhirString.fromJson(json['max']),
      maxElement: json['_max'] == null
          ? null
          : Element.fromJson(json['_max'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirString.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$FHIRAllTypesEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      targetProfile: (json['targetProfile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      targetProfileElement: (json['_targetProfile'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchType:
          $enumDecodeNullable(_$SearchParamTypeEnumMap, json['searchType']),
      searchTypeElement: json['_searchType'] == null
          ? null
          : Element.fromJson(json['_searchType'] as Map<String, dynamic>),
      binding: json['binding'] == null
          ? null
          : OperationDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>),
      referencedFrom: (json['referencedFrom'] as List<dynamic>?)
          ?.map((e) => OperationDefinitionReferencedFrom.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      part_: (json['part'] as List<dynamic>?)
          ?.map((e) =>
              OperationDefinitionParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$OperationDefinitionParameterToJson(
    OperationDefinitionParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  val['use'] = instance.use.toJson();
  writeNotNull('_use', instance.useElement?.toJson());
  val['min'] = instance.min.toJson();
  writeNotNull('_min', instance.minElement?.toJson());
  val['max'] = instance.max.toJson();
  writeNotNull('_max', instance.maxElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull(
      'targetProfile', instance.targetProfile?.map((e) => e.toJson()).toList());
  writeNotNull('_targetProfile',
      instance.targetProfileElement?.map((e) => e.toJson()).toList());
  writeNotNull('searchType', instance.searchType?.toJson());
  writeNotNull('_searchType', instance.searchTypeElement?.toJson());
  writeNotNull('binding', instance.binding?.toJson());
  writeNotNull('referencedFrom',
      instance.referencedFrom?.map((e) => e.toJson()).toList());
  writeNotNull('part', instance.part_?.map((e) => e.toJson()).toList());
  return val;
}

const _$OperationParameterUseEnumMap = {
  OperationParameterUse.in_: 'in',
  OperationParameterUse.out: 'out',
};

const _$FHIRAllTypesEnumMap = {
  FHIRAllTypes.Address: 'Address',
  FHIRAllTypes.Age: 'Age',
  FHIRAllTypes.Annotation: 'Annotation',
  FHIRAllTypes.Attachment: 'Attachment',
  FHIRAllTypes.BackboneElement: 'BackboneElement',
  FHIRAllTypes.CodeableConcept: 'CodeableConcept',
  FHIRAllTypes.CodeableReference: 'CodeableReference',
  FHIRAllTypes.Coding: 'Coding',
  FHIRAllTypes.ContactDetail: 'ContactDetail',
  FHIRAllTypes.ContactPoint: 'ContactPoint',
  FHIRAllTypes.Contributor: 'Contributor',
  FHIRAllTypes.Count: 'Count',
  FHIRAllTypes.DataRequirement: 'DataRequirement',
  FHIRAllTypes.Distance: 'Distance',
  FHIRAllTypes.Dosage: 'Dosage',
  FHIRAllTypes.Duration: 'Duration',
  FHIRAllTypes.Element: 'Element',
  FHIRAllTypes.ElementDefinition: 'ElementDefinition',
  FHIRAllTypes.Expression: 'Expression',
  FHIRAllTypes.Extension: 'Extension',
  FHIRAllTypes.HumanName: 'HumanName',
  FHIRAllTypes.Identifier: 'Identifier',
  FHIRAllTypes.MarketingStatus: 'MarketingStatus',
  FHIRAllTypes.Meta: 'Meta',
  FHIRAllTypes.Money: 'Money',
  FHIRAllTypes.MoneyQuantity: 'MoneyQuantity',
  FHIRAllTypes.Narrative: 'Narrative',
  FHIRAllTypes.ParameterDefinition: 'ParameterDefinition',
  FHIRAllTypes.Period: 'Period',
  FHIRAllTypes.Population: 'Population',
  FHIRAllTypes.ProdCharacteristic: 'ProdCharacteristic',
  FHIRAllTypes.ProductShelfLife: 'ProductShelfLife',
  FHIRAllTypes.Quantity: 'Quantity',
  FHIRAllTypes.Range: 'Range',
  FHIRAllTypes.Ratio: 'Ratio',
  FHIRAllTypes.RatioRange: 'RatioRange',
  FHIRAllTypes.Reference: 'Reference',
  FHIRAllTypes.RelatedArtifact: 'RelatedArtifact',
  FHIRAllTypes.SampledData: 'SampledData',
  FHIRAllTypes.Signature: 'Signature',
  FHIRAllTypes.SimpleQuantity: 'SimpleQuantity',
  FHIRAllTypes.Timing: 'Timing',
  FHIRAllTypes.TriggerDefinition: 'TriggerDefinition',
  FHIRAllTypes.UsageContext: 'UsageContext',
  FHIRAllTypes.base64Binary: 'base64Binary',
  FHIRAllTypes.boolean: 'boolean',
  FHIRAllTypes.canonical: 'canonical',
  FHIRAllTypes.code: 'code',
  FHIRAllTypes.date: 'date',
  FHIRAllTypes.dateTime: 'dateTime',
  FHIRAllTypes.decimal: 'decimal',
  FHIRAllTypes.id: 'id',
  FHIRAllTypes.instant: 'instant',
  FHIRAllTypes.integer: 'integer',
  FHIRAllTypes.markdown: 'markdown',
  FHIRAllTypes.oid: 'oid',
  FHIRAllTypes.positiveInt: 'positiveInt',
  FHIRAllTypes.string: 'string',
  FHIRAllTypes.time: 'time',
  FHIRAllTypes.unsignedInt: 'unsignedInt',
  FHIRAllTypes.uri: 'uri',
  FHIRAllTypes.url: 'url',
  FHIRAllTypes.uuid: 'uuid',
  FHIRAllTypes.xhtml: 'xhtml',
  FHIRAllTypes.Resource: 'Resource',
  FHIRAllTypes.Binary: 'Binary',
  FHIRAllTypes.Bundle: 'Bundle',
  FHIRAllTypes.DomainResource: 'DomainResource',
  FHIRAllTypes.Account: 'Account',
  FHIRAllTypes.ActivityDefinition: 'ActivityDefinition',
  FHIRAllTypes.AdministrableProductDefinition: 'AdministrableProductDefinition',
  FHIRAllTypes.AdverseEvent: 'AdverseEvent',
  FHIRAllTypes.AllergyIntolerance: 'AllergyIntolerance',
  FHIRAllTypes.Appointment: 'Appointment',
  FHIRAllTypes.AppointmentResponse: 'AppointmentResponse',
  FHIRAllTypes.AuditEvent: 'AuditEvent',
  FHIRAllTypes.Basic: 'Basic',
  FHIRAllTypes.BiologicallyDerivedProduct: 'BiologicallyDerivedProduct',
  FHIRAllTypes.BodyStructure: 'BodyStructure',
  FHIRAllTypes.CapabilityStatement: 'CapabilityStatement',
  FHIRAllTypes.CarePlan: 'CarePlan',
  FHIRAllTypes.CareTeam: 'CareTeam',
  FHIRAllTypes.CatalogEntry: 'CatalogEntry',
  FHIRAllTypes.ChargeItem: 'ChargeItem',
  FHIRAllTypes.ChargeItemDefinition: 'ChargeItemDefinition',
  FHIRAllTypes.Citation: 'Citation',
  FHIRAllTypes.Claim: 'Claim',
  FHIRAllTypes.ClaimResponse: 'ClaimResponse',
  FHIRAllTypes.ClinicalImpression: 'ClinicalImpression',
  FHIRAllTypes.ClinicalUseDefinition: 'ClinicalUseDefinition',
  FHIRAllTypes.CodeSystem: 'CodeSystem',
  FHIRAllTypes.Communication: 'Communication',
  FHIRAllTypes.CommunicationRequest: 'CommunicationRequest',
  FHIRAllTypes.CompartmentDefinition: 'CompartmentDefinition',
  FHIRAllTypes.Composition: 'Composition',
  FHIRAllTypes.ConceptMap: 'ConceptMap',
  FHIRAllTypes.Condition: 'Condition',
  FHIRAllTypes.Consent: 'Consent',
  FHIRAllTypes.Contract: 'Contract',
  FHIRAllTypes.Coverage: 'Coverage',
  FHIRAllTypes.CoverageEligibilityRequest: 'CoverageEligibilityRequest',
  FHIRAllTypes.CoverageEligibilityResponse: 'CoverageEligibilityResponse',
  FHIRAllTypes.DetectedIssue: 'DetectedIssue',
  FHIRAllTypes.Device: 'Device',
  FHIRAllTypes.DeviceDefinition: 'DeviceDefinition',
  FHIRAllTypes.DeviceMetric: 'DeviceMetric',
  FHIRAllTypes.DeviceRequest: 'DeviceRequest',
  FHIRAllTypes.DeviceUseStatement: 'DeviceUseStatement',
  FHIRAllTypes.DiagnosticReport: 'DiagnosticReport',
  FHIRAllTypes.DocumentManifest: 'DocumentManifest',
  FHIRAllTypes.DocumentReference: 'DocumentReference',
  FHIRAllTypes.Encounter: 'Encounter',
  FHIRAllTypes.Endpoint: 'Endpoint',
  FHIRAllTypes.EnrollmentRequest: 'EnrollmentRequest',
  FHIRAllTypes.EnrollmentResponse: 'EnrollmentResponse',
  FHIRAllTypes.EpisodeOfCare: 'EpisodeOfCare',
  FHIRAllTypes.EventDefinition: 'EventDefinition',
  FHIRAllTypes.Evidence: 'Evidence',
  FHIRAllTypes.EvidenceReport: 'EvidenceReport',
  FHIRAllTypes.EvidenceVariable: 'EvidenceVariable',
  FHIRAllTypes.ExampleScenario: 'ExampleScenario',
  FHIRAllTypes.ExplanationOfBenefit: 'ExplanationOfBenefit',
  FHIRAllTypes.FamilyMemberHistory: 'FamilyMemberHistory',
  FHIRAllTypes.Flag: 'Flag',
  FHIRAllTypes.Goal: 'Goal',
  FHIRAllTypes.GraphDefinition: 'GraphDefinition',
  FHIRAllTypes.Group: 'Group',
  FHIRAllTypes.GuidanceResponse: 'GuidanceResponse',
  FHIRAllTypes.HealthcareService: 'HealthcareService',
  FHIRAllTypes.ImagingStudy: 'ImagingStudy',
  FHIRAllTypes.Immunization: 'Immunization',
  FHIRAllTypes.ImmunizationEvaluation: 'ImmunizationEvaluation',
  FHIRAllTypes.ImmunizationRecommendation: 'ImmunizationRecommendation',
  FHIRAllTypes.ImplementationGuide: 'ImplementationGuide',
  FHIRAllTypes.Ingredient: 'Ingredient',
  FHIRAllTypes.InsurancePlan: 'InsurancePlan',
  FHIRAllTypes.Invoice: 'Invoice',
  FHIRAllTypes.Library: 'Library',
  FHIRAllTypes.Linkage: 'Linkage',
  FHIRAllTypes.List: 'List',
  FHIRAllTypes.Location: 'Location',
  FHIRAllTypes.ManufacturedItemDefinition: 'ManufacturedItemDefinition',
  FHIRAllTypes.Measure: 'Measure',
  FHIRAllTypes.MeasureReport: 'MeasureReport',
  FHIRAllTypes.Media: 'Media',
  FHIRAllTypes.Medication: 'Medication',
  FHIRAllTypes.MedicationAdministration: 'MedicationAdministration',
  FHIRAllTypes.MedicationDispense: 'MedicationDispense',
  FHIRAllTypes.MedicationKnowledge: 'MedicationKnowledge',
  FHIRAllTypes.MedicationRequest: 'MedicationRequest',
  FHIRAllTypes.MedicationStatement: 'MedicationStatement',
  FHIRAllTypes.MedicinalProductDefinition: 'MedicinalProductDefinition',
  FHIRAllTypes.MessageDefinition: 'MessageDefinition',
  FHIRAllTypes.MessageHeader: 'MessageHeader',
  FHIRAllTypes.MolecularSequence: 'MolecularSequence',
  FHIRAllTypes.NamingSystem: 'NamingSystem',
  FHIRAllTypes.NutritionOrder: 'NutritionOrder',
  FHIRAllTypes.NutritionProduct: 'NutritionProduct',
  FHIRAllTypes.Observation: 'Observation',
  FHIRAllTypes.ObservationDefinition: 'ObservationDefinition',
  FHIRAllTypes.OperationDefinition: 'OperationDefinition',
  FHIRAllTypes.OperationOutcome: 'OperationOutcome',
  FHIRAllTypes.Organization: 'Organization',
  FHIRAllTypes.OrganizationAffiliation: 'OrganizationAffiliation',
  FHIRAllTypes.PackagedProductDefinition: 'PackagedProductDefinition',
  FHIRAllTypes.Patient: 'Patient',
  FHIRAllTypes.PaymentNotice: 'PaymentNotice',
  FHIRAllTypes.PaymentReconciliation: 'PaymentReconciliation',
  FHIRAllTypes.Person: 'Person',
  FHIRAllTypes.PlanDefinition: 'PlanDefinition',
  FHIRAllTypes.Practitioner: 'Practitioner',
  FHIRAllTypes.PractitionerRole: 'PractitionerRole',
  FHIRAllTypes.Procedure: 'Procedure',
  FHIRAllTypes.Provenance: 'Provenance',
  FHIRAllTypes.Questionnaire: 'Questionnaire',
  FHIRAllTypes.QuestionnaireResponse: 'QuestionnaireResponse',
  FHIRAllTypes.RegulatedAuthorization: 'RegulatedAuthorization',
  FHIRAllTypes.RelatedPerson: 'RelatedPerson',
  FHIRAllTypes.RequestGroup: 'RequestGroup',
  FHIRAllTypes.ResearchDefinition: 'ResearchDefinition',
  FHIRAllTypes.ResearchElementDefinition: 'ResearchElementDefinition',
  FHIRAllTypes.ResearchStudy: 'ResearchStudy',
  FHIRAllTypes.ResearchSubject: 'ResearchSubject',
  FHIRAllTypes.RiskAssessment: 'RiskAssessment',
  FHIRAllTypes.Schedule: 'Schedule',
  FHIRAllTypes.SearchParameter: 'SearchParameter',
  FHIRAllTypes.ServiceRequest: 'ServiceRequest',
  FHIRAllTypes.Slot: 'Slot',
  FHIRAllTypes.Specimen: 'Specimen',
  FHIRAllTypes.SpecimenDefinition: 'SpecimenDefinition',
  FHIRAllTypes.StructureDefinition: 'StructureDefinition',
  FHIRAllTypes.StructureMap: 'StructureMap',
  FHIRAllTypes.Subscription: 'Subscription',
  FHIRAllTypes.SubscriptionStatus: 'SubscriptionStatus',
  FHIRAllTypes.SubscriptionTopic: 'SubscriptionTopic',
  FHIRAllTypes.Substance: 'Substance',
  FHIRAllTypes.SubstanceDefinition: 'SubstanceDefinition',
  FHIRAllTypes.SupplyDelivery: 'SupplyDelivery',
  FHIRAllTypes.SupplyRequest: 'SupplyRequest',
  FHIRAllTypes.Task: 'Task',
  FHIRAllTypes.TerminologyCapabilities: 'TerminologyCapabilities',
  FHIRAllTypes.TestReport: 'TestReport',
  FHIRAllTypes.TestScript: 'TestScript',
  FHIRAllTypes.ValueSet: 'ValueSet',
  FHIRAllTypes.VerificationResult: 'VerificationResult',
  FHIRAllTypes.VisionPrescription: 'VisionPrescription',
  FHIRAllTypes.Parameters: 'Parameters',
  FHIRAllTypes.Type: 'Type',
  FHIRAllTypes.Any: 'Any',
};

const _$SearchParamTypeEnumMap = {
  SearchParamType.number: 'number',
  SearchParamType.date: 'date',
  SearchParamType.string: 'string',
  SearchParamType.token: 'token',
  SearchParamType.reference: 'reference',
  SearchParamType.composite: 'composite',
  SearchParamType.quantity: 'quantity',
  SearchParamType.uri: 'uri',
  SearchParamType.special: 'special',
};

OperationDefinitionBinding _$OperationDefinitionBindingFromJson(
        Map<String, dynamic> json) =>
    OperationDefinitionBinding(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      strength: $enumDecode(_$BindingStrengthEnumMap, json['strength']),
      strengthElement: json['_strength'] == null
          ? null
          : Element.fromJson(json['_strength'] as Map<String, dynamic>),
      valueSet: FhirCanonical.fromJson(json['valueSet']),
      valueSetElement: json['_valueSet'] == null
          ? null
          : Element.fromJson(json['_valueSet'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$OperationDefinitionBindingToJson(
    OperationDefinitionBinding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['strength'] = instance.strength.toJson();
  writeNotNull('_strength', instance.strengthElement?.toJson());
  val['valueSet'] = instance.valueSet.toJson();
  writeNotNull('_valueSet', instance.valueSetElement?.toJson());
  return val;
}

const _$BindingStrengthEnumMap = {
  BindingStrength.required_: 'required',
  BindingStrength.extensible: 'extensible',
  BindingStrength.preferred: 'preferred',
  BindingStrength.example: 'example',
};

OperationDefinitionReferencedFrom _$OperationDefinitionReferencedFromFromJson(
        Map<String, dynamic> json) =>
    OperationDefinitionReferencedFrom(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: FhirString.fromJson(json['source']),
      sourceElement: json['_source'] == null
          ? null
          : Element.fromJson(json['_source'] as Map<String, dynamic>),
      sourceId: json['sourceId'] == null
          ? null
          : FhirString.fromJson(json['sourceId']),
      sourceIdElement: json['_sourceId'] == null
          ? null
          : Element.fromJson(json['_sourceId'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$OperationDefinitionReferencedFromToJson(
    OperationDefinitionReferencedFrom instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['source'] = instance.source.toJson();
  writeNotNull('_source', instance.sourceElement?.toJson());
  writeNotNull('sourceId', instance.sourceId?.toJson());
  writeNotNull('_sourceId', instance.sourceIdElement?.toJson());
  return val;
}

OperationDefinitionOverload _$OperationDefinitionOverloadFromJson(
        Map<String, dynamic> json) =>
    OperationDefinitionOverload(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameterName: (json['parameterName'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      parameterNameElement: (json['_parameterName'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment:
          json['comment'] == null ? null : FhirString.fromJson(json['comment']),
      commentElement: json['_comment'] == null
          ? null
          : Element.fromJson(json['_comment'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$OperationDefinitionOverloadToJson(
    OperationDefinitionOverload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull(
      'parameterName', instance.parameterName?.map((e) => e.toJson()).toList());
  writeNotNull('_parameterName',
      instance.parameterNameElement?.map((e) => e.toJson()).toList());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('_comment', instance.commentElement?.toJson());
  return val;
}
