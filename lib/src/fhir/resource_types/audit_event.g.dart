// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuditEvent _$AuditEventFromJson(Map<String, dynamic> json) => AuditEvent(
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
      type: $enumDecode(_$AuditEventIDEnumMap, json['type']),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AuditEventSubTypeEnumMap, e))
          .toList(),
      action: $enumDecodeNullable(_$AuditEventActionEnumMap, json['action']),
      actionElement: json['_action'] == null
          ? null
          : Element.fromJson(json['_action'] as Map<String, dynamic>),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      recorded: FhirInstant.fromJson(json['recorded'] as String),
      recordedElement: json['_recorded'] == null
          ? null
          : Element.fromJson(json['_recorded'] as Map<String, dynamic>),
      outcome: $enumDecodeNullable(_$AuditEventOutcomeEnumMap, json['outcome']),
      outcomeElement: json['_outcome'] == null
          ? null
          : Element.fromJson(json['_outcome'] as Map<String, dynamic>),
      outcomeDesc: json['outcomeDesc'] == null
          ? null
          : FhirString.fromJson(json['outcomeDesc']),
      outcomeDescElement: json['_outcomeDesc'] == null
          ? null
          : Element.fromJson(json['_outcomeDesc'] as Map<String, dynamic>),
      purposeOfEvent: (json['purposeOfEvent'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      agent: (json['agent'] as List<dynamic>)
          .map((e) => AuditEventAgent.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: AuditEventSource.fromJson(json['source'] as Map<String, dynamic>),
      entity: (json['entity'] as List<dynamic>?)
          ?.map((e) => AuditEventEntity.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$AuditEventToJson(AuditEvent instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('subtype', instance.subtype?.map((e) => e.toJson()).toList());
  writeNotNull('action', instance.action?.toJson());
  writeNotNull('_action', instance.actionElement?.toJson());
  writeNotNull('period', instance.period?.toJson());
  val['recorded'] = instance.recorded.toJson();
  writeNotNull('_recorded', instance.recordedElement?.toJson());
  writeNotNull('outcome', instance.outcome?.toJson());
  writeNotNull('_outcome', instance.outcomeElement?.toJson());
  writeNotNull('outcomeDesc', instance.outcomeDesc?.toJson());
  writeNotNull('_outcomeDesc', instance.outcomeDescElement?.toJson());
  writeNotNull('purposeOfEvent',
      instance.purposeOfEvent?.map((e) => e.toJson()).toList());
  val['agent'] = instance.agent.map((e) => e.toJson()).toList();
  val['source'] = instance.source.toJson();
  writeNotNull('entity', instance.entity?.map((e) => e.toJson()).toList());
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

const _$AuditEventIDEnumMap = {
  AuditEventID.value110100: '110100',
  AuditEventID.value110101: '110101',
  AuditEventID.value110102: '110102',
  AuditEventID.value110103: '110103',
  AuditEventID.value110104: '110104',
  AuditEventID.value110105: '110105',
  AuditEventID.value110106: '110106',
  AuditEventID.value110107: '110107',
  AuditEventID.value110108: '110108',
  AuditEventID.value110109: '110109',
  AuditEventID.value110110: '110110',
  AuditEventID.value110111: '110111',
  AuditEventID.value110112: '110112',
  AuditEventID.value110113: '110113',
  AuditEventID.value110114: '110114',
  AuditEventID.rest: 'rest',
  AuditEventID.access: 'access',
  AuditEventID.hold: 'hold',
  AuditEventID.amend: 'amend',
  AuditEventID.archive: 'archive',
  AuditEventID.attest: 'attest',
  AuditEventID.decrypt: 'decrypt',
  AuditEventID.deidentify: 'deidentify',
  AuditEventID.deprecate: 'deprecate',
  AuditEventID.destroy: 'destroy',
  AuditEventID.disclose: 'disclose',
  AuditEventID.encrypt: 'encrypt',
  AuditEventID.extract: 'extract',
  AuditEventID.link: 'link',
  AuditEventID.merge: 'merge',
  AuditEventID.originate: 'originate',
  AuditEventID.pseudonymize: 'pseudonymize',
  AuditEventID.reactivate: 'reactivate',
  AuditEventID.receive: 'receive',
  AuditEventID.reidentify: 'reidentify',
  AuditEventID.unhold: 'unhold',
  AuditEventID.report: 'report',
  AuditEventID.restore: 'restore',
  AuditEventID.transform: 'transform',
  AuditEventID.transmit: 'transmit',
  AuditEventID.unlink: 'unlink',
  AuditEventID.unmerge: 'unmerge',
  AuditEventID.verify: 'verify',
};

const _$AuditEventSubTypeEnumMap = {
  AuditEventSubType.value110120: '110120',
  AuditEventSubType.value110121: '110121',
  AuditEventSubType.value110122: '110122',
  AuditEventSubType.value110123: '110123',
  AuditEventSubType.value110124: '110124',
  AuditEventSubType.value110125: '110125',
  AuditEventSubType.value110126: '110126',
  AuditEventSubType.value110127: '110127',
  AuditEventSubType.value110128: '110128',
  AuditEventSubType.value110129: '110129',
  AuditEventSubType.value110130: '110130',
  AuditEventSubType.value110131: '110131',
  AuditEventSubType.value110132: '110132',
  AuditEventSubType.value110133: '110133',
  AuditEventSubType.value110134: '110134',
  AuditEventSubType.value110135: '110135',
  AuditEventSubType.value110136: '110136',
  AuditEventSubType.value110137: '110137',
  AuditEventSubType.value110138: '110138',
  AuditEventSubType.value110139: '110139',
  AuditEventSubType.value110140: '110140',
  AuditEventSubType.value110141: '110141',
  AuditEventSubType.value110142: '110142',
  AuditEventSubType.read: 'read',
  AuditEventSubType.vread: 'vread',
  AuditEventSubType.update: 'update',
  AuditEventSubType.patch: 'patch',
  AuditEventSubType.delete: 'delete',
  AuditEventSubType.history: 'history',
  AuditEventSubType.create: 'create',
  AuditEventSubType.search: 'search',
  AuditEventSubType.capabilities: 'capabilities',
  AuditEventSubType.transaction: 'transaction',
  AuditEventSubType.batch: 'batch',
  AuditEventSubType.operation: 'operation',
};

const _$AuditEventActionEnumMap = {
  AuditEventAction.C: 'C',
  AuditEventAction.R: 'R',
  AuditEventAction.U: 'U',
  AuditEventAction.D: 'D',
  AuditEventAction.E: 'E',
};

const _$AuditEventOutcomeEnumMap = {
  AuditEventOutcome.value0: '0',
  AuditEventOutcome.value4: '4',
  AuditEventOutcome.value8: '8',
  AuditEventOutcome.value12: '12',
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

AuditEventAgent _$AuditEventAgentFromJson(Map<String, dynamic> json) =>
    AuditEventAgent(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$ParticipationRoleTypeEnumMap, json['type']),
      role: (json['role'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SecurityRoleTypeEnumMap, e))
          .toList(),
      who: json['who'] == null
          ? null
          : Reference.fromJson(json['who'] as Map<String, dynamic>),
      altId: json['altId'] == null ? null : FhirString.fromJson(json['altId']),
      altIdElement: json['_altId'] == null
          ? null
          : Element.fromJson(json['_altId'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      requestor: FhirBoolean.fromJson(json['requestor']),
      requestorElement: json['_requestor'] == null
          ? null
          : Element.fromJson(json['_requestor'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Reference.fromJson(json['location'] as Map<String, dynamic>),
      policy:
          (json['policy'] as List<dynamic>?)?.map(FhirUri.fromJson).toList(),
      policyElement: (json['_policy'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: $enumDecodeNullable(_$MediaTypeCodeEnumMap, json['media']),
      network: json['network'] == null
          ? null
          : AuditEventNetwork.fromJson(json['network'] as Map<String, dynamic>),
      purposeOfUse: (json['purposeOfUse'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$AuditEventAgentToJson(AuditEventAgent instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('role', instance.role?.map((e) => e.toJson()).toList());
  writeNotNull('who', instance.who?.toJson());
  writeNotNull('altId', instance.altId?.toJson());
  writeNotNull('_altId', instance.altIdElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  val['requestor'] = instance.requestor.toJson();
  writeNotNull('_requestor', instance.requestorElement?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('policy', instance.policy?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_policy', instance.policyElement?.map((e) => e.toJson()).toList());
  writeNotNull('media', instance.media?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull(
      'purposeOfUse', instance.purposeOfUse?.map((e) => e.toJson()).toList());
  return val;
}

const _$ParticipationRoleTypeEnumMap = {
  ParticipationRoleType.AMENDER: 'AMENDER',
  ParticipationRoleType.COAUTH: 'COAUTH',
  ParticipationRoleType.CONT: 'CONT',
  ParticipationRoleType.EVTWIT: 'EVTWIT',
  ParticipationRoleType.PRIMAUTH: 'PRIMAUTH',
  ParticipationRoleType.REVIEWER: 'REVIEWER',
  ParticipationRoleType.SOURCE: 'SOURCE',
  ParticipationRoleType.TRANS: 'TRANS',
  ParticipationRoleType.VALID: 'VALID',
  ParticipationRoleType.VERF: 'VERF',
  ParticipationRoleType.AFFL: 'AFFL',
  ParticipationRoleType.AGNT: 'AGNT',
  ParticipationRoleType.ASSIGNED: 'ASSIGNED',
  ParticipationRoleType.CLAIM: 'CLAIM',
  ParticipationRoleType.COVPTY: 'COVPTY',
  ParticipationRoleType.DEPEN: 'DEPEN',
  ParticipationRoleType.ECON: 'ECON',
  ParticipationRoleType.EMP: 'EMP',
  ParticipationRoleType.GUARD: 'GUARD',
  ParticipationRoleType.INVSBJ: 'INVSBJ',
  ParticipationRoleType.NAMED: 'NAMED',
  ParticipationRoleType.NOK: 'NOK',
  ParticipationRoleType.PAT: 'PAT',
  ParticipationRoleType.PROV: 'PROV',
  ParticipationRoleType.NOT: 'NOT',
  ParticipationRoleType.CLASSIFIER: 'CLASSIFIER',
  ParticipationRoleType.CONSENTER: 'CONSENTER',
  ParticipationRoleType.CONSWIT: 'CONSWIT',
  ParticipationRoleType.COPART: 'COPART',
  ParticipationRoleType.DECLASSIFIER: 'DECLASSIFIER',
  ParticipationRoleType.DELEGATEE: 'DELEGATEE',
  ParticipationRoleType.DELEGATOR: 'DELEGATOR',
  ParticipationRoleType.DOWNGRDER: 'DOWNGRDER',
  ParticipationRoleType.DPOWATT: 'DPOWATT',
  ParticipationRoleType.EXCEST: 'EXCEST',
  ParticipationRoleType.GRANTEE: 'GRANTEE',
  ParticipationRoleType.GRANTOR: 'GRANTOR',
  ParticipationRoleType.GT: 'GT',
  ParticipationRoleType.GUADLTM: 'GUADLTM',
  ParticipationRoleType.HPOWATT: 'HPOWATT',
  ParticipationRoleType.INTPRTER: 'INTPRTER',
  ParticipationRoleType.POWATT: 'POWATT',
  ParticipationRoleType.RESPRSN: 'RESPRSN',
  ParticipationRoleType.SPOWATT: 'SPOWATT',
  ParticipationRoleType.AUCG: 'AUCG',
  ParticipationRoleType.AULR: 'AULR',
  ParticipationRoleType.AUTM: 'AUTM',
  ParticipationRoleType.AUWA: 'AUWA',
  ParticipationRoleType.PROMSK: 'PROMSK',
  ParticipationRoleType.AUT: 'AUT',
  ParticipationRoleType.CST: 'CST',
  ParticipationRoleType.INF: 'INF',
  ParticipationRoleType.IRCP: 'IRCP',
  ParticipationRoleType.LA: 'LA',
  ParticipationRoleType.TRC: 'TRC',
  ParticipationRoleType.WIT: 'WIT',
  ParticipationRoleType.authserver: 'authserver',
  ParticipationRoleType.datacollector: 'datacollector',
  ParticipationRoleType.dataprocessor: 'dataprocessor',
  ParticipationRoleType.datasubject: 'datasubject',
  ParticipationRoleType.humanuser: 'humanuser',
  ParticipationRoleType.value110150: '110150',
  ParticipationRoleType.value110151: '110151',
  ParticipationRoleType.value110152: '110152',
  ParticipationRoleType.value110153: '110153',
  ParticipationRoleType.value110154: '110154',
  ParticipationRoleType.value110155: '110155',
};

const _$SecurityRoleTypeEnumMap = {
  SecurityRoleType.AMENDER: 'AMENDER',
  SecurityRoleType.COAUTH: 'COAUTH',
  SecurityRoleType.CONT: 'CONT',
  SecurityRoleType.EVTWIT: 'EVTWIT',
  SecurityRoleType.PRIMAUTH: 'PRIMAUTH',
  SecurityRoleType.REVIEWER: 'REVIEWER',
  SecurityRoleType.SOURCE: 'SOURCE',
  SecurityRoleType.TRANS: 'TRANS',
  SecurityRoleType.VALID: 'VALID',
  SecurityRoleType.VERF: 'VERF',
  SecurityRoleType.AFFL: 'AFFL',
  SecurityRoleType.AGNT: 'AGNT',
  SecurityRoleType.ASSIGNED: 'ASSIGNED',
  SecurityRoleType.CLAIM: 'CLAIM',
  SecurityRoleType.COVPTY: 'COVPTY',
  SecurityRoleType.DEPEN: 'DEPEN',
  SecurityRoleType.ECON: 'ECON',
  SecurityRoleType.EMP: 'EMP',
  SecurityRoleType.GUARD: 'GUARD',
  SecurityRoleType.INVSBJ: 'INVSBJ',
  SecurityRoleType.NAMED: 'NAMED',
  SecurityRoleType.NOK: 'NOK',
  SecurityRoleType.PAT: 'PAT',
  SecurityRoleType.PROV: 'PROV',
  SecurityRoleType.NOT: 'NOT',
  SecurityRoleType.CLASSIFIER: 'CLASSIFIER',
  SecurityRoleType.CONSENTER: 'CONSENTER',
  SecurityRoleType.CONSWIT: 'CONSWIT',
  SecurityRoleType.COPART: 'COPART',
  SecurityRoleType.DECLASSIFIER: 'DECLASSIFIER',
  SecurityRoleType.DELEGATEE: 'DELEGATEE',
  SecurityRoleType.DELEGATOR: 'DELEGATOR',
  SecurityRoleType.DOWNGRDER: 'DOWNGRDER',
  SecurityRoleType.DPOWATT: 'DPOWATT',
  SecurityRoleType.EXCEST: 'EXCEST',
  SecurityRoleType.GRANTEE: 'GRANTEE',
  SecurityRoleType.GRANTOR: 'GRANTOR',
  SecurityRoleType.GT: 'GT',
  SecurityRoleType.GUADLTM: 'GUADLTM',
  SecurityRoleType.HPOWATT: 'HPOWATT',
  SecurityRoleType.INTPRTER: 'INTPRTER',
  SecurityRoleType.POWATT: 'POWATT',
  SecurityRoleType.RESPRSN: 'RESPRSN',
  SecurityRoleType.SPOWATT: 'SPOWATT',
  SecurityRoleType.AUCG: 'AUCG',
  SecurityRoleType.AULR: 'AULR',
  SecurityRoleType.AUTM: 'AUTM',
  SecurityRoleType.AUWA: 'AUWA',
  SecurityRoleType.PROMSK: 'PROMSK',
  SecurityRoleType.AUT: 'AUT',
  SecurityRoleType.CST: 'CST',
  SecurityRoleType.INF: 'INF',
  SecurityRoleType.IRCP: 'IRCP',
  SecurityRoleType.LA: 'LA',
  SecurityRoleType.TRC: 'TRC',
  SecurityRoleType.WIT: 'WIT',
  SecurityRoleType.authserver: 'authserver',
  SecurityRoleType.datacollector: 'datacollector',
  SecurityRoleType.dataprocessor: 'dataprocessor',
  SecurityRoleType.datasubject: 'datasubject',
  SecurityRoleType.humanuser: 'humanuser',
  SecurityRoleType.value110150: '110150',
  SecurityRoleType.value110151: '110151',
  SecurityRoleType.value110152: '110152',
  SecurityRoleType.value110153: '110153',
  SecurityRoleType.value110154: '110154',
  SecurityRoleType.value110155: '110155',
};

const _$MediaTypeCodeEnumMap = {
  MediaTypeCode.value110030: '110030',
  MediaTypeCode.value110031: '110031',
  MediaTypeCode.value110032: '110032',
  MediaTypeCode.value110033: '110033',
  MediaTypeCode.value110034: '110034',
  MediaTypeCode.value110035: '110035',
  MediaTypeCode.value110036: '110036',
  MediaTypeCode.value110037: '110037',
  MediaTypeCode.value110010: '110010',
  MediaTypeCode.value110038: '110038',
};

AuditEventNetwork _$AuditEventNetworkFromJson(Map<String, dynamic> json) =>
    AuditEventNetwork(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      address:
          json['address'] == null ? null : FhirString.fromJson(json['address']),
      addressElement: json['_address'] == null
          ? null
          : Element.fromJson(json['_address'] as Map<String, dynamic>),
      type: $enumDecodeNullable(
          _$AuditEventAgentNetworkTypeEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
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

Map<String, dynamic> _$AuditEventNetworkToJson(AuditEventNetwork instance) {
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
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('_address', instance.addressElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  return val;
}

const _$AuditEventAgentNetworkTypeEnumMap = {
  AuditEventAgentNetworkType.value1: '1',
  AuditEventAgentNetworkType.value2: '2',
  AuditEventAgentNetworkType.value3: '3',
  AuditEventAgentNetworkType.value4: '4',
  AuditEventAgentNetworkType.value5: '5',
};

AuditEventSource _$AuditEventSourceFromJson(Map<String, dynamic> json) =>
    AuditEventSource(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      site: json['site'] == null ? null : FhirString.fromJson(json['site']),
      siteElement: json['_site'] == null
          ? null
          : Element.fromJson(json['_site'] as Map<String, dynamic>),
      observer: Reference.fromJson(json['observer'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AuditEventSourceTypeEnumMap, e))
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

Map<String, dynamic> _$AuditEventSourceToJson(AuditEventSource instance) {
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
  writeNotNull('site', instance.site?.toJson());
  writeNotNull('_site', instance.siteElement?.toJson());
  val['observer'] = instance.observer.toJson();
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  return val;
}

const _$AuditEventSourceTypeEnumMap = {
  AuditEventSourceType.value1: '1',
  AuditEventSourceType.value2: '2',
  AuditEventSourceType.value3: '3',
  AuditEventSourceType.value4: '4',
  AuditEventSourceType.value5: '5',
  AuditEventSourceType.value6: '6',
  AuditEventSourceType.value7: '7',
  AuditEventSourceType.value8: '8',
  AuditEventSourceType.value9: '9',
};

AuditEventEntity _$AuditEventEntityFromJson(Map<String, dynamic> json) =>
    AuditEventEntity(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      what: json['what'] == null
          ? null
          : Reference.fromJson(json['what'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$AuditEventEntityTypeEnumMap, json['type']),
      role: $enumDecodeNullable(_$AuditEventEntityRoleEnumMap, json['role']),
      lifecycle: $enumDecodeNullable(
          _$ObjectLifecycleEventsEnumMap, json['lifecycle']),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      query: json['query'] == null
          ? null
          : FhirBase64Binary.fromJson(json['query']),
      queryElement: json['_query'] == null
          ? null
          : Element.fromJson(json['_query'] as Map<String, dynamic>),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => AuditEventDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$AuditEventEntityToJson(AuditEventEntity instance) {
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
  writeNotNull('what', instance.what?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('lifecycle', instance.lifecycle?.toJson());
  writeNotNull(
      'securityLabel', instance.securityLabel?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('query', instance.query?.toJson());
  writeNotNull('_query', instance.queryElement?.toJson());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

const _$AuditEventEntityTypeEnumMap = {
  AuditEventEntityType.value1: '1',
  AuditEventEntityType.value2: '2',
  AuditEventEntityType.value3: '3',
  AuditEventEntityType.value4: '4',
  AuditEventEntityType.Resource: 'Resource',
};

const _$AuditEventEntityRoleEnumMap = {
  AuditEventEntityRole.value1: '1',
  AuditEventEntityRole.value2: '2',
  AuditEventEntityRole.value3: '3',
  AuditEventEntityRole.value4: '4',
  AuditEventEntityRole.value5: '5',
  AuditEventEntityRole.value6: '6',
  AuditEventEntityRole.value7: '7',
  AuditEventEntityRole.value8: '8',
  AuditEventEntityRole.value9: '9',
  AuditEventEntityRole.value10: '10',
  AuditEventEntityRole.value11: '11',
  AuditEventEntityRole.value12: '12',
  AuditEventEntityRole.value13: '13',
  AuditEventEntityRole.value14: '14',
  AuditEventEntityRole.value15: '15',
  AuditEventEntityRole.value16: '16',
  AuditEventEntityRole.value17: '17',
  AuditEventEntityRole.value18: '18',
  AuditEventEntityRole.value19: '19',
  AuditEventEntityRole.value20: '20',
  AuditEventEntityRole.value21: '21',
  AuditEventEntityRole.value22: '22',
  AuditEventEntityRole.value23: '23',
  AuditEventEntityRole.value24: '24',
};

const _$ObjectLifecycleEventsEnumMap = {
  ObjectLifecycleEvents.value1: '1',
  ObjectLifecycleEvents.value2: '2',
  ObjectLifecycleEvents.value3: '3',
  ObjectLifecycleEvents.value4: '4',
  ObjectLifecycleEvents.value5: '5',
  ObjectLifecycleEvents.value6: '6',
  ObjectLifecycleEvents.value7: '7',
  ObjectLifecycleEvents.value8: '8',
  ObjectLifecycleEvents.value9: '9',
  ObjectLifecycleEvents.value10: '10',
  ObjectLifecycleEvents.value11: '11',
  ObjectLifecycleEvents.value12: '12',
  ObjectLifecycleEvents.value13: '13',
  ObjectLifecycleEvents.value14: '14',
  ObjectLifecycleEvents.value15: '15',
  ObjectLifecycleEvents.access: 'access',
  ObjectLifecycleEvents.hold: 'hold',
  ObjectLifecycleEvents.amend: 'amend',
  ObjectLifecycleEvents.archive: 'archive',
  ObjectLifecycleEvents.attest: 'attest',
  ObjectLifecycleEvents.decrypt: 'decrypt',
  ObjectLifecycleEvents.deidentify: 'deidentify',
  ObjectLifecycleEvents.deprecate: 'deprecate',
  ObjectLifecycleEvents.destroy: 'destroy',
  ObjectLifecycleEvents.disclose: 'disclose',
  ObjectLifecycleEvents.encrypt: 'encrypt',
  ObjectLifecycleEvents.extract: 'extract',
  ObjectLifecycleEvents.link: 'link',
  ObjectLifecycleEvents.merge: 'merge',
  ObjectLifecycleEvents.originate: 'originate',
  ObjectLifecycleEvents.pseudonymize: 'pseudonymize',
  ObjectLifecycleEvents.reactivate: 'reactivate',
  ObjectLifecycleEvents.receive: 'receive',
  ObjectLifecycleEvents.reidentify: 'reidentify',
  ObjectLifecycleEvents.unhold: 'unhold',
  ObjectLifecycleEvents.report: 'report',
  ObjectLifecycleEvents.restore: 'restore',
  ObjectLifecycleEvents.transform: 'transform',
  ObjectLifecycleEvents.transmit: 'transmit',
  ObjectLifecycleEvents.unlink: 'unlink',
  ObjectLifecycleEvents.unmerge: 'unmerge',
  ObjectLifecycleEvents.verify: 'verify',
};

AuditEventDetail _$AuditEventDetailFromJson(Map<String, dynamic> json) =>
    AuditEventDetail(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirString.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      valueString: FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueBase64Binary: FhirBase64Binary.fromJson(json['valueBase64Binary']),
      valueBase64BinaryElement: json['_valueBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_valueBase64Binary'] as Map<String, dynamic>),
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

Map<String, dynamic> _$AuditEventDetailToJson(AuditEventDetail instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  val['valueString'] = instance.valueString.toJson();
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  val['valueBase64Binary'] = instance.valueBase64Binary.toJson();
  writeNotNull(
      '_valueBase64Binary', instance.valueBase64BinaryElement?.toJson());
  return val;
}
