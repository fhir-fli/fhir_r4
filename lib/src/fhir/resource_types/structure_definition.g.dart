// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructureDefinition _$StructureDefinitionFromJson(Map<String, dynamic> json) =>
    StructureDefinition(
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
      url: FhirUri.fromJson(json['url']),
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
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : Element.fromJson(json['_copyright'] as Map<String, dynamic>),
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DefinitionUseCodesEnumMap, e))
          .toList(),
      fhirVersion:
          $enumDecodeNullable(_$FHIRVersionEnumMap, json['fhirVersion']),
      fhirVersionElement: json['_fhirVersion'] == null
          ? null
          : Element.fromJson(json['_fhirVersion'] as Map<String, dynamic>),
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map((e) =>
              StructureDefinitionMapping.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecode(_$StructureDefinitionKindEnumMap, json['kind']),
      kindElement: json['_kind'] == null
          ? null
          : Element.fromJson(json['_kind'] as Map<String, dynamic>),
      abstract_: FhirBoolean.fromJson(json['abstract']),
      abstractElement: json['_abstract'] == null
          ? null
          : Element.fromJson(json['_abstract'] as Map<String, dynamic>),
      context: (json['context'] as List<dynamic>?)
          ?.map((e) =>
              StructureDefinitionContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$FHIRDefinedTypeEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      baseDefinition: json['baseDefinition'] == null
          ? null
          : FhirCanonical.fromJson(json['baseDefinition']),
      baseDefinitionElement: json['_baseDefinition'] == null
          ? null
          : Element.fromJson(json['_baseDefinition'] as Map<String, dynamic>),
      derivation:
          $enumDecodeNullable(_$TypeDerivationRuleEnumMap, json['derivation']),
      derivationElement: json['_derivation'] == null
          ? null
          : Element.fromJson(json['_derivation'] as Map<String, dynamic>),
      snapshot: json['snapshot'] == null
          ? null
          : StructureDefinitionSnapshot.fromJson(
              json['snapshot'] as Map<String, dynamic>),
      differential: json['differential'] == null
          ? null
          : StructureDefinitionDifferential.fromJson(
              json['differential'] as Map<String, dynamic>),
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

Map<String, dynamic> _$StructureDefinitionToJson(StructureDefinition instance) {
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
  val['url'] = instance.url.toJson();
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
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
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  writeNotNull('keyword', instance.keyword?.map((e) => e.toJson()).toList());
  writeNotNull('fhirVersion', instance.fhirVersion?.toJson());
  writeNotNull('_fhirVersion', instance.fhirVersionElement?.toJson());
  writeNotNull('mapping', instance.mapping?.map((e) => e.toJson()).toList());
  val['kind'] = instance.kind.toJson();
  writeNotNull('_kind', instance.kindElement?.toJson());
  val['abstract'] = instance.abstract_.toJson();
  writeNotNull('_abstract', instance.abstractElement?.toJson());
  writeNotNull('context', instance.context?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('baseDefinition', instance.baseDefinition?.toJson());
  writeNotNull('_baseDefinition', instance.baseDefinitionElement?.toJson());
  writeNotNull('derivation', instance.derivation?.toJson());
  writeNotNull('_derivation', instance.derivationElement?.toJson());
  writeNotNull('snapshot', instance.snapshot?.toJson());
  writeNotNull('differential', instance.differential?.toJson());
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

const _$DefinitionUseCodesEnumMap = {
  DefinitionUseCodes.fhir_structure: 'fhir-structure',
  DefinitionUseCodes.custom_resource: 'custom-resource',
  DefinitionUseCodes.dam: 'dam',
  DefinitionUseCodes.wire_format: 'wire-format',
  DefinitionUseCodes.archetype: 'archetype',
  DefinitionUseCodes.template: 'template',
};

const _$FHIRVersionEnumMap = {
  FHIRVersion.value0_01: '0.01',
  FHIRVersion.value0_05: '0.05',
  FHIRVersion.value0_06: '0.06',
  FHIRVersion.value0_11: '0.11',
  FHIRVersion.value0_0_80: '0.0.80',
  FHIRVersion.value0_0_81: '0.0.81',
  FHIRVersion.value0_0_82: '0.0.82',
  FHIRVersion.value0_4_0: '0.4.0',
  FHIRVersion.value0_5_0: '0.5.0',
  FHIRVersion.value1_0_0: '1.0.0',
  FHIRVersion.value1_0_1: '1.0.1',
  FHIRVersion.value1_0_2: '1.0.2',
  FHIRVersion.value1_1_0: '1.1.0',
  FHIRVersion.value1_4_0: '1.4.0',
  FHIRVersion.value1_6_0: '1.6.0',
  FHIRVersion.value1_8_0: '1.8.0',
  FHIRVersion.value3_0_0: '3.0.0',
  FHIRVersion.value3_0_1: '3.0.1',
  FHIRVersion.value3_0_2: '3.0.2',
  FHIRVersion.value3_3_0: '3.3.0',
  FHIRVersion.value3_5_0: '3.5.0',
  FHIRVersion.value4_0_0: '4.0.0',
  FHIRVersion.value4_0_1: '4.0.1',
  FHIRVersion.value4_1_0: '4.1.0',
  FHIRVersion.value4_3_0_cibuild: '4.3.0-cibuild',
  FHIRVersion.value4_3_0_snapshot1: '4.3.0-snapshot1',
  FHIRVersion.value4_3_0: '4.3.0',
};

const _$StructureDefinitionKindEnumMap = {
  StructureDefinitionKind.primitive_type: 'primitive-type',
  StructureDefinitionKind.complex_type: 'complex-type',
  StructureDefinitionKind.resource: 'resource',
  StructureDefinitionKind.logical: 'logical',
};

const _$FHIRDefinedTypeEnumMap = {
  FHIRDefinedType.Address: 'Address',
  FHIRDefinedType.Age: 'Age',
  FHIRDefinedType.Annotation: 'Annotation',
  FHIRDefinedType.Attachment: 'Attachment',
  FHIRDefinedType.BackboneElement: 'BackboneElement',
  FHIRDefinedType.CodeableConcept: 'CodeableConcept',
  FHIRDefinedType.CodeableReference: 'CodeableReference',
  FHIRDefinedType.Coding: 'Coding',
  FHIRDefinedType.ContactDetail: 'ContactDetail',
  FHIRDefinedType.ContactPoint: 'ContactPoint',
  FHIRDefinedType.Contributor: 'Contributor',
  FHIRDefinedType.Count: 'Count',
  FHIRDefinedType.DataRequirement: 'DataRequirement',
  FHIRDefinedType.Distance: 'Distance',
  FHIRDefinedType.Dosage: 'Dosage',
  FHIRDefinedType.Duration: 'Duration',
  FHIRDefinedType.Element: 'Element',
  FHIRDefinedType.ElementDefinition: 'ElementDefinition',
  FHIRDefinedType.Expression: 'Expression',
  FHIRDefinedType.Extension: 'Extension',
  FHIRDefinedType.HumanName: 'HumanName',
  FHIRDefinedType.Identifier: 'Identifier',
  FHIRDefinedType.MarketingStatus: 'MarketingStatus',
  FHIRDefinedType.Meta: 'Meta',
  FHIRDefinedType.Money: 'Money',
  FHIRDefinedType.MoneyQuantity: 'MoneyQuantity',
  FHIRDefinedType.Narrative: 'Narrative',
  FHIRDefinedType.ParameterDefinition: 'ParameterDefinition',
  FHIRDefinedType.Period: 'Period',
  FHIRDefinedType.Population: 'Population',
  FHIRDefinedType.ProdCharacteristic: 'ProdCharacteristic',
  FHIRDefinedType.ProductShelfLife: 'ProductShelfLife',
  FHIRDefinedType.Quantity: 'Quantity',
  FHIRDefinedType.Range: 'Range',
  FHIRDefinedType.Ratio: 'Ratio',
  FHIRDefinedType.RatioRange: 'RatioRange',
  FHIRDefinedType.Reference: 'Reference',
  FHIRDefinedType.RelatedArtifact: 'RelatedArtifact',
  FHIRDefinedType.SampledData: 'SampledData',
  FHIRDefinedType.Signature: 'Signature',
  FHIRDefinedType.SimpleQuantity: 'SimpleQuantity',
  FHIRDefinedType.Timing: 'Timing',
  FHIRDefinedType.TriggerDefinition: 'TriggerDefinition',
  FHIRDefinedType.UsageContext: 'UsageContext',
  FHIRDefinedType.base64Binary: 'base64Binary',
  FHIRDefinedType.boolean: 'boolean',
  FHIRDefinedType.canonical: 'canonical',
  FHIRDefinedType.code: 'code',
  FHIRDefinedType.date: 'date',
  FHIRDefinedType.dateTime: 'dateTime',
  FHIRDefinedType.decimal: 'decimal',
  FHIRDefinedType.id: 'id',
  FHIRDefinedType.instant: 'instant',
  FHIRDefinedType.integer: 'integer',
  FHIRDefinedType.markdown: 'markdown',
  FHIRDefinedType.oid: 'oid',
  FHIRDefinedType.positiveInt: 'positiveInt',
  FHIRDefinedType.string: 'string',
  FHIRDefinedType.time: 'time',
  FHIRDefinedType.unsignedInt: 'unsignedInt',
  FHIRDefinedType.uri: 'uri',
  FHIRDefinedType.url: 'url',
  FHIRDefinedType.uuid: 'uuid',
  FHIRDefinedType.xhtml: 'xhtml',
  FHIRDefinedType.Resource: 'Resource',
};

const _$TypeDerivationRuleEnumMap = {
  TypeDerivationRule.specialization: 'specialization',
  TypeDerivationRule.constraint: 'constraint',
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

StructureDefinitionMapping _$StructureDefinitionMappingFromJson(
        Map<String, dynamic> json) =>
    StructureDefinitionMapping(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identity: FhirId.fromJson(json['identity']),
      identityElement: json['_identity'] == null
          ? null
          : Element.fromJson(json['_identity'] as Map<String, dynamic>),
      uri: json['uri'] == null ? null : FhirUri.fromJson(json['uri']),
      uriElement: json['_uri'] == null
          ? null
          : Element.fromJson(json['_uri'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
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

Map<String, dynamic> _$StructureDefinitionMappingToJson(
    StructureDefinitionMapping instance) {
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
  val['identity'] = instance.identity.toJson();
  writeNotNull('_identity', instance.identityElement?.toJson());
  writeNotNull('uri', instance.uri?.toJson());
  writeNotNull('_uri', instance.uriElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('_comment', instance.commentElement?.toJson());
  return val;
}

StructureDefinitionContext _$StructureDefinitionContextFromJson(
        Map<String, dynamic> json) =>
    StructureDefinitionContext(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$ExtensionContextTypeEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      expression: FhirString.fromJson(json['expression']),
      expressionElement: json['_expression'] == null
          ? null
          : Element.fromJson(json['_expression'] as Map<String, dynamic>),
      contextInvariant: (json['contextInvariant'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      contextInvariantElement: (json['_contextInvariant'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$StructureDefinitionContextToJson(
    StructureDefinitionContext instance) {
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
  val['expression'] = instance.expression.toJson();
  writeNotNull('_expression', instance.expressionElement?.toJson());
  writeNotNull('contextInvariant',
      instance.contextInvariant?.map((e) => e.toJson()).toList());
  writeNotNull('_contextInvariant',
      instance.contextInvariantElement?.map((e) => e.toJson()).toList());
  return val;
}

const _$ExtensionContextTypeEnumMap = {
  ExtensionContextType.fhirpath: 'fhirpath',
  ExtensionContextType.element: 'element',
  ExtensionContextType.extension_: 'extension',
};

StructureDefinitionSnapshot _$StructureDefinitionSnapshotFromJson(
        Map<String, dynamic> json) =>
    StructureDefinitionSnapshot(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      element: (json['element'] as List<dynamic>)
          .map((e) => ElementDefinition.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$StructureDefinitionSnapshotToJson(
    StructureDefinitionSnapshot instance) {
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
  val['element'] = instance.element.map((e) => e.toJson()).toList();
  return val;
}

StructureDefinitionDifferential _$StructureDefinitionDifferentialFromJson(
        Map<String, dynamic> json) =>
    StructureDefinitionDifferential(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      element: (json['element'] as List<dynamic>)
          .map((e) => ElementDefinition.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$StructureDefinitionDifferentialToJson(
    StructureDefinitionDifferential instance) {
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
  val['element'] = instance.element.map((e) => e.toJson()).toList();
  return val;
}
