// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeItem _$ChargeItemFromJson(Map<String, dynamic> json) => ChargeItem(
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
      definitionUri: (json['definitionUri'] as List<dynamic>?)
          ?.map(FhirUri.fromJson)
          .toList(),
      definitionUriElement: (json['_definitionUri'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      definitionCanonical: (json['definitionCanonical'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      definitionCanonicalElement:
          (json['_definitionCanonical'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      status: $enumDecode(_$ChargeItemStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: $enumDecode(_$ChargeItemCodeEnumMap, json['code']),
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      context: json['context'] == null
          ? null
          : Reference.fromJson(json['context'] as Map<String, dynamic>),
      occurrenceDateTime: json['occurrenceDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['occurrenceDateTime'] as String),
      occurrenceDateTimeElement: json['_occurrenceDateTime'] == null
          ? null
          : Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>),
      occurrencePeriod: json['occurrencePeriod'] == null
          ? null
          : Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>),
      occurrenceTiming: json['occurrenceTiming'] == null
          ? null
          : Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => ChargeItemPerformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      performingOrganization: json['performingOrganization'] == null
          ? null
          : Reference.fromJson(
              json['performingOrganization'] as Map<String, dynamic>),
      requestingOrganization: json['requestingOrganization'] == null
          ? null
          : Reference.fromJson(
              json['requestingOrganization'] as Map<String, dynamic>),
      costCenter: json['costCenter'] == null
          ? null
          : Reference.fromJson(json['costCenter'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      bodysite: (json['bodysite'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      factorOverride: json['factorOverride'] == null
          ? null
          : FhirDecimal.fromJson(json['factorOverride']),
      factorOverrideElement: json['_factorOverride'] == null
          ? null
          : Element.fromJson(json['_factorOverride'] as Map<String, dynamic>),
      priceOverride: json['priceOverride'] == null
          ? null
          : Money.fromJson(json['priceOverride'] as Map<String, dynamic>),
      overrideReason: json['overrideReason'] == null
          ? null
          : FhirString.fromJson(json['overrideReason']),
      overrideReasonElement: json['_overrideReason'] == null
          ? null
          : Element.fromJson(json['_overrideReason'] as Map<String, dynamic>),
      enterer: json['enterer'] == null
          ? null
          : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
      enteredDate: json['enteredDate'] == null
          ? null
          : FhirDateTime.fromJson(json['enteredDate'] as String),
      enteredDateElement: json['_enteredDate'] == null
          ? null
          : Element.fromJson(json['_enteredDate'] as Map<String, dynamic>),
      reason: (json['reason'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      service: (json['service'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      productReference: json['productReference'] == null
          ? null
          : Reference.fromJson(
              json['productReference'] as Map<String, dynamic>),
      productCodeableConcept: json['productCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['productCodeableConcept'] as Map<String, dynamic>),
      account: (json['account'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
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
      resourceType:
          $enumDecodeNullable(_$R4ResourceTypeEnumMap, json['resourceType']),
    );

Map<String, dynamic> _$ChargeItemToJson(ChargeItem instance) {
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
  writeNotNull(
      'definitionUri', instance.definitionUri?.map((e) => e.toJson()).toList());
  writeNotNull('_definitionUri',
      instance.definitionUriElement?.map((e) => e.toJson()).toList());
  writeNotNull('definitionCanonical',
      instance.definitionCanonical?.map((e) => e.toJson()).toList());
  writeNotNull('_definitionCanonical',
      instance.definitionCanonicalElement?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('partOf', instance.partOf?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  val['subject'] = instance.subject.toJson();
  writeNotNull('context', instance.context?.toJson());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime?.toJson());
  writeNotNull(
      '_occurrenceDateTime', instance.occurrenceDateTimeElement?.toJson());
  writeNotNull('occurrencePeriod', instance.occurrencePeriod?.toJson());
  writeNotNull('occurrenceTiming', instance.occurrenceTiming?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e.toJson()).toList());
  writeNotNull(
      'performingOrganization', instance.performingOrganization?.toJson());
  writeNotNull(
      'requestingOrganization', instance.requestingOrganization?.toJson());
  writeNotNull('costCenter', instance.costCenter?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('bodysite', instance.bodysite?.map((e) => e.toJson()).toList());
  writeNotNull('factorOverride', instance.factorOverride?.toJson());
  writeNotNull('_factorOverride', instance.factorOverrideElement?.toJson());
  writeNotNull('priceOverride', instance.priceOverride?.toJson());
  writeNotNull('overrideReason', instance.overrideReason?.toJson());
  writeNotNull('_overrideReason', instance.overrideReasonElement?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  writeNotNull('enteredDate', instance.enteredDate?.toJson());
  writeNotNull('_enteredDate', instance.enteredDateElement?.toJson());
  writeNotNull('reason', instance.reason?.map((e) => e.toJson()).toList());
  writeNotNull('service', instance.service?.map((e) => e.toJson()).toList());
  writeNotNull('productReference', instance.productReference?.toJson());
  writeNotNull(
      'productCodeableConcept', instance.productCodeableConcept?.toJson());
  writeNotNull('account', instance.account?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull('supportingInformation',
      instance.supportingInformation?.map((e) => e.toJson()).toList());
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

const _$ChargeItemStatusEnumMap = {
  ChargeItemStatus.planned: 'planned',
  ChargeItemStatus.billable: 'billable',
  ChargeItemStatus.not_billable: 'not-billable',
  ChargeItemStatus.aborted: 'aborted',
  ChargeItemStatus.billed: 'billed',
  ChargeItemStatus.entered_in_error: 'entered-in-error',
  ChargeItemStatus.unknown: 'unknown',
};

const _$ChargeItemCodeEnumMap = {
  ChargeItemCode.value1100: '1100',
  ChargeItemCode.value1210: '1210',
  ChargeItemCode.value1320: '1320',
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

ChargeItemPerformer _$ChargeItemPerformerFromJson(Map<String, dynamic> json) =>
    ChargeItemPerformer(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      function_: json['function'] == null
          ? null
          : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ChargeItemPerformerToJson(ChargeItemPerformer instance) {
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
  writeNotNull('function', instance.function_?.toJson());
  val['actor'] = instance.actor.toJson();
  return val;
}
