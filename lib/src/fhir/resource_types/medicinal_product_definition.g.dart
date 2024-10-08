// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicinal_product_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinalProductDefinition _$MedicinalProductDefinitionFromJson(
        Map<String, dynamic> json) =>
    MedicinalProductDefinition(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$MedicinalProductTypeEnumMap, json['type']),
      domain:
          $enumDecodeNullable(_$MedicinalProductDomainEnumMap, json['domain']),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$PublicationStatusEnumMap, json['status']),
      statusDate: json['statusDate'] == null
          ? null
          : FhirDateTime.fromJson(json['statusDate'] as String),
      statusDateElement: json['_statusDate'] == null
          ? null
          : Element.fromJson(json['_statusDate'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      combinedPharmaceuticalDoseForm: $enumDecodeNullable(
          _$CombinedDoseFormEnumMap, json['combinedPharmaceuticalDoseForm']),
      route: (json['route'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      indication: json['indication'] == null
          ? null
          : FhirMarkdown.fromJson(json['indication']),
      indicationElement: json['_indication'] == null
          ? null
          : Element.fromJson(json['_indication'] as Map<String, dynamic>),
      legalStatusOfSupply: $enumDecodeNullable(
          _$LegalStatusOfSupplyEnumMap, json['legalStatusOfSupply']),
      additionalMonitoringIndicator: $enumDecodeNullable(
          _$AdditionalMonitoringEnumMap, json['additionalMonitoringIndicator']),
      specialMeasures: (json['specialMeasures'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SpecialMeasuresEnumMap, e))
          .toList(),
      pediatricUseIndicator: $enumDecodeNullable(
          _$PediatricUseEnumMap, json['pediatricUseIndicator']),
      classification: (json['classification'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map((e) => MarketingStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      packagedMedicinalProduct:
          (json['packagedMedicinalProduct'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MedicinalProductPackageTypeEnumMap, e))
              .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      impurity: (json['impurity'] as List<dynamic>?)
          ?.map((e) => CodeableReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      masterFile: (json['masterFile'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => MedicinalProductDefinitionContact.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      clinicalTrial: (json['clinicalTrial'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: (json['name'] as List<dynamic>)
          .map((e) => MedicinalProductDefinitionName.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      crossReference: (json['crossReference'] as List<dynamic>?)
          ?.map((e) => MedicinalProductDefinitionCrossReference.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) => MedicinalProductDefinitionOperation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map((e) => MedicinalProductDefinitionCharacteristic.fromJson(
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

Map<String, dynamic> _$MedicinalProductDefinitionToJson(
    MedicinalProductDefinition instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('domain', instance.domain?.toJson());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('statusDate', instance.statusDate?.toJson());
  writeNotNull('_statusDate', instance.statusDateElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('combinedPharmaceuticalDoseForm',
      instance.combinedPharmaceuticalDoseForm?.toJson());
  writeNotNull('route', instance.route?.map((e) => e.toJson()).toList());
  writeNotNull('indication', instance.indication?.toJson());
  writeNotNull('_indication', instance.indicationElement?.toJson());
  writeNotNull('legalStatusOfSupply', instance.legalStatusOfSupply?.toJson());
  writeNotNull('additionalMonitoringIndicator',
      instance.additionalMonitoringIndicator?.toJson());
  writeNotNull('specialMeasures',
      instance.specialMeasures?.map((e) => e.toJson()).toList());
  writeNotNull(
      'pediatricUseIndicator', instance.pediatricUseIndicator?.toJson());
  writeNotNull('classification',
      instance.classification?.map((e) => e.toJson()).toList());
  writeNotNull('marketingStatus',
      instance.marketingStatus?.map((e) => e.toJson()).toList());
  writeNotNull('packagedMedicinalProduct',
      instance.packagedMedicinalProduct?.map((e) => e.toJson()).toList());
  writeNotNull(
      'ingredient', instance.ingredient?.map((e) => e.toJson()).toList());
  writeNotNull('impurity', instance.impurity?.map((e) => e.toJson()).toList());
  writeNotNull('attachedDocument',
      instance.attachedDocument?.map((e) => e.toJson()).toList());
  writeNotNull(
      'masterFile', instance.masterFile?.map((e) => e.toJson()).toList());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull(
      'clinicalTrial', instance.clinicalTrial?.map((e) => e.toJson()).toList());
  writeNotNull('code', instance.code?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.map((e) => e.toJson()).toList();
  writeNotNull('crossReference',
      instance.crossReference?.map((e) => e.toJson()).toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e.toJson()).toList());
  writeNotNull('characteristic',
      instance.characteristic?.map((e) => e.toJson()).toList());
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

const _$MedicinalProductTypeEnumMap = {
  MedicinalProductType.MedicinalProduct: 'MedicinalProduct',
  MedicinalProductType.InvestigationalProduct: 'InvestigationalProduct',
};

const _$MedicinalProductDomainEnumMap = {
  MedicinalProductDomain.Human: 'Human',
  MedicinalProductDomain.Veterinary: 'Veterinary',
  MedicinalProductDomain.HumanAndVeterinary: 'HumanAndVeterinary',
};

const _$PublicationStatusEnumMap = {
  PublicationStatus.draft: 'draft',
  PublicationStatus.active: 'active',
  PublicationStatus.retired: 'retired',
  PublicationStatus.unknown: 'unknown',
};

const _$CombinedDoseFormEnumMap = {
  CombinedDoseForm.value100000073366: '100000073366',
  CombinedDoseForm.value100000073651: '100000073651',
  CombinedDoseForm.value100000073774: '100000073774',
  CombinedDoseForm.value100000073781: '100000073781',
  CombinedDoseForm.value100000073801: '100000073801',
  CombinedDoseForm.value100000073860: '100000073860',
  CombinedDoseForm.value100000073868: '100000073868',
  CombinedDoseForm.value100000073869: '100000073869',
  CombinedDoseForm.value100000073884: '100000073884',
  CombinedDoseForm.value100000073891: '100000073891',
  CombinedDoseForm.value100000073892: '100000073892',
  CombinedDoseForm.value100000073941: '100000073941',
  CombinedDoseForm.value100000073972: '100000073972',
  CombinedDoseForm.value100000073973: '100000073973',
  CombinedDoseForm.value100000073974: '100000073974',
  CombinedDoseForm.value100000073975: '100000073975',
  CombinedDoseForm.value100000073987: '100000073987',
  CombinedDoseForm.value100000073988: '100000073988',
  CombinedDoseForm.value100000073989: '100000073989',
  CombinedDoseForm.value100000073990: '100000073990',
  CombinedDoseForm.value100000073999: '100000073999',
  CombinedDoseForm.value100000074015: '100000074015',
  CombinedDoseForm.value100000074016: '100000074016',
  CombinedDoseForm.value100000074017: '100000074017',
  CombinedDoseForm.value100000074018: '100000074018',
  CombinedDoseForm.value100000074030: '100000074030',
  CombinedDoseForm.value100000074031: '100000074031',
  CombinedDoseForm.value100000074032: '100000074032',
  CombinedDoseForm.value100000074048: '100000074048',
  CombinedDoseForm.value100000074051: '100000074051',
  CombinedDoseForm.value100000074053: '100000074053',
  CombinedDoseForm.value100000074056: '100000074056',
  CombinedDoseForm.value100000074057: '100000074057',
  CombinedDoseForm.value100000074061: '100000074061',
  CombinedDoseForm.value100000074064: '100000074064',
  CombinedDoseForm.value100000075580: '100000075580',
  CombinedDoseForm.value100000075584: '100000075584',
  CombinedDoseForm.value100000075587: '100000075587',
  CombinedDoseForm.value100000116137: '100000116137',
  CombinedDoseForm.value100000116141: '100000116141',
  CombinedDoseForm.value100000116155: '100000116155',
  CombinedDoseForm.value100000116160: '100000116160',
  CombinedDoseForm.value100000116172: '100000116172',
  CombinedDoseForm.value100000116173: '100000116173',
  CombinedDoseForm.value100000116174: '100000116174',
  CombinedDoseForm.value100000116175: '100000116175',
  CombinedDoseForm.value100000116176: '100000116176',
  CombinedDoseForm.value100000116177: '100000116177',
  CombinedDoseForm.value100000116179: '100000116179',
  CombinedDoseForm.value100000125746: '100000125746',
  CombinedDoseForm.value100000125747: '100000125747',
  CombinedDoseForm.value100000125777: '100000125777',
  CombinedDoseForm.value100000136318: '100000136318',
  CombinedDoseForm.value100000136325: '100000136325',
  CombinedDoseForm.value100000136558: '100000136558',
  CombinedDoseForm.value100000136560: '100000136560',
  CombinedDoseForm.value100000136907: '100000136907',
  CombinedDoseForm.value100000143502: '100000143502',
  CombinedDoseForm.value100000143546: '100000143546',
  CombinedDoseForm.value100000143552: '100000143552',
  CombinedDoseForm.value100000156068: '100000156068',
  CombinedDoseForm.value100000157796: '100000157796',
  CombinedDoseForm.value100000164467: '100000164467',
  CombinedDoseForm.value100000169997: '100000169997',
  CombinedDoseForm.value100000170588: '100000170588',
  CombinedDoseForm.value100000171127: '100000171127',
  CombinedDoseForm.value100000171193: '100000171193',
  CombinedDoseForm.value100000171238: '100000171238',
  CombinedDoseForm.value100000171935: '100000171935',
  CombinedDoseForm.value100000174065: '100000174065',
  CombinedDoseForm.value200000002161: '200000002161',
  CombinedDoseForm.value200000002287: '200000002287',
  CombinedDoseForm.value200000004201: '200000004201',
  CombinedDoseForm.value200000004819: '200000004819',
  CombinedDoseForm.value200000004820: '200000004820',
  CombinedDoseForm.value200000005547: '200000005547',
  CombinedDoseForm.value200000010382: '200000010382',
};

const _$LegalStatusOfSupplyEnumMap = {
  LegalStatusOfSupply.value100000072076: '100000072076',
  LegalStatusOfSupply.value100000072077: '100000072077',
  LegalStatusOfSupply.value100000072078: '100000072078',
  LegalStatusOfSupply.value100000072079: '100000072079',
  LegalStatusOfSupply.value100000072084: '100000072084',
  LegalStatusOfSupply.value100000072085: '100000072085',
  LegalStatusOfSupply.value100000072086: '100000072086',
  LegalStatusOfSupply.value100000157313: '100000157313',
};

const _$AdditionalMonitoringEnumMap = {
  AdditionalMonitoring.BlackTriangleMonitoring: 'BlackTriangleMonitoring',
};

const _$SpecialMeasuresEnumMap = {
  SpecialMeasures.Post_authorisationStudies: 'Post-authorisationStudies',
};

const _$PediatricUseEnumMap = {
  PediatricUse.InUtero: 'InUtero',
  PediatricUse.PretermNewborn: 'PretermNewborn',
  PediatricUse.TermNewborn: 'TermNewborn',
  PediatricUse.Infants: 'Infants',
  PediatricUse.Children: 'Children',
  PediatricUse.Adolescents: 'Adolescents',
  PediatricUse.Adults: 'Adults',
  PediatricUse.Elderly: 'Elderly',
  PediatricUse.Neonate: 'Neonate',
  PediatricUse.PediatricPopulation: 'PediatricPopulation',
  PediatricUse.All: 'All',
  PediatricUse.Prepubertal: 'Prepubertal',
  PediatricUse.AdultsAndElderly: 'AdultsAndElderly',
  PediatricUse.PubertalAndPostpubertal: 'PubertalAndPostpubertal',
};

const _$MedicinalProductPackageTypeEnumMap = {
  MedicinalProductPackageType.value100000073490: '100000073490',
  MedicinalProductPackageType.value100000073491: '100000073491',
  MedicinalProductPackageType.value100000073492: '100000073492',
  MedicinalProductPackageType.value100000073493: '100000073493',
  MedicinalProductPackageType.value100000073494: '100000073494',
  MedicinalProductPackageType.value100000073495: '100000073495',
  MedicinalProductPackageType.value100000073496: '100000073496',
  MedicinalProductPackageType.value100000073497: '100000073497',
  MedicinalProductPackageType.value100000073498: '100000073498',
  MedicinalProductPackageType.value100000073547: '100000073547',
  MedicinalProductPackageType.value100000073563: '100000073563',
  MedicinalProductPackageType.value100000143555: '100000143555',
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

MedicinalProductDefinitionContact _$MedicinalProductDefinitionContactFromJson(
        Map<String, dynamic> json) =>
    MedicinalProductDefinitionContact(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$ProductContactTypeEnumMap, json['type']),
      contact: Reference.fromJson(json['contact'] as Map<String, dynamic>),
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

Map<String, dynamic> _$MedicinalProductDefinitionContactToJson(
    MedicinalProductDefinitionContact instance) {
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
  val['contact'] = instance.contact.toJson();
  return val;
}

const _$ProductContactTypeEnumMap = {
  ProductContactType.ProposedMAH: 'ProposedMAH',
  ProductContactType.ProcedureContactDuring: 'ProcedureContactDuring',
  ProductContactType.ProcedureContactAfter: 'ProcedureContactAfter',
  ProductContactType.QPPV: 'QPPV',
  ProductContactType.PVEnquiries: 'PVEnquiries',
};

MedicinalProductDefinitionName _$MedicinalProductDefinitionNameFromJson(
        Map<String, dynamic> json) =>
    MedicinalProductDefinitionName(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      productName: FhirString.fromJson(json['productName']),
      productNameElement: json['_productName'] == null
          ? null
          : Element.fromJson(json['_productName'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$ProductNameTypeEnumMap, json['type']),
      namePart: (json['namePart'] as List<dynamic>?)
          ?.map((e) => MedicinalProductDefinitionNamePart.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      countryLanguage: (json['countryLanguage'] as List<dynamic>?)
          ?.map((e) => MedicinalProductDefinitionCountryLanguage.fromJson(
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
    );

Map<String, dynamic> _$MedicinalProductDefinitionNameToJson(
    MedicinalProductDefinitionName instance) {
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
  val['productName'] = instance.productName.toJson();
  writeNotNull('_productName', instance.productNameElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('namePart', instance.namePart?.map((e) => e.toJson()).toList());
  writeNotNull('countryLanguage',
      instance.countryLanguage?.map((e) => e.toJson()).toList());
  return val;
}

const _$ProductNameTypeEnumMap = {
  ProductNameType.BAN: 'BAN',
  ProductNameType.INN: 'INN',
  ProductNameType.INNM: 'INNM',
  ProductNameType.pINN: 'pINN',
  ProductNameType.rINN: 'rINN',
};

MedicinalProductDefinitionNamePart _$MedicinalProductDefinitionNamePartFromJson(
        Map<String, dynamic> json) =>
    MedicinalProductDefinitionNamePart(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      part_: FhirString.fromJson(json['part']),
      partElement: json['_part'] == null
          ? null
          : Element.fromJson(json['_part'] as Map<String, dynamic>),
      type: $enumDecode(_$ProductNamePartTypeEnumMap, json['type']),
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

Map<String, dynamic> _$MedicinalProductDefinitionNamePartToJson(
    MedicinalProductDefinitionNamePart instance) {
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
  val['part'] = instance.part_.toJson();
  writeNotNull('_part', instance.partElement?.toJson());
  val['type'] = instance.type.toJson();
  return val;
}

const _$ProductNamePartTypeEnumMap = {
  ProductNamePartType.FullName: 'FullName',
  ProductNamePartType.InventedNamePart: 'InventedNamePart',
  ProductNamePartType.ScientificNamePart: 'ScientificNamePart',
  ProductNamePartType.StrengthPart: 'StrengthPart',
  ProductNamePartType.DoseFormPart: 'DoseFormPart',
  ProductNamePartType.FormulationPart: 'FormulationPart',
  ProductNamePartType.IntendedUsePart: 'IntendedUsePart',
  ProductNamePartType.PopulationPart: 'PopulationPart',
  ProductNamePartType.ContainerPart: 'ContainerPart',
  ProductNamePartType.DevicePart: 'DevicePart',
  ProductNamePartType.TrademarkOrCompanyPart: 'TrademarkOrCompanyPart',
  ProductNamePartType.TimeOrPeriodPart: 'TimeOrPeriodPart',
  ProductNamePartType.FlavorPart: 'FlavorPart',
  ProductNamePartType.DelimiterPart: 'DelimiterPart',
  ProductNamePartType.LegacyNamePart: 'LegacyNamePart',
  ProductNamePartType.SpeciesNamePart: 'SpeciesNamePart',
};

MedicinalProductDefinitionCountryLanguage
    _$MedicinalProductDefinitionCountryLanguageFromJson(
            Map<String, dynamic> json) =>
        MedicinalProductDefinitionCountryLanguage(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          country:
              CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
          jurisdiction: json['jurisdiction'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['jurisdiction'] as Map<String, dynamic>),
          language: $enumDecode(_$CommonLanguagesEnumMap, json['language']),
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

Map<String, dynamic> _$MedicinalProductDefinitionCountryLanguageToJson(
    MedicinalProductDefinitionCountryLanguage instance) {
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
  val['country'] = instance.country.toJson();
  writeNotNull('jurisdiction', instance.jurisdiction?.toJson());
  val['language'] = instance.language.toJson();
  return val;
}

MedicinalProductDefinitionCrossReference
    _$MedicinalProductDefinitionCrossReferenceFromJson(
            Map<String, dynamic> json) =>
        MedicinalProductDefinitionCrossReference(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          product: CodeableReference.fromJson(
              json['product'] as Map<String, dynamic>),
          type: $enumDecodeNullable(
              _$ProductCrossReferenceTypeEnumMap, json['type']),
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

Map<String, dynamic> _$MedicinalProductDefinitionCrossReferenceToJson(
    MedicinalProductDefinitionCrossReference instance) {
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
  val['product'] = instance.product.toJson();
  writeNotNull('type', instance.type?.toJson());
  return val;
}

const _$ProductCrossReferenceTypeEnumMap = {
  ProductCrossReferenceType.InvestigationalProduct: 'InvestigationalProduct',
  ProductCrossReferenceType.VirtualProduct: 'VirtualProduct',
  ProductCrossReferenceType.ActualProduct: 'ActualProduct',
  ProductCrossReferenceType.BrandedProduct: 'BrandedProduct',
  ProductCrossReferenceType.GenericProduct: 'GenericProduct',
  ProductCrossReferenceType.Parallel: 'Parallel',
};

MedicinalProductDefinitionOperation
    _$MedicinalProductDefinitionOperationFromJson(Map<String, dynamic> json) =>
        MedicinalProductDefinitionOperation(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          type: json['type'] == null
              ? null
              : CodeableReference.fromJson(
                  json['type'] as Map<String, dynamic>),
          effectiveDate: json['effectiveDate'] == null
              ? null
              : Period.fromJson(json['effectiveDate'] as Map<String, dynamic>),
          organization: (json['organization'] as List<dynamic>?)
              ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
              .toList(),
          confidentialityIndicator: $enumDecodeNullable(
              _$ProductConfidentialityEnumMap,
              json['confidentialityIndicator']),
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

Map<String, dynamic> _$MedicinalProductDefinitionOperationToJson(
    MedicinalProductDefinitionOperation instance) {
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
  writeNotNull('effectiveDate', instance.effectiveDate?.toJson());
  writeNotNull(
      'organization', instance.organization?.map((e) => e.toJson()).toList());
  writeNotNull(
      'confidentialityIndicator', instance.confidentialityIndicator?.toJson());
  return val;
}

const _$ProductConfidentialityEnumMap = {
  ProductConfidentiality.CommerciallySensitive: 'CommerciallySensitive',
  ProductConfidentiality.NotCommerciallySensitive: 'NotCommerciallySensitive',
};

MedicinalProductDefinitionCharacteristic
    _$MedicinalProductDefinitionCharacteristicFromJson(
            Map<String, dynamic> json) =>
        MedicinalProductDefinitionCharacteristic(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
          valueCodeableConcept: json['valueCodeableConcept'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['valueCodeableConcept'] as Map<String, dynamic>),
          valueQuantity: json['valueQuantity'] == null
              ? null
              : Quantity.fromJson(
                  json['valueQuantity'] as Map<String, dynamic>),
          valueDate: json['valueDate'] == null
              ? null
              : FhirDate.fromJson(json['valueDate'] as String),
          valueDateElement: json['_valueDate'] == null
              ? null
              : Element.fromJson(json['_valueDate'] as Map<String, dynamic>),
          valueBoolean: json['valueBoolean'] == null
              ? null
              : FhirBoolean.fromJson(json['valueBoolean']),
          valueBooleanElement: json['_valueBoolean'] == null
              ? null
              : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
          valueAttachment: json['valueAttachment'] == null
              ? null
              : Attachment.fromJson(
                  json['valueAttachment'] as Map<String, dynamic>),
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

Map<String, dynamic> _$MedicinalProductDefinitionCharacteristicToJson(
    MedicinalProductDefinitionCharacteristic instance) {
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
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueDate', instance.valueDate?.toJson());
  writeNotNull('_valueDate', instance.valueDateElement?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean?.toJson());
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  return val;
}
