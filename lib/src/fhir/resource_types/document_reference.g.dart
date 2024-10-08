// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentReference _$DocumentReferenceFromJson(Map<String, dynamic> json) =>
    DocumentReference(
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
      masterIdentifier: json['masterIdentifier'] == null
          ? null
          : Identifier.fromJson(
              json['masterIdentifier'] as Map<String, dynamic>),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$DocumentReferenceStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      docStatus:
          $enumDecodeNullable(_$CompositionStatusEnumMap, json['docStatus']),
      docStatusElement: json['_docStatus'] == null
          ? null
          : Element.fromJson(json['_docStatus'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DocumentClassValueSetEnumMap, e))
          .toList(),
      subject: json['subject'] == null
          ? null
          : Reference.fromJson(json['subject'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirInstant.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      authenticator: json['authenticator'] == null
          ? null
          : Reference.fromJson(json['authenticator'] as Map<String, dynamic>),
      custodian: json['custodian'] == null
          ? null
          : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
      relatesTo: (json['relatesTo'] as List<dynamic>?)
          ?.map((e) =>
              DocumentReferenceRelatesTo.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: (json['content'] as List<dynamic>)
          .map((e) =>
              DocumentReferenceContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      context: json['context'] == null
          ? null
          : DocumentReferenceContext.fromJson(
              json['context'] as Map<String, dynamic>),
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

Map<String, dynamic> _$DocumentReferenceToJson(DocumentReference instance) {
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
  writeNotNull('masterIdentifier', instance.masterIdentifier?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('docStatus', instance.docStatus?.toJson());
  writeNotNull('_docStatus', instance.docStatusElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('category', instance.category?.map((e) => e.toJson()).toList());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('author', instance.author?.map((e) => e.toJson()).toList());
  writeNotNull('authenticator', instance.authenticator?.toJson());
  writeNotNull('custodian', instance.custodian?.toJson());
  writeNotNull(
      'relatesTo', instance.relatesTo?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull(
      'securityLabel', instance.securityLabel?.map((e) => e.toJson()).toList());
  val['content'] = instance.content.map((e) => e.toJson()).toList();
  writeNotNull('context', instance.context?.toJson());
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

const _$DocumentReferenceStatusEnumMap = {
  DocumentReferenceStatus.current: 'current',
  DocumentReferenceStatus.superseded: 'superseded',
  DocumentReferenceStatus.entered_in_error: 'entered-in-error',
};

const _$CompositionStatusEnumMap = {
  CompositionStatus.preliminary: 'preliminary',
  CompositionStatus.final_: 'final',
  CompositionStatus.amended: 'amended',
  CompositionStatus.entered_in_error: 'entered-in-error',
};

const _$DocumentClassValueSetEnumMap = {
  DocumentClassValueSet.value11369_6: '11369-6',
  DocumentClassValueSet.value11485_0: '11485-0',
  DocumentClassValueSet.value11486_8: '11486-8',
  DocumentClassValueSet.value11488_4: '11488-4',
  DocumentClassValueSet.value11506_3: '11506-3',
  DocumentClassValueSet.value11543_6: '11543-6',
  DocumentClassValueSet.value15508_5: '15508-5',
  DocumentClassValueSet.value18726_0: '18726-0',
  DocumentClassValueSet.value18761_7: '18761-7',
  DocumentClassValueSet.value18842_5: '18842-5',
  DocumentClassValueSet.value26436_6: '26436-6',
  DocumentClassValueSet.value26441_6: '26441-6',
  DocumentClassValueSet.value26442_4: '26442-4',
  DocumentClassValueSet.value27895_2: '27895-2',
  DocumentClassValueSet.value27896_0: '27896-0',
  DocumentClassValueSet.value27897_8: '27897-8',
  DocumentClassValueSet.value27898_6: '27898-6',
  DocumentClassValueSet.value28570_0: '28570-0',
  DocumentClassValueSet.value28619_5: '28619-5',
  DocumentClassValueSet.value28634_4: '28634-4',
  DocumentClassValueSet.value29749_9: '29749-9',
  DocumentClassValueSet.value29750_7: '29750-7',
  DocumentClassValueSet.value29751_5: '29751-5',
  DocumentClassValueSet.value29752_3: '29752-3',
  DocumentClassValueSet.value34109_9: '34109-9',
  DocumentClassValueSet.value34117_2: '34117-2',
  DocumentClassValueSet.value34121_4: '34121-4',
  DocumentClassValueSet.value34122_2: '34122-2',
  DocumentClassValueSet.value34133_9: '34133-9',
  DocumentClassValueSet.value34140_4: '34140-4',
  DocumentClassValueSet.value34748_4: '34748-4',
  DocumentClassValueSet.value34775_7: '34775-7',
  DocumentClassValueSet.value47039_3: '47039-3',
  DocumentClassValueSet.value47042_7: '47042-7',
  DocumentClassValueSet.value47045_0: '47045-0',
  DocumentClassValueSet.value47046_8: '47046-8',
  DocumentClassValueSet.value47049_2: '47049-2',
  DocumentClassValueSet.value57017_6: '57017-6',
  DocumentClassValueSet.value57016_8: '57016-8',
  DocumentClassValueSet.value56445_0: '56445-0',
  DocumentClassValueSet.value53576_5: '53576-5',
  DocumentClassValueSet.value56447_6: '56447-6',
  DocumentClassValueSet.value18748_4: '18748-4',
  DocumentClassValueSet.value11504_8: '11504-8',
  DocumentClassValueSet.value57133_1: '57133-1',
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

DocumentReferenceRelatesTo _$DocumentReferenceRelatesToFromJson(
        Map<String, dynamic> json) =>
    DocumentReferenceRelatesTo(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: $enumDecode(_$DocumentRelationshipTypeEnumMap, json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      target: Reference.fromJson(json['target'] as Map<String, dynamic>),
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

Map<String, dynamic> _$DocumentReferenceRelatesToToJson(
    DocumentReferenceRelatesTo instance) {
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
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  val['target'] = instance.target.toJson();
  return val;
}

const _$DocumentRelationshipTypeEnumMap = {
  DocumentRelationshipType.replaces: 'replaces',
  DocumentRelationshipType.transforms: 'transforms',
  DocumentRelationshipType.signs: 'signs',
  DocumentRelationshipType.appends: 'appends',
};

DocumentReferenceContent _$DocumentReferenceContentFromJson(
        Map<String, dynamic> json) =>
    DocumentReferenceContent(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachment:
          Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
      format: json['format'] == null
          ? null
          : Coding.fromJson(json['format'] as Map<String, dynamic>),
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

Map<String, dynamic> _$DocumentReferenceContentToJson(
    DocumentReferenceContent instance) {
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
  val['attachment'] = instance.attachment.toJson();
  writeNotNull('format', instance.format?.toJson());
  return val;
}

DocumentReferenceContext _$DocumentReferenceContextFromJson(
        Map<String, dynamic> json) =>
    DocumentReferenceContext(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      facilityType: $enumDecodeNullable(
          _$FacilityTypeCodeValueSetEnumMap, json['facilityType']),
      practiceSetting: $enumDecodeNullable(
          _$PracticeSettingCodeValueSetEnumMap, json['practiceSetting']),
      sourcePatientInfo: json['sourcePatientInfo'] == null
          ? null
          : Reference.fromJson(
              json['sourcePatientInfo'] as Map<String, dynamic>),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$DocumentReferenceContextToJson(
    DocumentReferenceContext instance) {
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
  writeNotNull(
      'encounter', instance.encounter?.map((e) => e.toJson()).toList());
  writeNotNull('event', instance.event?.map((e) => e.toJson()).toList());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('facilityType', instance.facilityType?.toJson());
  writeNotNull('practiceSetting', instance.practiceSetting?.toJson());
  writeNotNull('sourcePatientInfo', instance.sourcePatientInfo?.toJson());
  writeNotNull('related', instance.related?.map((e) => e.toJson()).toList());
  return val;
}

const _$FacilityTypeCodeValueSetEnumMap = {
  FacilityTypeCodeValueSet.value82242000: '82242000',
  FacilityTypeCodeValueSet.value225732001: '225732001',
  FacilityTypeCodeValueSet.value79993009: '79993009',
  FacilityTypeCodeValueSet.value32074000: '32074000',
  FacilityTypeCodeValueSet.value4322002: '4322002',
  FacilityTypeCodeValueSet.value224687002: '224687002',
  FacilityTypeCodeValueSet.value62480006: '62480006',
  FacilityTypeCodeValueSet.value80522000: '80522000',
  FacilityTypeCodeValueSet.value36125001: '36125001',
  FacilityTypeCodeValueSet.value48311003: '48311003',
  FacilityTypeCodeValueSet.value284546000: '284546000',
  FacilityTypeCodeValueSet.value42665001: '42665001',
  FacilityTypeCodeValueSet.value45618002: '45618002',
  FacilityTypeCodeValueSet.value418518002: '418518002',
  FacilityTypeCodeValueSet.value73770003: '73770003',
  FacilityTypeCodeValueSet.value69362002: '69362002',
  FacilityTypeCodeValueSet.value52668009: '52668009',
  FacilityTypeCodeValueSet.value360957003: '360957003',
  FacilityTypeCodeValueSet.value10206005: '10206005',
  FacilityTypeCodeValueSet.value37550003: '37550003',
  FacilityTypeCodeValueSet.value73644007: '73644007',
  FacilityTypeCodeValueSet.value31628002: '31628002',
  FacilityTypeCodeValueSet.value58482006: '58482006',
  FacilityTypeCodeValueSet.value90484001: '90484001',
  FacilityTypeCodeValueSet.value1814000: '1814000',
  FacilityTypeCodeValueSet.value22549003: '22549003',
  FacilityTypeCodeValueSet.value56293002: '56293002',
  FacilityTypeCodeValueSet.value360966004: '360966004',
  FacilityTypeCodeValueSet.value2849009: '2849009',
  FacilityTypeCodeValueSet.value14866005: '14866005',
  FacilityTypeCodeValueSet.value38238005: '38238005',
  FacilityTypeCodeValueSet.value56189001: '56189001',
  FacilityTypeCodeValueSet.value89972002: '89972002',
  FacilityTypeCodeValueSet.value78088001: '78088001',
  FacilityTypeCodeValueSet.value78001009: '78001009',
  FacilityTypeCodeValueSet.value23392004: '23392004',
  FacilityTypeCodeValueSet.value36293008: '36293008',
  FacilityTypeCodeValueSet.value3729002: '3729002',
  FacilityTypeCodeValueSet.value5584006: '5584006',
  FacilityTypeCodeValueSet.value37546005: '37546005',
  FacilityTypeCodeValueSet.value57159002: '57159002',
  FacilityTypeCodeValueSet.value331006: '331006',
  FacilityTypeCodeValueSet.value50569004: '50569004',
  FacilityTypeCodeValueSet.value79491001: '79491001',
  FacilityTypeCodeValueSet.value33022008: '33022008',
  FacilityTypeCodeValueSet.value19602009: '19602009',
  FacilityTypeCodeValueSet.value39350007: '39350007',
  FacilityTypeCodeValueSet.value83891005: '83891005',
  FacilityTypeCodeValueSet.value394759007: '394759007',
  FacilityTypeCodeValueSet.value405607001: '405607001',
  FacilityTypeCodeValueSet.value309900005: '309900005',
  FacilityTypeCodeValueSet.value275576008: '275576008',
  FacilityTypeCodeValueSet.value10531005: '10531005',
  FacilityTypeCodeValueSet.value91154008: '91154008',
  FacilityTypeCodeValueSet.value41844007: '41844007',
  FacilityTypeCodeValueSet.value45899008: '45899008',
  FacilityTypeCodeValueSet.value51563005: '51563005',
  FacilityTypeCodeValueSet.value1773006: '1773006',
  FacilityTypeCodeValueSet.value72311000: '72311000',
  FacilityTypeCodeValueSet.value6827000: '6827000',
  FacilityTypeCodeValueSet.value309898008: '309898008',
  FacilityTypeCodeValueSet.value39913001: '39913001',
  FacilityTypeCodeValueSet.value77931003: '77931003',
  FacilityTypeCodeValueSet.value25681007: '25681007',
  FacilityTypeCodeValueSet.value20078004: '20078004',
  FacilityTypeCodeValueSet.value46224007: '46224007',
  FacilityTypeCodeValueSet.value81234003: '81234003',
  FacilityTypeCodeValueSet.value35971002: '35971002',
  FacilityTypeCodeValueSet.value11424001: '11424001',
  FacilityTypeCodeValueSet.value409519008: '409519008',
  FacilityTypeCodeValueSet.value901005: '901005',
  FacilityTypeCodeValueSet.value2081004: '2081004',
  FacilityTypeCodeValueSet.value59374000: '59374000',
  FacilityTypeCodeValueSet.value413456002: '413456002',
  FacilityTypeCodeValueSet.value413817003: '413817003',
  FacilityTypeCodeValueSet.value310205006: '310205006',
  FacilityTypeCodeValueSet.value419955002: '419955002',
  FacilityTypeCodeValueSet.value272501009: '272501009',
  FacilityTypeCodeValueSet.value394777002: '394777002',
};

const _$PracticeSettingCodeValueSetEnumMap = {
  PracticeSettingCodeValueSet.value408467006: '408467006',
  PracticeSettingCodeValueSet.value394577000: '394577000',
  PracticeSettingCodeValueSet.value394578005: '394578005',
  PracticeSettingCodeValueSet.value421661004: '421661004',
  PracticeSettingCodeValueSet.value408462000: '408462000',
  PracticeSettingCodeValueSet.value394579002: '394579002',
  PracticeSettingCodeValueSet.value394804000: '394804000',
  PracticeSettingCodeValueSet.value394580004: '394580004',
  PracticeSettingCodeValueSet.value394803006: '394803006',
  PracticeSettingCodeValueSet.value408480009: '408480009',
  PracticeSettingCodeValueSet.value408454008: '408454008',
  PracticeSettingCodeValueSet.value394809005: '394809005',
  PracticeSettingCodeValueSet.value394592004: '394592004',
  PracticeSettingCodeValueSet.value394600006: '394600006',
  PracticeSettingCodeValueSet.value394601005: '394601005',
  PracticeSettingCodeValueSet.value394581000: '394581000',
  PracticeSettingCodeValueSet.value408478003: '408478003',
  PracticeSettingCodeValueSet.value394812008: '394812008',
  PracticeSettingCodeValueSet.value408444009: '408444009',
  PracticeSettingCodeValueSet.value394582007: '394582007',
  PracticeSettingCodeValueSet.value408475000: '408475000',
  PracticeSettingCodeValueSet.value410005002: '410005002',
  PracticeSettingCodeValueSet.value394583002: '394583002',
  PracticeSettingCodeValueSet.value419772000: '419772000',
  PracticeSettingCodeValueSet.value394584008: '394584008',
  PracticeSettingCodeValueSet.value408443003: '408443003',
  PracticeSettingCodeValueSet.value394802001: '394802001',
  PracticeSettingCodeValueSet.value394915009: '394915009',
  PracticeSettingCodeValueSet.value394814009: '394814009',
  PracticeSettingCodeValueSet.value394808002: '394808002',
  PracticeSettingCodeValueSet.value394811001: '394811001',
  PracticeSettingCodeValueSet.value408446006: '408446006',
  PracticeSettingCodeValueSet.value394586005: '394586005',
  PracticeSettingCodeValueSet.value394916005: '394916005',
  PracticeSettingCodeValueSet.value408472002: '408472002',
  PracticeSettingCodeValueSet.value394597005: '394597005',
  PracticeSettingCodeValueSet.value394598000: '394598000',
  PracticeSettingCodeValueSet.value394807007: '394807007',
  PracticeSettingCodeValueSet.value419192003: '419192003',
  PracticeSettingCodeValueSet.value408468001: '408468001',
  PracticeSettingCodeValueSet.value394593009: '394593009',
  PracticeSettingCodeValueSet.value394813003: '394813003',
  PracticeSettingCodeValueSet.value410001006: '410001006',
  PracticeSettingCodeValueSet.value394589003: '394589003',
  PracticeSettingCodeValueSet.value394591006: '394591006',
  PracticeSettingCodeValueSet.value394599008: '394599008',
  PracticeSettingCodeValueSet.value394649004: '394649004',
  PracticeSettingCodeValueSet.value408470005: '408470005',
  PracticeSettingCodeValueSet.value394585009: '394585009',
  PracticeSettingCodeValueSet.value394821009: '394821009',
  PracticeSettingCodeValueSet.value422191005: '422191005',
  PracticeSettingCodeValueSet.value394594003: '394594003',
  PracticeSettingCodeValueSet.value416304004: '416304004',
  PracticeSettingCodeValueSet.value418960008: '418960008',
  PracticeSettingCodeValueSet.value394882004: '394882004',
  PracticeSettingCodeValueSet.value394806003: '394806003',
  PracticeSettingCodeValueSet.value394588006: '394588006',
  PracticeSettingCodeValueSet.value408459003: '408459003',
  PracticeSettingCodeValueSet.value394607009: '394607009',
  PracticeSettingCodeValueSet.value419610006: '419610006',
  PracticeSettingCodeValueSet.value418058008: '418058008',
  PracticeSettingCodeValueSet.value420208008: '420208008',
  PracticeSettingCodeValueSet.value418652005: '418652005',
  PracticeSettingCodeValueSet.value418535003: '418535003',
  PracticeSettingCodeValueSet.value418862001: '418862001',
  PracticeSettingCodeValueSet.value419365004: '419365004',
  PracticeSettingCodeValueSet.value418002000: '418002000',
  PracticeSettingCodeValueSet.value419983000: '419983000',
  PracticeSettingCodeValueSet.value419170002: '419170002',
  PracticeSettingCodeValueSet.value419472004: '419472004',
  PracticeSettingCodeValueSet.value394539006: '394539006',
  PracticeSettingCodeValueSet.value420112009: '420112009',
  PracticeSettingCodeValueSet.value409968004: '409968004',
  PracticeSettingCodeValueSet.value394587001: '394587001',
  PracticeSettingCodeValueSet.value394913002: '394913002',
  PracticeSettingCodeValueSet.value408440000: '408440000',
  PracticeSettingCodeValueSet.value418112009: '418112009',
  PracticeSettingCodeValueSet.value419815003: '419815003',
  PracticeSettingCodeValueSet.value394914008: '394914008',
  PracticeSettingCodeValueSet.value408455009: '408455009',
  PracticeSettingCodeValueSet.value394602003: '394602003',
  PracticeSettingCodeValueSet.value408447002: '408447002',
  PracticeSettingCodeValueSet.value394810000: '394810000',
  PracticeSettingCodeValueSet.value408450004: '408450004',
  PracticeSettingCodeValueSet.value408476004: '408476004',
  PracticeSettingCodeValueSet.value408469009: '408469009',
  PracticeSettingCodeValueSet.value408466002: '408466002',
  PracticeSettingCodeValueSet.value408471009: '408471009',
  PracticeSettingCodeValueSet.value408464004: '408464004',
  PracticeSettingCodeValueSet.value408441001: '408441001',
  PracticeSettingCodeValueSet.value408465003: '408465003',
  PracticeSettingCodeValueSet.value394605001: '394605001',
  PracticeSettingCodeValueSet.value394608004: '394608004',
  PracticeSettingCodeValueSet.value408461007: '408461007',
  PracticeSettingCodeValueSet.value408460008: '408460008',
  PracticeSettingCodeValueSet.value394606000: '394606000',
  PracticeSettingCodeValueSet.value408449004: '408449004',
  PracticeSettingCodeValueSet.value418018006: '418018006',
  PracticeSettingCodeValueSet.value394604002: '394604002',
  PracticeSettingCodeValueSet.value394609007: '394609007',
  PracticeSettingCodeValueSet.value408474001: '408474001',
  PracticeSettingCodeValueSet.value394610002: '394610002',
  PracticeSettingCodeValueSet.value394611003: '394611003',
  PracticeSettingCodeValueSet.value408477008: '408477008',
  PracticeSettingCodeValueSet.value394801008: '394801008',
  PracticeSettingCodeValueSet.value408463005: '408463005',
  PracticeSettingCodeValueSet.value419321007: '419321007',
  PracticeSettingCodeValueSet.value394576009: '394576009',
  PracticeSettingCodeValueSet.value394590007: '394590007',
  PracticeSettingCodeValueSet.value409967009: '409967009',
  PracticeSettingCodeValueSet.value408448007: '408448007',
  PracticeSettingCodeValueSet.value419043006: '419043006',
  PracticeSettingCodeValueSet.value394612005: '394612005',
  PracticeSettingCodeValueSet.value394733009: '394733009',
  PracticeSettingCodeValueSet.value394732004: '394732004',
};
