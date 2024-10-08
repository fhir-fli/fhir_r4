// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionOrder _$NutritionOrderFromJson(Map<String, dynamic> json) =>
    NutritionOrder(
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
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      instantiatesCanonicalElement:
          (json['_instantiatesCanonical'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map(FhirUri.fromJson)
          .toList(),
      instantiatesUriElement: (json['_instantiatesUri'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map(FhirUri.fromJson)
          .toList(),
      instantiatesElement: (json['_instantiates'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$RequestStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      intent: $enumDecode(_$RequestIntentEnumMap, json['intent']),
      intentElement: json['_intent'] == null
          ? null
          : Element.fromJson(json['_intent'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] == null
          ? null
          : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
      dateTime: FhirDateTime.fromJson(json['dateTime'] as String),
      dateTimeElement: json['_dateTime'] == null
          ? null
          : Element.fromJson(json['_dateTime'] as Map<String, dynamic>),
      orderer: json['orderer'] == null
          ? null
          : Reference.fromJson(json['orderer'] as Map<String, dynamic>),
      allergyIntolerance: (json['allergyIntolerance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DietEnumMap, e))
          .toList(),
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      oralDiet: json['oralDiet'] == null
          ? null
          : NutritionOrderOralDiet.fromJson(
              json['oralDiet'] as Map<String, dynamic>),
      supplement: (json['supplement'] as List<dynamic>?)
          ?.map((e) =>
              NutritionOrderSupplement.fromJson(e as Map<String, dynamic>))
          .toList(),
      enteralFormula: json['enteralFormula'] == null
          ? null
          : NutritionOrderEnteralFormula.fromJson(
              json['enteralFormula'] as Map<String, dynamic>),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$NutritionOrderToJson(NutritionOrder instance) {
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
  writeNotNull('instantiatesCanonical',
      instance.instantiatesCanonical?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiatesCanonical',
      instance.instantiatesCanonicalElement?.map((e) => e.toJson()).toList());
  writeNotNull('instantiatesUri',
      instance.instantiatesUri?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiatesUri',
      instance.instantiatesUriElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'instantiates', instance.instantiates?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiates',
      instance.instantiatesElement?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  val['intent'] = instance.intent.toJson();
  writeNotNull('_intent', instance.intentElement?.toJson());
  val['patient'] = instance.patient.toJson();
  writeNotNull('encounter', instance.encounter?.toJson());
  val['dateTime'] = instance.dateTime.toJson();
  writeNotNull('_dateTime', instance.dateTimeElement?.toJson());
  writeNotNull('orderer', instance.orderer?.toJson());
  writeNotNull('allergyIntolerance',
      instance.allergyIntolerance?.map((e) => e.toJson()).toList());
  writeNotNull('foodPreferenceModifier',
      instance.foodPreferenceModifier?.map((e) => e.toJson()).toList());
  writeNotNull('excludeFoodModifier',
      instance.excludeFoodModifier?.map((e) => e.toJson()).toList());
  writeNotNull('oralDiet', instance.oralDiet?.toJson());
  writeNotNull(
      'supplement', instance.supplement?.map((e) => e.toJson()).toList());
  writeNotNull('enteralFormula', instance.enteralFormula?.toJson());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
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

const _$RequestStatusEnumMap = {
  RequestStatus.draft: 'draft',
  RequestStatus.active: 'active',
  RequestStatus.on_hold: 'on-hold',
  RequestStatus.revoked: 'revoked',
  RequestStatus.completed: 'completed',
  RequestStatus.entered_in_error: 'entered-in-error',
  RequestStatus.unknown: 'unknown',
};

const _$RequestIntentEnumMap = {
  RequestIntent.proposal: 'proposal',
  RequestIntent.plan: 'plan',
  RequestIntent.directive: 'directive',
  RequestIntent.order: 'order',
  RequestIntent.option: 'option',
};

const _$DietEnumMap = {
  Diet.vegetarian: 'vegetarian',
  Diet.dairy_free: 'dairy-free',
  Diet.nut_free: 'nut-free',
  Diet.gluten_free: 'gluten-free',
  Diet.vegan: 'vegan',
  Diet.halal: 'halal',
  Diet.kosher: 'kosher',
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

NutritionOrderOralDiet _$NutritionOrderOralDietFromJson(
        Map<String, dynamic> json) =>
    NutritionOrderOralDiet(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => Timing.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map(
              (e) => NutritionOrderNutrient.fromJson(e as Map<String, dynamic>))
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map(
              (e) => NutritionOrderTexture.fromJson(e as Map<String, dynamic>))
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FluidConsistencyTypeCodesEnumMap, e))
          .toList(),
      instruction: json['instruction'] == null
          ? null
          : FhirString.fromJson(json['instruction']),
      instructionElement: json['_instruction'] == null
          ? null
          : Element.fromJson(json['_instruction'] as Map<String, dynamic>),
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

Map<String, dynamic> _$NutritionOrderOralDietToJson(
    NutritionOrderOralDiet instance) {
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
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('schedule', instance.schedule?.map((e) => e.toJson()).toList());
  writeNotNull('nutrient', instance.nutrient?.map((e) => e.toJson()).toList());
  writeNotNull('texture', instance.texture?.map((e) => e.toJson()).toList());
  writeNotNull('fluidConsistencyType',
      instance.fluidConsistencyType?.map((e) => e.toJson()).toList());
  writeNotNull('instruction', instance.instruction?.toJson());
  writeNotNull('_instruction', instance.instructionElement?.toJson());
  return val;
}

const _$FluidConsistencyTypeCodesEnumMap = {
  FluidConsistencyTypeCodes.value439031000124108: '439031000124108',
  FluidConsistencyTypeCodes.value439021000124105: '439021000124105',
  FluidConsistencyTypeCodes.value439041000124103: '439041000124103',
  FluidConsistencyTypeCodes.value439081000124109: '439081000124109',
};

NutritionOrderNutrient _$NutritionOrderNutrientFromJson(
        Map<String, dynamic> json) =>
    NutritionOrderNutrient(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifier:
          $enumDecodeNullable(_$NutrientModifierCodesEnumMap, json['modifier']),
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
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$NutritionOrderNutrientToJson(
    NutritionOrderNutrient instance) {
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
  writeNotNull('modifier', instance.modifier?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

const _$NutrientModifierCodesEnumMap = {
  NutrientModifierCodes.value33463005: '33463005',
  NutrientModifierCodes.value39972003: '39972003',
  NutrientModifierCodes.value88480006: '88480006',
};

NutritionOrderTexture _$NutritionOrderTextureFromJson(
        Map<String, dynamic> json) =>
    NutritionOrderTexture(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifier:
          $enumDecodeNullable(_$TextureModifierCodesEnumMap, json['modifier']),
      foodType: $enumDecodeNullable(
          _$TextureModifiedFoodTypeCodesEnumMap, json['foodType']),
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

Map<String, dynamic> _$NutritionOrderTextureToJson(
    NutritionOrderTexture instance) {
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
  writeNotNull('modifier', instance.modifier?.toJson());
  writeNotNull('foodType', instance.foodType?.toJson());
  return val;
}

const _$TextureModifierCodesEnumMap = {
  TextureModifierCodes.value228053002: '228053002',
  TextureModifierCodes.value439091000124107: '439091000124107',
  TextureModifierCodes.value228049004: '228049004',
  TextureModifierCodes.value441881000124103: '441881000124103',
  TextureModifierCodes.value441761000124103: '441761000124103',
  TextureModifierCodes.value441751000124100: '441751000124100',
  TextureModifierCodes.value228059003: '228059003',
  TextureModifierCodes.value441791000124106: '441791000124106',
  TextureModifierCodes.value228055009: '228055009',
  TextureModifierCodes.value228056005: '228056005',
  TextureModifierCodes.value441771000124105: '441771000124105',
  TextureModifierCodes.value228057001: '228057001',
  TextureModifierCodes.value228058006: '228058006',
  TextureModifierCodes.value228060008: '228060008',
};

const _$TextureModifiedFoodTypeCodesEnumMap = {
  TextureModifiedFoodTypeCodes.value255620007: '255620007',
  TextureModifiedFoodTypeCodes.value28647000: '28647000',
  TextureModifiedFoodTypeCodes.value22836000: '22836000',
  TextureModifiedFoodTypeCodes.value72511004: '72511004',
  TextureModifiedFoodTypeCodes.value226760005: '226760005',
  TextureModifiedFoodTypeCodes.value226887002: '226887002',
  TextureModifiedFoodTypeCodes.value102263004: '102263004',
  TextureModifiedFoodTypeCodes.value74242007: '74242007',
  TextureModifiedFoodTypeCodes.value227415002: '227415002',
  TextureModifiedFoodTypeCodes.value264331002: '264331002',
  TextureModifiedFoodTypeCodes.value227518002: '227518002',
  TextureModifiedFoodTypeCodes.value44027008: '44027008',
  TextureModifiedFoodTypeCodes.value226529007: '226529007',
  TextureModifiedFoodTypeCodes.value227210005: '227210005',
};

NutritionOrderSupplement _$NutritionOrderSupplementFromJson(
        Map<String, dynamic> json) =>
    NutritionOrderSupplement(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$SupplementTypeCodesEnumMap, json['type']),
      productName: json['productName'] == null
          ? null
          : FhirString.fromJson(json['productName']),
      productNameElement: json['_productName'] == null
          ? null
          : Element.fromJson(json['_productName'] as Map<String, dynamic>),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => Timing.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      instruction: json['instruction'] == null
          ? null
          : FhirString.fromJson(json['instruction']),
      instructionElement: json['_instruction'] == null
          ? null
          : Element.fromJson(json['_instruction'] as Map<String, dynamic>),
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

Map<String, dynamic> _$NutritionOrderSupplementToJson(
    NutritionOrderSupplement instance) {
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
  writeNotNull('productName', instance.productName?.toJson());
  writeNotNull('_productName', instance.productNameElement?.toJson());
  writeNotNull('schedule', instance.schedule?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('instruction', instance.instruction?.toJson());
  writeNotNull('_instruction', instance.instructionElement?.toJson());
  return val;
}

const _$SupplementTypeCodesEnumMap = {
  SupplementTypeCodes.value442901000124106: '442901000124106',
  SupplementTypeCodes.value443031000124106: '443031000124106',
  SupplementTypeCodes.value443051000124104: '443051000124104',
  SupplementTypeCodes.value442911000124109: '442911000124109',
  SupplementTypeCodes.value443021000124108: '443021000124108',
  SupplementTypeCodes.value442971000124100: '442971000124100',
  SupplementTypeCodes.value442981000124102: '442981000124102',
  SupplementTypeCodes.value442991000124104: '442991000124104',
  SupplementTypeCodes.value443011000124100: '443011000124100',
  SupplementTypeCodes.value442961000124107: '442961000124107',
  SupplementTypeCodes.value442951000124105: '442951000124105',
  SupplementTypeCodes.value442941000124108: '442941000124108',
  SupplementTypeCodes.value442921000124101: '442921000124101',
  SupplementTypeCodes.value442931000124103: '442931000124103',
  SupplementTypeCodes.value444331000124106: '444331000124106',
  SupplementTypeCodes.value443361000124100: '443361000124100',
  SupplementTypeCodes.value443391000124108: '443391000124108',
  SupplementTypeCodes.value443401000124105: '443401000124105',
  SupplementTypeCodes.value443491000124103: '443491000124103',
  SupplementTypeCodes.value443501000124106: '443501000124106',
  SupplementTypeCodes.value443421000124100: '443421000124100',
  SupplementTypeCodes.value443471000124104: '443471000124104',
  SupplementTypeCodes.value444431000124104: '444431000124104',
  SupplementTypeCodes.value443451000124109: '443451000124109',
  SupplementTypeCodes.value444321000124108: '444321000124108',
  SupplementTypeCodes.value441561000124106: '441561000124106',
  SupplementTypeCodes.value443461000124106: '443461000124106',
  SupplementTypeCodes.value441531000124102: '441531000124102',
  SupplementTypeCodes.value443561000124107: '443561000124107',
  SupplementTypeCodes.value443481000124101: '443481000124101',
  SupplementTypeCodes.value441571000124104: '441571000124104',
  SupplementTypeCodes.value441591000124103: '441591000124103',
  SupplementTypeCodes.value441601000124106: '441601000124106',
  SupplementTypeCodes.value443351000124102: '443351000124102',
  SupplementTypeCodes.value443771000124106: '443771000124106',
  SupplementTypeCodes.value441671000124100: '441671000124100',
  SupplementTypeCodes.value443111000124101: '443111000124101',
  SupplementTypeCodes.value443431000124102: '443431000124102',
  SupplementTypeCodes.value443411000124108: '443411000124108',
  SupplementTypeCodes.value444361000124102: '444361000124102',
  SupplementTypeCodes.value444401000124107: '444401000124107',
  SupplementTypeCodes.value444381000124107: '444381000124107',
  SupplementTypeCodes.value444371000124109: '444371000124109',
  SupplementTypeCodes.value443441000124107: '443441000124107',
  SupplementTypeCodes.value442651000124102: '442651000124102',
};

NutritionOrderEnteralFormula _$NutritionOrderEnteralFormulaFromJson(
        Map<String, dynamic> json) =>
    NutritionOrderEnteralFormula(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseFormulaType: $enumDecodeNullable(
          _$EnteralFormulaTypeCodesEnumMap, json['baseFormulaType']),
      baseFormulaProductName: json['baseFormulaProductName'] == null
          ? null
          : FhirString.fromJson(json['baseFormulaProductName']),
      baseFormulaProductNameElement: json['_baseFormulaProductName'] == null
          ? null
          : Element.fromJson(
              json['_baseFormulaProductName'] as Map<String, dynamic>),
      additiveType: $enumDecodeNullable(
          _$EnteralFormulaAdditiveTypeCodeEnumMap, json['additiveType']),
      additiveProductName: json['additiveProductName'] == null
          ? null
          : FhirString.fromJson(json['additiveProductName']),
      additiveProductNameElement: json['_additiveProductName'] == null
          ? null
          : Element.fromJson(
              json['_additiveProductName'] as Map<String, dynamic>),
      caloricDensity: json['caloricDensity'] == null
          ? null
          : Quantity.fromJson(json['caloricDensity'] as Map<String, dynamic>),
      routeofAdministration: $enumDecodeNullable(
          _$EnteralRouteCodesEnumMap, json['routeofAdministration']),
      administration: (json['administration'] as List<dynamic>?)
          ?.map((e) =>
              NutritionOrderAdministration.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxVolumeToDeliver: json['maxVolumeToDeliver'] == null
          ? null
          : Quantity.fromJson(
              json['maxVolumeToDeliver'] as Map<String, dynamic>),
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

Map<String, dynamic> _$NutritionOrderEnteralFormulaToJson(
    NutritionOrderEnteralFormula instance) {
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
  writeNotNull('baseFormulaType', instance.baseFormulaType?.toJson());
  writeNotNull(
      'baseFormulaProductName', instance.baseFormulaProductName?.toJson());
  writeNotNull('_baseFormulaProductName',
      instance.baseFormulaProductNameElement?.toJson());
  writeNotNull('additiveType', instance.additiveType?.toJson());
  writeNotNull('additiveProductName', instance.additiveProductName?.toJson());
  writeNotNull(
      '_additiveProductName', instance.additiveProductNameElement?.toJson());
  writeNotNull('caloricDensity', instance.caloricDensity?.toJson());
  writeNotNull(
      'routeofAdministration', instance.routeofAdministration?.toJson());
  writeNotNull('administration',
      instance.administration?.map((e) => e.toJson()).toList());
  writeNotNull('maxVolumeToDeliver', instance.maxVolumeToDeliver?.toJson());
  return val;
}

const _$EnteralFormulaTypeCodesEnumMap = {
  EnteralFormulaTypeCodes.value443031000124106: '443031000124106',
  EnteralFormulaTypeCodes.value443051000124104: '443051000124104',
  EnteralFormulaTypeCodes.value442911000124109: '442911000124109',
  EnteralFormulaTypeCodes.value443021000124108: '443021000124108',
  EnteralFormulaTypeCodes.value442971000124100: '442971000124100',
  EnteralFormulaTypeCodes.value442981000124102: '442981000124102',
  EnteralFormulaTypeCodes.value442991000124104: '442991000124104',
  EnteralFormulaTypeCodes.value443011000124100: '443011000124100',
  EnteralFormulaTypeCodes.value442961000124107: '442961000124107',
  EnteralFormulaTypeCodes.value442951000124105: '442951000124105',
  EnteralFormulaTypeCodes.value442941000124108: '442941000124108',
  EnteralFormulaTypeCodes.value442921000124101: '442921000124101',
  EnteralFormulaTypeCodes.value442931000124103: '442931000124103',
  EnteralFormulaTypeCodes.value443361000124100: '443361000124100',
  EnteralFormulaTypeCodes.value443401000124105: '443401000124105',
  EnteralFormulaTypeCodes.value443491000124103: '443491000124103',
  EnteralFormulaTypeCodes.value443501000124106: '443501000124106',
  EnteralFormulaTypeCodes.value443421000124100: '443421000124100',
  EnteralFormulaTypeCodes.value443471000124104: '443471000124104',
  EnteralFormulaTypeCodes.value444431000124104: '444431000124104',
  EnteralFormulaTypeCodes.value443451000124109: '443451000124109',
  EnteralFormulaTypeCodes.value441561000124106: '441561000124106',
  EnteralFormulaTypeCodes.value443461000124106: '443461000124106',
  EnteralFormulaTypeCodes.value441531000124102: '441531000124102',
  EnteralFormulaTypeCodes.value443561000124107: '443561000124107',
  EnteralFormulaTypeCodes.value443481000124101: '443481000124101',
  EnteralFormulaTypeCodes.value441571000124104: '441571000124104',
  EnteralFormulaTypeCodes.value441591000124103: '441591000124103',
  EnteralFormulaTypeCodes.value441601000124106: '441601000124106',
  EnteralFormulaTypeCodes.value443351000124102: '443351000124102',
  EnteralFormulaTypeCodes.value443771000124106: '443771000124106',
  EnteralFormulaTypeCodes.value441671000124100: '441671000124100',
  EnteralFormulaTypeCodes.value443111000124101: '443111000124101',
  EnteralFormulaTypeCodes.value443431000124102: '443431000124102',
  EnteralFormulaTypeCodes.value443411000124108: '443411000124108',
  EnteralFormulaTypeCodes.value442651000124102: '442651000124102',
};

const _$EnteralFormulaAdditiveTypeCodeEnumMap = {
  EnteralFormulaAdditiveTypeCode.lipid: 'lipid',
  EnteralFormulaAdditiveTypeCode.protein: 'protein',
  EnteralFormulaAdditiveTypeCode.carbohydrate: 'carbohydrate',
  EnteralFormulaAdditiveTypeCode.fiber: 'fiber',
  EnteralFormulaAdditiveTypeCode.water: 'water',
};

const _$EnteralRouteCodesEnumMap = {
  EnteralRouteCodes.PO: 'PO',
  EnteralRouteCodes.EFT: 'EFT',
  EnteralRouteCodes.ENTINSTL: 'ENTINSTL',
  EnteralRouteCodes.GT: 'GT',
  EnteralRouteCodes.NGT: 'NGT',
  EnteralRouteCodes.OGT: 'OGT',
  EnteralRouteCodes.GJT: 'GJT',
  EnteralRouteCodes.JJTINSTL: 'JJTINSTL',
  EnteralRouteCodes.OJJ: 'OJJ',
};

NutritionOrderAdministration _$NutritionOrderAdministrationFromJson(
        Map<String, dynamic> json) =>
    NutritionOrderAdministration(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: json['schedule'] == null
          ? null
          : Timing.fromJson(json['schedule'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      rateQuantity: json['rateQuantity'] == null
          ? null
          : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
      rateRatio: json['rateRatio'] == null
          ? null
          : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
      administrationInstruction: json['administrationInstruction'] == null
          ? null
          : FhirString.fromJson(json['administrationInstruction']),
      administrationInstructionElement:
          json['_administrationInstruction'] == null
              ? null
              : Element.fromJson(
                  json['_administrationInstruction'] as Map<String, dynamic>),
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

Map<String, dynamic> _$NutritionOrderAdministrationToJson(
    NutritionOrderAdministration instance) {
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
  writeNotNull('schedule', instance.schedule?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('rateQuantity', instance.rateQuantity?.toJson());
  writeNotNull('rateRatio', instance.rateRatio?.toJson());
  writeNotNull('administrationInstruction',
      instance.administrationInstruction?.toJson());
  writeNotNull('_administrationInstruction',
      instance.administrationInstructionElement?.toJson());
  return val;
}
