// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_element_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResearchElementDefinition _$ResearchElementDefinitionFromJson(
        Map<String, dynamic> json) =>
    ResearchElementDefinition(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] == null ? null : FhirString.fromJson(json['title']),
      titleElement: json['_title'] == null
          ? null
          : Element.fromJson(json['_title'] as Map<String, dynamic>),
      shortTitle: json['shortTitle'] == null
          ? null
          : FhirString.fromJson(json['shortTitle']),
      shortTitleElement: json['_shortTitle'] == null
          ? null
          : Element.fromJson(json['_shortTitle'] as Map<String, dynamic>),
      subtitle: json['subtitle'] == null
          ? null
          : FhirString.fromJson(json['subtitle']),
      subtitleElement: json['_subtitle'] == null
          ? null
          : Element.fromJson(json['_subtitle'] as Map<String, dynamic>),
      status: $enumDecode(_$PublicationStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      experimental: json['experimental'] == null
          ? null
          : FhirBoolean.fromJson(json['experimental']),
      experimentalElement: json['_experimental'] == null
          ? null
          : Element.fromJson(json['_experimental'] as Map<String, dynamic>),
      subjectCodeableConcept: $enumDecodeNullable(
          _$SubjectTypeEnumMap, json['subjectCodeableConcept']),
      subjectReference:
          $enumDecodeNullable(_$SubjectTypeEnumMap, json['subjectReference']),
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
      comment: (json['comment'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      commentElement: (json['_comment'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      usage: json['usage'] == null ? null : FhirString.fromJson(json['usage']),
      usageElement: json['_usage'] == null
          ? null
          : Element.fromJson(json['_usage'] as Map<String, dynamic>),
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : Element.fromJson(json['_copyright'] as Map<String, dynamic>),
      approvalDate: json['approvalDate'] == null
          ? null
          : FhirDate.fromJson(json['approvalDate'] as String),
      approvalDateElement: json['_approvalDate'] == null
          ? null
          : Element.fromJson(json['_approvalDate'] as Map<String, dynamic>),
      lastReviewDate: json['lastReviewDate'] == null
          ? null
          : FhirDate.fromJson(json['lastReviewDate'] as String),
      lastReviewDateElement: json['_lastReviewDate'] == null
          ? null
          : Element.fromJson(json['_lastReviewDate'] as Map<String, dynamic>),
      effectivePeriod: json['effectivePeriod'] == null
          ? null
          : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DefinitionTopicEnumMap, e))
          .toList(),
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      editor: (json['editor'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      endorser: (json['endorser'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>))
          .toList(),
      library_: (json['library'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      libraryElement: (json['_library'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$ResearchElementTypeEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      variableType:
          $enumDecodeNullable(_$VariableTypeEnumMap, json['variableType']),
      variableTypeElement: json['_variableType'] == null
          ? null
          : Element.fromJson(json['_variableType'] as Map<String, dynamic>),
      characteristic: (json['characteristic'] as List<dynamic>)
          .map((e) => ResearchElementDefinitionCharacteristic.fromJson(
              e as Map<String, dynamic>))
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

Map<String, dynamic> _$ResearchElementDefinitionToJson(
    ResearchElementDefinition instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('shortTitle', instance.shortTitle?.toJson());
  writeNotNull('_shortTitle', instance.shortTitleElement?.toJson());
  writeNotNull('subtitle', instance.subtitle?.toJson());
  writeNotNull('_subtitle', instance.subtitleElement?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  writeNotNull(
      'subjectCodeableConcept', instance.subjectCodeableConcept?.toJson());
  writeNotNull('subjectReference', instance.subjectReference?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('_publisher', instance.publisherElement?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('comment', instance.comment?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_comment', instance.commentElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('_purpose', instance.purposeElement?.toJson());
  writeNotNull('usage', instance.usage?.toJson());
  writeNotNull('_usage', instance.usageElement?.toJson());
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  writeNotNull('approvalDate', instance.approvalDate?.toJson());
  writeNotNull('_approvalDate', instance.approvalDateElement?.toJson());
  writeNotNull('lastReviewDate', instance.lastReviewDate?.toJson());
  writeNotNull('_lastReviewDate', instance.lastReviewDateElement?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('topic', instance.topic?.map((e) => e.toJson()).toList());
  writeNotNull('author', instance.author?.map((e) => e.toJson()).toList());
  writeNotNull('editor', instance.editor?.map((e) => e.toJson()).toList());
  writeNotNull('reviewer', instance.reviewer?.map((e) => e.toJson()).toList());
  writeNotNull('endorser', instance.endorser?.map((e) => e.toJson()).toList());
  writeNotNull('relatedArtifact',
      instance.relatedArtifact?.map((e) => e.toJson()).toList());
  writeNotNull('library', instance.library_?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_library', instance.libraryElement?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('variableType', instance.variableType?.toJson());
  writeNotNull('_variableType', instance.variableTypeElement?.toJson());
  val['characteristic'] =
      instance.characteristic.map((e) => e.toJson()).toList();
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

const _$SubjectTypeEnumMap = {
  SubjectType.Patient: 'Patient',
  SubjectType.Practitioner: 'Practitioner',
  SubjectType.Organization: 'Organization',
  SubjectType.Location: 'Location',
  SubjectType.Device: 'Device',
};

const _$DefinitionTopicEnumMap = {
  DefinitionTopic.treatment: 'treatment',
  DefinitionTopic.education: 'education',
  DefinitionTopic.assessment: 'assessment',
};

const _$ResearchElementTypeEnumMap = {
  ResearchElementType.population: 'population',
  ResearchElementType.exposure: 'exposure',
  ResearchElementType.outcome: 'outcome',
};

const _$VariableTypeEnumMap = {
  VariableType.dichotomous: 'dichotomous',
  VariableType.continuous: 'continuous',
  VariableType.descriptive: 'descriptive',
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

ResearchElementDefinitionCharacteristic
    _$ResearchElementDefinitionCharacteristicFromJson(
            Map<String, dynamic> json) =>
        ResearchElementDefinitionCharacteristic(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          definitionCodeableConcept: CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>),
          definitionCanonical:
              FhirCanonical.fromJson(json['definitionCanonical']),
          definitionCanonicalElement: json['_definitionCanonical'] == null
              ? null
              : Element.fromJson(
                  json['_definitionCanonical'] as Map<String, dynamic>),
          definitionExpression: FhirExpression.fromJson(
              json['definitionExpression'] as Map<String, dynamic>),
          definitionDataRequirement: DataRequirement.fromJson(
              json['definitionDataRequirement'] as Map<String, dynamic>),
          usageContext: (json['usageContext'] as List<dynamic>?)
              ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
              .toList(),
          exclude: json['exclude'] == null
              ? null
              : FhirBoolean.fromJson(json['exclude']),
          excludeElement: json['_exclude'] == null
              ? null
              : Element.fromJson(json['_exclude'] as Map<String, dynamic>),
          unitOfMeasure: json['unitOfMeasure'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['unitOfMeasure'] as Map<String, dynamic>),
          studyEffectiveDescription: json['studyEffectiveDescription'] == null
              ? null
              : FhirString.fromJson(json['studyEffectiveDescription']),
          studyEffectiveDescriptionElement:
              json['_studyEffectiveDescription'] == null
                  ? null
                  : Element.fromJson(json['_studyEffectiveDescription']
                      as Map<String, dynamic>),
          studyEffectiveDateTime: json['studyEffectiveDateTime'] == null
              ? null
              : FhirDateTime.fromJson(json['studyEffectiveDateTime'] as String),
          studyEffectiveDateTimeElement: json['_studyEffectiveDateTime'] == null
              ? null
              : Element.fromJson(
                  json['_studyEffectiveDateTime'] as Map<String, dynamic>),
          studyEffectivePeriod: json['studyEffectivePeriod'] == null
              ? null
              : Period.fromJson(
                  json['studyEffectivePeriod'] as Map<String, dynamic>),
          studyEffectiveDuration: json['studyEffectiveDuration'] == null
              ? null
              : FhirDuration.fromJson(
                  json['studyEffectiveDuration'] as Map<String, dynamic>),
          studyEffectiveTiming: json['studyEffectiveTiming'] == null
              ? null
              : Timing.fromJson(
                  json['studyEffectiveTiming'] as Map<String, dynamic>),
          studyEffectiveTimeFromStart: json['studyEffectiveTimeFromStart'] ==
                  null
              ? null
              : FhirDuration.fromJson(
                  json['studyEffectiveTimeFromStart'] as Map<String, dynamic>),
          studyEffectiveGroupMeasure: $enumDecodeNullable(
              _$GroupMeasureEnumMap, json['studyEffectiveGroupMeasure']),
          studyEffectiveGroupMeasureElement:
              json['_studyEffectiveGroupMeasure'] == null
                  ? null
                  : Element.fromJson(json['_studyEffectiveGroupMeasure']
                      as Map<String, dynamic>),
          participantEffectiveDescription:
              json['participantEffectiveDescription'] == null
                  ? null
                  : FhirString.fromJson(
                      json['participantEffectiveDescription']),
          participantEffectiveDescriptionElement:
              json['_participantEffectiveDescription'] == null
                  ? null
                  : Element.fromJson(json['_participantEffectiveDescription']
                      as Map<String, dynamic>),
          participantEffectiveDateTime:
              json['participantEffectiveDateTime'] == null
                  ? null
                  : FhirDateTime.fromJson(
                      json['participantEffectiveDateTime'] as String),
          participantEffectiveDateTimeElement:
              json['_participantEffectiveDateTime'] == null
                  ? null
                  : Element.fromJson(json['_participantEffectiveDateTime']
                      as Map<String, dynamic>),
          participantEffectivePeriod: json['participantEffectivePeriod'] == null
              ? null
              : Period.fromJson(
                  json['participantEffectivePeriod'] as Map<String, dynamic>),
          participantEffectiveDuration: json['participantEffectiveDuration'] ==
                  null
              ? null
              : FhirDuration.fromJson(
                  json['participantEffectiveDuration'] as Map<String, dynamic>),
          participantEffectiveTiming: json['participantEffectiveTiming'] == null
              ? null
              : Timing.fromJson(
                  json['participantEffectiveTiming'] as Map<String, dynamic>),
          participantEffectiveTimeFromStart:
              json['participantEffectiveTimeFromStart'] == null
                  ? null
                  : FhirDuration.fromJson(
                      json['participantEffectiveTimeFromStart']
                          as Map<String, dynamic>),
          participantEffectiveGroupMeasure: $enumDecodeNullable(
              _$GroupMeasureEnumMap, json['participantEffectiveGroupMeasure']),
          participantEffectiveGroupMeasureElement:
              json['_participantEffectiveGroupMeasure'] == null
                  ? null
                  : Element.fromJson(json['_participantEffectiveGroupMeasure']
                      as Map<String, dynamic>),
          userData: json['userData'] as Map<String, dynamic>?,
          formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          annotations: json['annotations'] as List<dynamic>?,
          children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList(),
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ),
        );

Map<String, dynamic> _$ResearchElementDefinitionCharacteristicToJson(
    ResearchElementDefinitionCharacteristic instance) {
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
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['definitionCodeableConcept'] =
      instance.definitionCodeableConcept.toJson();
  val['definitionCanonical'] = instance.definitionCanonical.toJson();
  writeNotNull(
      '_definitionCanonical', instance.definitionCanonicalElement?.toJson());
  val['definitionExpression'] = instance.definitionExpression.toJson();
  val['definitionDataRequirement'] =
      instance.definitionDataRequirement.toJson();
  writeNotNull(
      'usageContext', instance.usageContext?.map((e) => e.toJson()).toList());
  writeNotNull('exclude', instance.exclude?.toJson());
  writeNotNull('_exclude', instance.excludeElement?.toJson());
  writeNotNull('unitOfMeasure', instance.unitOfMeasure?.toJson());
  writeNotNull('studyEffectiveDescription',
      instance.studyEffectiveDescription?.toJson());
  writeNotNull('_studyEffectiveDescription',
      instance.studyEffectiveDescriptionElement?.toJson());
  writeNotNull(
      'studyEffectiveDateTime', instance.studyEffectiveDateTime?.toJson());
  writeNotNull('_studyEffectiveDateTime',
      instance.studyEffectiveDateTimeElement?.toJson());
  writeNotNull('studyEffectivePeriod', instance.studyEffectivePeriod?.toJson());
  writeNotNull(
      'studyEffectiveDuration', instance.studyEffectiveDuration?.toJson());
  writeNotNull('studyEffectiveTiming', instance.studyEffectiveTiming?.toJson());
  writeNotNull('studyEffectiveTimeFromStart',
      instance.studyEffectiveTimeFromStart?.toJson());
  writeNotNull('studyEffectiveGroupMeasure',
      instance.studyEffectiveGroupMeasure?.toJson());
  writeNotNull('_studyEffectiveGroupMeasure',
      instance.studyEffectiveGroupMeasureElement?.toJson());
  writeNotNull('participantEffectiveDescription',
      instance.participantEffectiveDescription?.toJson());
  writeNotNull('_participantEffectiveDescription',
      instance.participantEffectiveDescriptionElement?.toJson());
  writeNotNull('participantEffectiveDateTime',
      instance.participantEffectiveDateTime?.toJson());
  writeNotNull('_participantEffectiveDateTime',
      instance.participantEffectiveDateTimeElement?.toJson());
  writeNotNull('participantEffectivePeriod',
      instance.participantEffectivePeriod?.toJson());
  writeNotNull('participantEffectiveDuration',
      instance.participantEffectiveDuration?.toJson());
  writeNotNull('participantEffectiveTiming',
      instance.participantEffectiveTiming?.toJson());
  writeNotNull('participantEffectiveTimeFromStart',
      instance.participantEffectiveTimeFromStart?.toJson());
  writeNotNull('participantEffectiveGroupMeasure',
      instance.participantEffectiveGroupMeasure?.toJson());
  writeNotNull('_participantEffectiveGroupMeasure',
      instance.participantEffectiveGroupMeasureElement?.toJson());
  return val;
}

const _$GroupMeasureEnumMap = {
  GroupMeasure.mean: 'mean',
  GroupMeasure.median: 'median',
  GroupMeasure.mean_of_mean: 'mean-of-mean',
  GroupMeasure.mean_of_median: 'mean-of-median',
  GroupMeasure.median_of_mean: 'median-of-mean',
  GroupMeasure.median_of_median: 'median-of-median',
};
