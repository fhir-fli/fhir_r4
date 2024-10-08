// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packaged_product_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackagedProductDefinition _$PackagedProductDefinitionFromJson(
        Map<String, dynamic> json) =>
    PackagedProductDefinition(
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
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$PackageTypeEnumMap, json['type']),
      packageFor: (json['packageFor'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$PublicationStatusEnumMap, json['status']),
      statusDate: json['statusDate'] == null
          ? null
          : FhirDateTime.fromJson(json['statusDate'] as String),
      statusDateElement: json['_statusDate'] == null
          ? null
          : Element.fromJson(json['_statusDate'] as Map<String, dynamic>),
      containedItemQuantity: (json['containedItemQuantity'] as List<dynamic>?)
          ?.map((e) => Quantity.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      legalStatusOfSupply: (json['legalStatusOfSupply'] as List<dynamic>?)
          ?.map((e) => PackagedProductDefinitionLegalStatusOfSupply.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map((e) => MarketingStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PackageCharacteristicEnumMap, e))
          .toList(),
      copackagedIndicator: json['copackagedIndicator'] == null
          ? null
          : FhirBoolean.fromJson(json['copackagedIndicator']),
      copackagedIndicatorElement: json['_copackagedIndicator'] == null
          ? null
          : Element.fromJson(
              json['_copackagedIndicator'] as Map<String, dynamic>),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      package: json['package'] == null
          ? null
          : PackagedProductDefinitionPackage.fromJson(
              json['package'] as Map<String, dynamic>),
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

Map<String, dynamic> _$PackagedProductDefinitionToJson(
    PackagedProductDefinition instance) {
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
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull(
      'packageFor', instance.packageFor?.map((e) => e.toJson()).toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('statusDate', instance.statusDate?.toJson());
  writeNotNull('_statusDate', instance.statusDateElement?.toJson());
  writeNotNull('containedItemQuantity',
      instance.containedItemQuantity?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('legalStatusOfSupply',
      instance.legalStatusOfSupply?.map((e) => e.toJson()).toList());
  writeNotNull('marketingStatus',
      instance.marketingStatus?.map((e) => e.toJson()).toList());
  writeNotNull('characteristic',
      instance.characteristic?.map((e) => e.toJson()).toList());
  writeNotNull('copackagedIndicator', instance.copackagedIndicator?.toJson());
  writeNotNull(
      '_copackagedIndicator', instance.copackagedIndicatorElement?.toJson());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e.toJson()).toList());
  writeNotNull('package', instance.package?.toJson());
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

const _$PackageTypeEnumMap = {
  PackageType.MedicinalProductPack: 'MedicinalProductPack',
  PackageType.RawMaterialPackage: 'RawMaterialPackage',
  PackageType.Shipping_TransportContainer: 'Shipping-TransportContainer',
};

const _$PublicationStatusEnumMap = {
  PublicationStatus.draft: 'draft',
  PublicationStatus.active: 'active',
  PublicationStatus.retired: 'retired',
  PublicationStatus.unknown: 'unknown',
};

const _$PackageCharacteristicEnumMap = {
  PackageCharacteristic.HospitalPack: 'HospitalPack',
  PackageCharacteristic.NursePrescribable: 'NursePrescribable',
  PackageCharacteristic.CalendarPack: 'CalendarPack',
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

PackagedProductDefinitionLegalStatusOfSupply
    _$PackagedProductDefinitionLegalStatusOfSupplyFromJson(
            Map<String, dynamic> json) =>
        PackagedProductDefinitionLegalStatusOfSupply(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          code: $enumDecodeNullable(_$LegalStatusOfSupplyEnumMap, json['code']),
          jurisdiction: json['jurisdiction'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['jurisdiction'] as Map<String, dynamic>),
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

Map<String, dynamic> _$PackagedProductDefinitionLegalStatusOfSupplyToJson(
    PackagedProductDefinitionLegalStatusOfSupply instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('jurisdiction', instance.jurisdiction?.toJson());
  return val;
}

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

PackagedProductDefinitionPackage _$PackagedProductDefinitionPackageFromJson(
        Map<String, dynamic> json) =>
    PackagedProductDefinitionPackage(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$PackagingTypeEnumMap, json['type']),
      quantity: json['quantity'] == null
          ? null
          : FhirInteger.fromJson(json['quantity']),
      quantityElement: json['_quantity'] == null
          ? null
          : Element.fromJson(json['_quantity'] as Map<String, dynamic>),
      material: (json['material'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PackageMaterialEnumMap, e))
          .toList(),
      alternateMaterial: (json['alternateMaterial'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PackageMaterialEnumMap, e))
          .toList(),
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map((e) => PackagedProductDefinitionShelfLifeStorage.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map((e) => PackagedProductDefinitionProperty.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      containedItem: (json['containedItem'] as List<dynamic>?)
          ?.map((e) => PackagedProductDefinitionContainedItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      package: (json['package'] as List<dynamic>?)
          ?.map((e) => PackagedProductDefinitionPackage.fromJson(
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

Map<String, dynamic> _$PackagedProductDefinitionPackageToJson(
    PackagedProductDefinitionPackage instance) {
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
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('_quantity', instance.quantityElement?.toJson());
  writeNotNull('material', instance.material?.map((e) => e.toJson()).toList());
  writeNotNull('alternateMaterial',
      instance.alternateMaterial?.map((e) => e.toJson()).toList());
  writeNotNull('shelfLifeStorage',
      instance.shelfLifeStorage?.map((e) => e.toJson()).toList());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e.toJson()).toList());
  writeNotNull('property', instance.property?.map((e) => e.toJson()).toList());
  writeNotNull(
      'containedItem', instance.containedItem?.map((e) => e.toJson()).toList());
  writeNotNull('package', instance.package?.map((e) => e.toJson()).toList());
  return val;
}

const _$PackagingTypeEnumMap = {
  PackagingType.value100000073490: '100000073490',
  PackagingType.value100000073491: '100000073491',
  PackagingType.value100000073492: '100000073492',
  PackagingType.value100000073493: '100000073493',
  PackagingType.value100000073494: '100000073494',
  PackagingType.value100000073495: '100000073495',
  PackagingType.value100000073496: '100000073496',
  PackagingType.value100000073497: '100000073497',
  PackagingType.value100000073498: '100000073498',
  PackagingType.value100000073499: '100000073499',
  PackagingType.value100000073500: '100000073500',
  PackagingType.value100000073501: '100000073501',
  PackagingType.value100000073502: '100000073502',
  PackagingType.value100000073503: '100000073503',
  PackagingType.value100000073504: '100000073504',
  PackagingType.value100000073505: '100000073505',
  PackagingType.value100000073506: '100000073506',
  PackagingType.value100000073507: '100000073507',
  PackagingType.value100000073508: '100000073508',
  PackagingType.value100000073509: '100000073509',
  PackagingType.value100000073510: '100000073510',
  PackagingType.value100000073511: '100000073511',
  PackagingType.value100000073512: '100000073512',
  PackagingType.value100000073513: '100000073513',
  PackagingType.value100000073514: '100000073514',
  PackagingType.value100000073515: '100000073515',
  PackagingType.value100000073516: '100000073516',
  PackagingType.value100000073517: '100000073517',
  PackagingType.value100000073518: '100000073518',
  PackagingType.value100000073519: '100000073519',
  PackagingType.value100000073520: '100000073520',
  PackagingType.value100000073521: '100000073521',
  PackagingType.value100000073522: '100000073522',
  PackagingType.value100000073523: '100000073523',
  PackagingType.value100000073524: '100000073524',
  PackagingType.value100000073525: '100000073525',
  PackagingType.value100000073526: '100000073526',
  PackagingType.value100000073527: '100000073527',
  PackagingType.value100000073528: '100000073528',
  PackagingType.value100000073529: '100000073529',
  PackagingType.value100000073530: '100000073530',
  PackagingType.value100000073531: '100000073531',
  PackagingType.value100000073532: '100000073532',
  PackagingType.value100000073533: '100000073533',
  PackagingType.value100000073534: '100000073534',
  PackagingType.value100000073535: '100000073535',
  PackagingType.value100000073536: '100000073536',
  PackagingType.value100000073537: '100000073537',
  PackagingType.value100000073538: '100000073538',
  PackagingType.value100000073539: '100000073539',
  PackagingType.value100000073540: '100000073540',
  PackagingType.value100000073541: '100000073541',
  PackagingType.value100000073542: '100000073542',
  PackagingType.value100000073543: '100000073543',
  PackagingType.value100000073544: '100000073544',
  PackagingType.value100000073545: '100000073545',
  PackagingType.value100000073546: '100000073546',
  PackagingType.value100000073547: '100000073547',
  PackagingType.value100000073548: '100000073548',
  PackagingType.value100000073549: '100000073549',
  PackagingType.value100000073550: '100000073550',
  PackagingType.value100000073551: '100000073551',
  PackagingType.value100000073552: '100000073552',
  PackagingType.value100000073553: '100000073553',
  PackagingType.value100000073554: '100000073554',
  PackagingType.value100000073555: '100000073555',
  PackagingType.value100000073556: '100000073556',
  PackagingType.value100000073557: '100000073557',
  PackagingType.value100000073558: '100000073558',
  PackagingType.value100000073559: '100000073559',
  PackagingType.value100000073560: '100000073560',
  PackagingType.value100000073561: '100000073561',
  PackagingType.value100000073562: '100000073562',
  PackagingType.value100000073563: '100000073563',
  PackagingType.value100000075664: '100000075664',
  PackagingType.value100000116195: '100000116195',
  PackagingType.value100000116196: '100000116196',
  PackagingType.value100000116197: '100000116197',
  PackagingType.value100000125779: '100000125779',
  PackagingType.value100000137702: '100000137702',
  PackagingType.value100000137703: '100000137703',
  PackagingType.value100000143554: '100000143554',
  PackagingType.value100000143555: '100000143555',
  PackagingType.value100000163233: '100000163233',
  PackagingType.value100000163234: '100000163234',
  PackagingType.value100000164143: '100000164143',
  PackagingType.value100000166980: '100000166980',
  PackagingType.value100000169899: '100000169899',
  PackagingType.value100000173982: '100000173982',
  PackagingType.value100000173983: '100000173983',
  PackagingType.value100000174066: '100000174066',
  PackagingType.value100000174067: '100000174067',
  PackagingType.value100000174068: '100000174068',
  PackagingType.value100000174069: '100000174069',
  PackagingType.value100000174070: '100000174070',
  PackagingType.value200000005068: '200000005068',
  PackagingType.value200000005585: '200000005585',
  PackagingType.value200000010647: '200000010647',
  PackagingType.value200000011726: '200000011726',
  PackagingType.value200000012539: '200000012539',
  PackagingType.value200000013191: '200000013191',
  PackagingType.value200000024874: '200000024874',
};

const _$PackageMaterialEnumMap = {
  PackageMaterial.value200000003200: '200000003200',
  PackageMaterial.value200000003201: '200000003201',
  PackageMaterial.value200000003202: '200000003202',
  PackageMaterial.value200000003203: '200000003203',
  PackageMaterial.value200000003204: '200000003204',
  PackageMaterial.value200000003205: '200000003205',
  PackageMaterial.value200000003206: '200000003206',
  PackageMaterial.value200000003207: '200000003207',
  PackageMaterial.value200000003208: '200000003208',
  PackageMaterial.value200000003209: '200000003209',
  PackageMaterial.value200000003210: '200000003210',
  PackageMaterial.value200000003211: '200000003211',
  PackageMaterial.value200000003212: '200000003212',
  PackageMaterial.value200000003213: '200000003213',
  PackageMaterial.value200000003214: '200000003214',
  PackageMaterial.value200000003215: '200000003215',
  PackageMaterial.value200000003216: '200000003216',
  PackageMaterial.value200000003217: '200000003217',
  PackageMaterial.value200000003218: '200000003218',
  PackageMaterial.value200000003219: '200000003219',
  PackageMaterial.value200000003220: '200000003220',
  PackageMaterial.value200000003221: '200000003221',
  PackageMaterial.value200000003222: '200000003222',
  PackageMaterial.value200000003223: '200000003223',
  PackageMaterial.value200000003224: '200000003224',
  PackageMaterial.value200000003225: '200000003225',
  PackageMaterial.value200000003226: '200000003226',
  PackageMaterial.value200000003227: '200000003227',
  PackageMaterial.value200000003228: '200000003228',
  PackageMaterial.value200000003229: '200000003229',
  PackageMaterial.value200000003529: '200000003529',
  PackageMaterial.value200000012514: '200000012514',
  PackageMaterial.value200000012515: '200000012515',
  PackageMaterial.value200000012521: '200000012521',
  PackageMaterial.value200000012522: '200000012522',
  PackageMaterial.value200000012523: '200000012523',
  PackageMaterial.value200000012524: '200000012524',
  PackageMaterial.value200000012538: '200000012538',
  PackageMaterial.value200000015521: '200000015521',
  PackageMaterial.value200000023330: '200000023330',
  PackageMaterial.value200000023332: '200000023332',
  PackageMaterial.value200000025255: '200000025255',
  PackageMaterial.value200000025257: '200000025257',
};

PackagedProductDefinitionShelfLifeStorage
    _$PackagedProductDefinitionShelfLifeStorageFromJson(
            Map<String, dynamic> json) =>
        PackagedProductDefinitionShelfLifeStorage(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          type: json['type'] == null
              ? null
              : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
          periodDuration: json['periodDuration'] == null
              ? null
              : FhirDuration.fromJson(
                  json['periodDuration'] as Map<String, dynamic>),
          periodString: json['periodString'] == null
              ? null
              : FhirString.fromJson(json['periodString']),
          periodStringElement: json['_periodString'] == null
              ? null
              : Element.fromJson(json['_periodString'] as Map<String, dynamic>),
          specialPrecautionsForStorage: (json['specialPrecautionsForStorage']
                  as List<dynamic>?)
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
          children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList(),
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ),
        );

Map<String, dynamic> _$PackagedProductDefinitionShelfLifeStorageToJson(
    PackagedProductDefinitionShelfLifeStorage instance) {
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
  writeNotNull('periodDuration', instance.periodDuration?.toJson());
  writeNotNull('periodString', instance.periodString?.toJson());
  writeNotNull('_periodString', instance.periodStringElement?.toJson());
  writeNotNull('specialPrecautionsForStorage',
      instance.specialPrecautionsForStorage?.map((e) => e.toJson()).toList());
  return val;
}

PackagedProductDefinitionProperty _$PackagedProductDefinitionPropertyFromJson(
        Map<String, dynamic> json) =>
    PackagedProductDefinitionProperty(
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
          : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
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
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$PackagedProductDefinitionPropertyToJson(
    PackagedProductDefinitionProperty instance) {
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

PackagedProductDefinitionContainedItem
    _$PackagedProductDefinitionContainedItemFromJson(
            Map<String, dynamic> json) =>
        PackagedProductDefinitionContainedItem(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          item:
              CodeableReference.fromJson(json['item'] as Map<String, dynamic>),
          amount: json['amount'] == null
              ? null
              : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
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

Map<String, dynamic> _$PackagedProductDefinitionContainedItemToJson(
    PackagedProductDefinitionContainedItem instance) {
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
  val['item'] = instance.item.toJson();
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}
