// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explanation_of_benefit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplanationOfBenefit _$ExplanationOfBenefitFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefit(
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
      status: $enumDecode(_$ExplanationOfBenefitStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      type: $enumDecode(_$ClaimTypeCodesEnumMap, json['type']),
      subType: $enumDecodeNullable(
          _$ExampleClaimSubTypeCodesEnumMap, json['subType']),
      use: $enumDecode(_$UseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      billablePeriod: json['billablePeriod'] == null
          ? null
          : Period.fromJson(json['billablePeriod'] as Map<String, dynamic>),
      created: FhirDateTime.fromJson(json['created'] as String),
      createdElement: json['_created'] == null
          ? null
          : Element.fromJson(json['_created'] as Map<String, dynamic>),
      enterer: json['enterer'] == null
          ? null
          : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
      insurer: Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      priority:
          $enumDecodeNullable(_$ProcessPriorityCodesEnumMap, json['priority']),
      fundsReserveRequested: $enumDecodeNullable(
          _$FundsReservationCodesEnumMap, json['fundsReserveRequested']),
      fundsReserve: $enumDecodeNullable(
          _$FundsReservationCodesEnumMap, json['fundsReserve']),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitRelated.fromJson(e as Map<String, dynamic>))
          .toList(),
      prescription: json['prescription'] == null
          ? null
          : Reference.fromJson(json['prescription'] as Map<String, dynamic>),
      originalPrescription: json['originalPrescription'] == null
          ? null
          : Reference.fromJson(
              json['originalPrescription'] as Map<String, dynamic>),
      payee: json['payee'] == null
          ? null
          : ExplanationOfBenefitPayee.fromJson(
              json['payee'] as Map<String, dynamic>),
      referral: json['referral'] == null
          ? null
          : Reference.fromJson(json['referral'] as Map<String, dynamic>),
      facility: json['facility'] == null
          ? null
          : Reference.fromJson(json['facility'] as Map<String, dynamic>),
      claim: json['claim'] == null
          ? null
          : Reference.fromJson(json['claim'] as Map<String, dynamic>),
      claimResponse: json['claimResponse'] == null
          ? null
          : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
      outcome: $enumDecode(_$RemittanceOutcomeEnumMap, json['outcome']),
      outcomeElement: json['_outcome'] == null
          ? null
          : Element.fromJson(json['_outcome'] as Map<String, dynamic>),
      disposition: json['disposition'] == null
          ? null
          : FhirString.fromJson(json['disposition']),
      dispositionElement: json['_disposition'] == null
          ? null
          : Element.fromJson(json['_disposition'] as Map<String, dynamic>),
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      preAuthRefElement: (json['_preAuthRef'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitCareTeam.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitSupportingInfo.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitDiagnosis.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitProcedure.fromJson(e as Map<String, dynamic>))
          .toList(),
      precedence: json['precedence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['precedence']),
      precedenceElement: json['_precedence'] == null
          ? null
          : Element.fromJson(json['_precedence'] as Map<String, dynamic>),
      insurance: (json['insurance'] as List<dynamic>)
          .map((e) =>
              ExplanationOfBenefitInsurance.fromJson(e as Map<String, dynamic>))
          .toList(),
      accident: json['accident'] == null
          ? null
          : ExplanationOfBenefitAccident.fromJson(
              json['accident'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitAddItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitTotal.fromJson(e as Map<String, dynamic>))
          .toList(),
      payment: json['payment'] == null
          ? null
          : ExplanationOfBenefitPayment.fromJson(
              json['payment'] as Map<String, dynamic>),
      formCode: $enumDecodeNullable(_$FormCodesEnumMap, json['formCode']),
      form: json['form'] == null
          ? null
          : Attachment.fromJson(json['form'] as Map<String, dynamic>),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitProcessNote.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      benefitPeriod: json['benefitPeriod'] == null
          ? null
          : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitBenefitBalance.fromJson(
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

Map<String, dynamic> _$ExplanationOfBenefitToJson(
    ExplanationOfBenefit instance) {
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
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('subType', instance.subType?.toJson());
  val['use'] = instance.use.toJson();
  writeNotNull('_use', instance.useElement?.toJson());
  val['patient'] = instance.patient.toJson();
  writeNotNull('billablePeriod', instance.billablePeriod?.toJson());
  val['created'] = instance.created.toJson();
  writeNotNull('_created', instance.createdElement?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  val['insurer'] = instance.insurer.toJson();
  val['provider'] = instance.provider.toJson();
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull(
      'fundsReserveRequested', instance.fundsReserveRequested?.toJson());
  writeNotNull('fundsReserve', instance.fundsReserve?.toJson());
  writeNotNull('related', instance.related?.map((e) => e.toJson()).toList());
  writeNotNull('prescription', instance.prescription?.toJson());
  writeNotNull('originalPrescription', instance.originalPrescription?.toJson());
  writeNotNull('payee', instance.payee?.toJson());
  writeNotNull('referral', instance.referral?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('claimResponse', instance.claimResponse?.toJson());
  val['outcome'] = instance.outcome.toJson();
  writeNotNull('_outcome', instance.outcomeElement?.toJson());
  writeNotNull('disposition', instance.disposition?.toJson());
  writeNotNull('_disposition', instance.dispositionElement?.toJson());
  writeNotNull(
      'preAuthRef', instance.preAuthRef?.map((e) => e.toJson()).toList());
  writeNotNull('_preAuthRef',
      instance.preAuthRefElement?.map((e) => e.toJson()).toList());
  writeNotNull('preAuthRefPeriod',
      instance.preAuthRefPeriod?.map((e) => e.toJson()).toList());
  writeNotNull('careTeam', instance.careTeam?.map((e) => e.toJson()).toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e.toJson()).toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e.toJson()).toList());
  writeNotNull(
      'procedure', instance.procedure?.map((e) => e.toJson()).toList());
  writeNotNull('precedence', instance.precedence?.toJson());
  writeNotNull('_precedence', instance.precedenceElement?.toJson());
  val['insurance'] = instance.insurance.map((e) => e.toJson()).toList();
  writeNotNull('accident', instance.accident?.toJson());
  writeNotNull('item', instance.item?.map((e) => e.toJson()).toList());
  writeNotNull('addItem', instance.addItem?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull('total', instance.total?.map((e) => e.toJson()).toList());
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('formCode', instance.formCode?.toJson());
  writeNotNull('form', instance.form?.toJson());
  writeNotNull(
      'processNote', instance.processNote?.map((e) => e.toJson()).toList());
  writeNotNull('benefitPeriod', instance.benefitPeriod?.toJson());
  writeNotNull('benefitBalance',
      instance.benefitBalance?.map((e) => e.toJson()).toList());
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

const _$ExplanationOfBenefitStatusEnumMap = {
  ExplanationOfBenefitStatus.active: 'active',
  ExplanationOfBenefitStatus.cancelled: 'cancelled',
  ExplanationOfBenefitStatus.draft: 'draft',
  ExplanationOfBenefitStatus.entered_in_error: 'entered-in-error',
};

const _$ClaimTypeCodesEnumMap = {
  ClaimTypeCodes.institutional: 'institutional',
  ClaimTypeCodes.oral: 'oral',
  ClaimTypeCodes.pharmacy: 'pharmacy',
  ClaimTypeCodes.professional: 'professional',
  ClaimTypeCodes.vision: 'vision',
};

const _$ExampleClaimSubTypeCodesEnumMap = {
  ExampleClaimSubTypeCodes.ortho: 'ortho',
  ExampleClaimSubTypeCodes.emergency: 'emergency',
};

const _$UseEnumMap = {
  Use.claim: 'claim',
  Use.preauthorization: 'preauthorization',
  Use.predetermination: 'predetermination',
};

const _$ProcessPriorityCodesEnumMap = {
  ProcessPriorityCodes.stat: 'stat',
  ProcessPriorityCodes.normal: 'normal',
  ProcessPriorityCodes.deferred_: 'deferred',
};

const _$FundsReservationCodesEnumMap = {
  FundsReservationCodes.patient: 'patient',
  FundsReservationCodes.provider: 'provider',
  FundsReservationCodes.none: 'none',
};

const _$RemittanceOutcomeEnumMap = {
  RemittanceOutcome.queued: 'queued',
  RemittanceOutcome.complete: 'complete',
  RemittanceOutcome.error: 'error',
  RemittanceOutcome.partial: 'partial',
};

const _$FormCodesEnumMap = {
  FormCodes.value1: '1',
  FormCodes.value2: '2',
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

ExplanationOfBenefitRelated _$ExplanationOfBenefitRelatedFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitRelated(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      claim: json['claim'] == null
          ? null
          : Reference.fromJson(json['claim'] as Map<String, dynamic>),
      relationship: $enumDecodeNullable(
          _$ExampleRelatedClaimRelationshipCodesEnumMap, json['relationship']),
      reference: json['reference'] == null
          ? null
          : Identifier.fromJson(json['reference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitRelatedToJson(
    ExplanationOfBenefitRelated instance) {
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
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  return val;
}

const _$ExampleRelatedClaimRelationshipCodesEnumMap = {
  ExampleRelatedClaimRelationshipCodes.prior: 'prior',
  ExampleRelatedClaimRelationshipCodes.associated: 'associated',
};

ExplanationOfBenefitPayee _$ExplanationOfBenefitPayeeFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitPayee(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$ClaimPayeeTypeCodesEnumMap, json['type']),
      party: json['party'] == null
          ? null
          : Reference.fromJson(json['party'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitPayeeToJson(
    ExplanationOfBenefitPayee instance) {
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
  writeNotNull('party', instance.party?.toJson());
  return val;
}

const _$ClaimPayeeTypeCodesEnumMap = {
  ClaimPayeeTypeCodes.subscriber: 'subscriber',
  ClaimPayeeTypeCodes.provider: 'provider',
  ClaimPayeeTypeCodes.other: 'other',
};

ExplanationOfBenefitCareTeam _$ExplanationOfBenefitCareTeamFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitCareTeam(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      responsible: json['responsible'] == null
          ? null
          : FhirBoolean.fromJson(json['responsible']),
      responsibleElement: json['_responsible'] == null
          ? null
          : Element.fromJson(json['_responsible'] as Map<String, dynamic>),
      role: $enumDecodeNullable(_$ClaimCareTeamRoleCodesEnumMap, json['role']),
      qualification: $enumDecodeNullable(
          _$ExampleProviderQualificationCodesEnumMap, json['qualification']),
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

Map<String, dynamic> _$ExplanationOfBenefitCareTeamToJson(
    ExplanationOfBenefitCareTeam instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['provider'] = instance.provider.toJson();
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('_responsible', instance.responsibleElement?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('qualification', instance.qualification?.toJson());
  return val;
}

const _$ClaimCareTeamRoleCodesEnumMap = {
  ClaimCareTeamRoleCodes.primary: 'primary',
  ClaimCareTeamRoleCodes.assist: 'assist',
  ClaimCareTeamRoleCodes.supervisor: 'supervisor',
  ClaimCareTeamRoleCodes.other: 'other',
};

const _$ExampleProviderQualificationCodesEnumMap = {
  ExampleProviderQualificationCodes.value311405: '311405',
  ExampleProviderQualificationCodes.value604215: '604215',
  ExampleProviderQualificationCodes.value604210: '604210',
};

ExplanationOfBenefitSupportingInfo _$ExplanationOfBenefitSupportingInfoFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitSupportingInfo(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      category:
          $enumDecode(_$ClaimInformationCategoryCodesEnumMap, json['category']),
      code: $enumDecodeNullable(_$ExceptionCodesEnumMap, json['code']),
      timingDate: json['timingDate'] == null
          ? null
          : FhirDate.fromJson(json['timingDate'] as String),
      timingDateElement: json['_timingDate'] == null
          ? null
          : Element.fromJson(json['_timingDate'] as Map<String, dynamic>),
      timingPeriod: json['timingPeriod'] == null
          ? null
          : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
      valueBoolean: json['valueBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
      valueString: json['valueString'] == null
          ? null
          : FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueQuantity: json['valueQuantity'] == null
          ? null
          : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueAttachment: json['valueAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>),
      valueReference: json['valueReference'] == null
          ? null
          : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
      reason:
          $enumDecodeNullable(_$MissingToothReasonCodesEnumMap, json['reason']),
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

Map<String, dynamic> _$ExplanationOfBenefitSupportingInfoToJson(
    ExplanationOfBenefitSupportingInfo instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['category'] = instance.category.toJson();
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('timingDate', instance.timingDate?.toJson());
  writeNotNull('_timingDate', instance.timingDateElement?.toJson());
  writeNotNull('timingPeriod', instance.timingPeriod?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean?.toJson());
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  writeNotNull('valueString', instance.valueString?.toJson());
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  return val;
}

const _$ClaimInformationCategoryCodesEnumMap = {
  ClaimInformationCategoryCodes.info: 'info',
  ClaimInformationCategoryCodes.discharge: 'discharge',
  ClaimInformationCategoryCodes.onset: 'onset',
  ClaimInformationCategoryCodes.related: 'related',
  ClaimInformationCategoryCodes.exception: 'exception',
  ClaimInformationCategoryCodes.material: 'material',
  ClaimInformationCategoryCodes.attachment: 'attachment',
  ClaimInformationCategoryCodes.missingtooth: 'missingtooth',
  ClaimInformationCategoryCodes.prosthesis: 'prosthesis',
  ClaimInformationCategoryCodes.other: 'other',
  ClaimInformationCategoryCodes.hospitalized: 'hospitalized',
  ClaimInformationCategoryCodes.employmentimpacted: 'employmentimpacted',
  ClaimInformationCategoryCodes.externalcause: 'externalcause',
  ClaimInformationCategoryCodes.patientreasonforvisit: 'patientreasonforvisit',
};

const _$ExceptionCodesEnumMap = {
  ExceptionCodes.student: 'student',
  ExceptionCodes.disabled: 'disabled',
};

const _$MissingToothReasonCodesEnumMap = {
  MissingToothReasonCodes.e: 'e',
  MissingToothReasonCodes.c: 'c',
  MissingToothReasonCodes.u: 'u',
  MissingToothReasonCodes.o: 'o',
};

ExplanationOfBenefitDiagnosis _$ExplanationOfBenefitDiagnosisFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitDiagnosis(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      diagnosisCodeableConcept: CodeableConcept.fromJson(
          json['diagnosisCodeableConcept'] as Map<String, dynamic>),
      diagnosisReference: Reference.fromJson(
          json['diagnosisReference'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExampleDiagnosisTypeCodesEnumMap, e))
          .toList(),
      onAdmission: $enumDecodeNullable(
          _$ExampleDiagnosisOnAdmissionCodesEnumMap, json['onAdmission']),
      packageCode: $enumDecodeNullable(
          _$ExampleDiagnosisRelatedGroupCodesEnumMap, json['packageCode']),
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

Map<String, dynamic> _$ExplanationOfBenefitDiagnosisToJson(
    ExplanationOfBenefitDiagnosis instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['diagnosisCodeableConcept'] = instance.diagnosisCodeableConcept.toJson();
  val['diagnosisReference'] = instance.diagnosisReference.toJson();
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('onAdmission', instance.onAdmission?.toJson());
  writeNotNull('packageCode', instance.packageCode?.toJson());
  return val;
}

const _$ExampleDiagnosisTypeCodesEnumMap = {
  ExampleDiagnosisTypeCodes.admitting: 'admitting',
  ExampleDiagnosisTypeCodes.clinical: 'clinical',
  ExampleDiagnosisTypeCodes.differential: 'differential',
  ExampleDiagnosisTypeCodes.discharge: 'discharge',
  ExampleDiagnosisTypeCodes.laboratory: 'laboratory',
  ExampleDiagnosisTypeCodes.nursing: 'nursing',
  ExampleDiagnosisTypeCodes.prenatal: 'prenatal',
  ExampleDiagnosisTypeCodes.principal: 'principal',
  ExampleDiagnosisTypeCodes.radiology: 'radiology',
  ExampleDiagnosisTypeCodes.remote: 'remote',
  ExampleDiagnosisTypeCodes.retrospective: 'retrospective',
  ExampleDiagnosisTypeCodes.self: 'self',
};

const _$ExampleDiagnosisOnAdmissionCodesEnumMap = {
  ExampleDiagnosisOnAdmissionCodes.y: 'y',
  ExampleDiagnosisOnAdmissionCodes.n: 'n',
  ExampleDiagnosisOnAdmissionCodes.u: 'u',
  ExampleDiagnosisOnAdmissionCodes.w: 'w',
};

const _$ExampleDiagnosisRelatedGroupCodesEnumMap = {
  ExampleDiagnosisRelatedGroupCodes.value100: '100',
  ExampleDiagnosisRelatedGroupCodes.value101: '101',
  ExampleDiagnosisRelatedGroupCodes.value300: '300',
  ExampleDiagnosisRelatedGroupCodes.value400: '400',
};

ExplanationOfBenefitProcedure _$ExplanationOfBenefitProcedureFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitProcedure(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExampleProcedureTypeCodesEnumMap, e))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      procedureCodeableConcept: $enumDecode(
          _$ICD10ProcedureCodesEnumMap, json['procedureCodeableConcept']),
      procedureReference:
          $enumDecode(_$ICD10ProcedureCodesEnumMap, json['procedureReference']),
      udi: (json['udi'] as List<dynamic>?)
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

Map<String, dynamic> _$ExplanationOfBenefitProcedureToJson(
    ExplanationOfBenefitProcedure instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  val['procedureCodeableConcept'] = instance.procedureCodeableConcept.toJson();
  val['procedureReference'] = instance.procedureReference.toJson();
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  return val;
}

const _$ExampleProcedureTypeCodesEnumMap = {
  ExampleProcedureTypeCodes.primary: 'primary',
  ExampleProcedureTypeCodes.secondary: 'secondary',
};

const _$ICD10ProcedureCodesEnumMap = {
  ICD10ProcedureCodes.value123001: '123001',
  ICD10ProcedureCodes.value123002: '123002',
  ICD10ProcedureCodes.value123003: '123003',
};

ExplanationOfBenefitInsurance _$ExplanationOfBenefitInsuranceFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitInsurance(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      focal: FhirBoolean.fromJson(json['focal']),
      focalElement: json['_focal'] == null
          ? null
          : Element.fromJson(json['_focal'] as Map<String, dynamic>),
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      preAuthRefElement: (json['_preAuthRef'] as List<dynamic>?)
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

Map<String, dynamic> _$ExplanationOfBenefitInsuranceToJson(
    ExplanationOfBenefitInsurance instance) {
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
  val['focal'] = instance.focal.toJson();
  writeNotNull('_focal', instance.focalElement?.toJson());
  val['coverage'] = instance.coverage.toJson();
  writeNotNull(
      'preAuthRef', instance.preAuthRef?.map((e) => e.toJson()).toList());
  writeNotNull('_preAuthRef',
      instance.preAuthRefElement?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitAccident _$ExplanationOfBenefitAccidentFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitAccident(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDate.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      locationAddress: json['locationAddress'] == null
          ? null
          : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
      locationReference: json['locationReference'] == null
          ? null
          : Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitAccidentToJson(
    ExplanationOfBenefitAccident instance) {
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
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  return val;
}

ExplanationOfBenefitItem _$ExplanationOfBenefitItemFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitItem(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      careTeamSequence: (json['careTeamSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      careTeamSequenceElement: (json['_careTeamSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosisSequence: (json['diagnosisSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      diagnosisSequenceElement: (json['_diagnosisSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedureSequence: (json['procedureSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      procedureSequenceElement: (json['_procedureSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      informationSequence: (json['informationSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      informationSequenceElement:
          (json['_informationSequence'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      revenue: $enumDecodeNullable(
          _$ExampleRevenueCenterCodesEnumMap, json['revenue']),
      category:
          $enumDecodeNullable(_$BenefitCategoryCodesEnumMap, json['category']),
      productOrService:
          $enumDecode(_$USCLSCodesEnumMap, json['productOrService']),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModifierTypeCodesEnumMap, e))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExampleProgramReasonCodesEnumMap, e))
          .toList(),
      servicedDate: json['servicedDate'] == null
          ? null
          : FhirDate.fromJson(json['servicedDate'] as String),
      servicedDateElement: json['_servicedDate'] == null
          ? null
          : Element.fromJson(json['_servicedDate'] as Map<String, dynamic>),
      servicedPeriod: json['servicedPeriod'] == null
          ? null
          : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
      locationCodeableConcept: $enumDecodeNullable(
          _$ExampleServicePlaceCodesEnumMap, json['locationCodeableConcept']),
      locationAddress: $enumDecodeNullable(
          _$ExampleServicePlaceCodesEnumMap, json['locationAddress']),
      locationReference: $enumDecodeNullable(
          _$ExampleServicePlaceCodesEnumMap, json['locationReference']),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodySite: $enumDecodeNullable(_$OralSiteCodesEnumMap, json['bodySite']),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SurfaceCodesEnumMap, e))
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitItemToJson(
    ExplanationOfBenefitItem instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('careTeamSequence',
      instance.careTeamSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_careTeamSequence',
      instance.careTeamSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('diagnosisSequence',
      instance.diagnosisSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_diagnosisSequence',
      instance.diagnosisSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('procedureSequence',
      instance.procedureSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_procedureSequence',
      instance.procedureSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('informationSequence',
      instance.informationSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_informationSequence',
      instance.informationSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('servicedDate', instance.servicedDate?.toJson());
  writeNotNull('_servicedDate', instance.servicedDateElement?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull(
      'locationCodeableConcept', instance.locationCodeableConcept?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e.toJson()).toList());
  writeNotNull(
      'encounter', instance.encounter?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

const _$ExampleRevenueCenterCodesEnumMap = {
  ExampleRevenueCenterCodes.value0370: '0370',
  ExampleRevenueCenterCodes.value0420: '0420',
  ExampleRevenueCenterCodes.value0421: '0421',
  ExampleRevenueCenterCodes.value0440: '0440',
  ExampleRevenueCenterCodes.value0441: '0441',
  ExampleRevenueCenterCodes.value0450: '0450',
  ExampleRevenueCenterCodes.value0451: '0451',
  ExampleRevenueCenterCodes.value0452: '0452',
  ExampleRevenueCenterCodes.value0010: '0010',
};

const _$BenefitCategoryCodesEnumMap = {
  BenefitCategoryCodes.value1: '1',
  BenefitCategoryCodes.value2: '2',
  BenefitCategoryCodes.value3: '3',
  BenefitCategoryCodes.value4: '4',
  BenefitCategoryCodes.value5: '5',
  BenefitCategoryCodes.value14: '14',
  BenefitCategoryCodes.value23: '23',
  BenefitCategoryCodes.value24: '24',
  BenefitCategoryCodes.value25: '25',
  BenefitCategoryCodes.value26: '26',
  BenefitCategoryCodes.value27: '27',
  BenefitCategoryCodes.value28: '28',
  BenefitCategoryCodes.value30: '30',
  BenefitCategoryCodes.value35: '35',
  BenefitCategoryCodes.value36: '36',
  BenefitCategoryCodes.value37: '37',
  BenefitCategoryCodes.value49: '49',
  BenefitCategoryCodes.value55: '55',
  BenefitCategoryCodes.value56: '56',
  BenefitCategoryCodes.value61: '61',
  BenefitCategoryCodes.value62: '62',
  BenefitCategoryCodes.value63: '63',
  BenefitCategoryCodes.value69: '69',
  BenefitCategoryCodes.value76: '76',
  BenefitCategoryCodes.F1: 'F1',
  BenefitCategoryCodes.F3: 'F3',
  BenefitCategoryCodes.F4: 'F4',
  BenefitCategoryCodes.F6: 'F6',
};

const _$USCLSCodesEnumMap = {
  USCLSCodes.value1101: '1101',
  USCLSCodes.value1102: '1102',
  USCLSCodes.value1103: '1103',
  USCLSCodes.value1201: '1201',
  USCLSCodes.value1205: '1205',
  USCLSCodes.value2101: '2101',
  USCLSCodes.value2102: '2102',
  USCLSCodes.value2141: '2141',
  USCLSCodes.value2601: '2601',
  USCLSCodes.value11101: '11101',
  USCLSCodes.value11102: '11102',
  USCLSCodes.value11103: '11103',
  USCLSCodes.value11104: '11104',
  USCLSCodes.value21211: '21211',
  USCLSCodes.value21212: '21212',
  USCLSCodes.value27211: '27211',
  USCLSCodes.value67211: '67211',
  USCLSCodes.value99111: '99111',
  USCLSCodes.value99333: '99333',
  USCLSCodes.value99555: '99555',
};

const _$ModifierTypeCodesEnumMap = {
  ModifierTypeCodes.a: 'a',
  ModifierTypeCodes.b: 'b',
  ModifierTypeCodes.c: 'c',
  ModifierTypeCodes.e: 'e',
  ModifierTypeCodes.rooh: 'rooh',
  ModifierTypeCodes.x: 'x',
};

const _$ExampleProgramReasonCodesEnumMap = {
  ExampleProgramReasonCodes.as_: 'as',
  ExampleProgramReasonCodes.hd: 'hd',
  ExampleProgramReasonCodes.auscr: 'auscr',
  ExampleProgramReasonCodes.none: 'none',
};

const _$ExampleServicePlaceCodesEnumMap = {
  ExampleServicePlaceCodes.value01: '01',
  ExampleServicePlaceCodes.value03: '03',
  ExampleServicePlaceCodes.value04: '04',
  ExampleServicePlaceCodes.value05: '05',
  ExampleServicePlaceCodes.value06: '06',
  ExampleServicePlaceCodes.value07: '07',
  ExampleServicePlaceCodes.value08: '08',
  ExampleServicePlaceCodes.value09: '09',
  ExampleServicePlaceCodes.value11: '11',
  ExampleServicePlaceCodes.value12: '12',
  ExampleServicePlaceCodes.value13: '13',
  ExampleServicePlaceCodes.value14: '14',
  ExampleServicePlaceCodes.value15: '15',
  ExampleServicePlaceCodes.value19: '19',
  ExampleServicePlaceCodes.value20: '20',
  ExampleServicePlaceCodes.value21: '21',
  ExampleServicePlaceCodes.value41: '41',
};

const _$OralSiteCodesEnumMap = {
  OralSiteCodes.value0: '0',
  OralSiteCodes.value1: '1',
  OralSiteCodes.value2: '2',
  OralSiteCodes.value3: '3',
  OralSiteCodes.value4: '4',
  OralSiteCodes.value5: '5',
  OralSiteCodes.value6: '6',
  OralSiteCodes.value7: '7',
  OralSiteCodes.value8: '8',
  OralSiteCodes.value11: '11',
  OralSiteCodes.value12: '12',
  OralSiteCodes.value13: '13',
  OralSiteCodes.value14: '14',
  OralSiteCodes.value15: '15',
  OralSiteCodes.value16: '16',
  OralSiteCodes.value17: '17',
  OralSiteCodes.value18: '18',
  OralSiteCodes.value21: '21',
  OralSiteCodes.value22: '22',
  OralSiteCodes.value23: '23',
  OralSiteCodes.value24: '24',
  OralSiteCodes.value25: '25',
  OralSiteCodes.value26: '26',
  OralSiteCodes.value27: '27',
  OralSiteCodes.value28: '28',
  OralSiteCodes.value31: '31',
  OralSiteCodes.value32: '32',
  OralSiteCodes.value33: '33',
  OralSiteCodes.value34: '34',
  OralSiteCodes.value35: '35',
  OralSiteCodes.value36: '36',
  OralSiteCodes.value37: '37',
  OralSiteCodes.value38: '38',
  OralSiteCodes.value41: '41',
  OralSiteCodes.value42: '42',
  OralSiteCodes.value43: '43',
  OralSiteCodes.value44: '44',
  OralSiteCodes.value45: '45',
  OralSiteCodes.value46: '46',
  OralSiteCodes.value47: '47',
  OralSiteCodes.value48: '48',
};

const _$SurfaceCodesEnumMap = {
  SurfaceCodes.M: 'M',
  SurfaceCodes.O: 'O',
  SurfaceCodes.I: 'I',
  SurfaceCodes.D: 'D',
  SurfaceCodes.B: 'B',
  SurfaceCodes.V: 'V',
  SurfaceCodes.L: 'L',
  SurfaceCodes.MO: 'MO',
  SurfaceCodes.DO: 'DO',
  SurfaceCodes.DI: 'DI',
  SurfaceCodes.MOD: 'MOD',
};

ExplanationOfBenefitAdjudication _$ExplanationOfBenefitAdjudicationFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitAdjudication(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: $enumDecode(_$AdjudicationValueCodesEnumMap, json['category']),
      reason:
          $enumDecodeNullable(_$AdjudicationReasonCodesEnumMap, json['reason']),
      amount: json['amount'] == null
          ? null
          : Money.fromJson(json['amount'] as Map<String, dynamic>),
      value: json['value'] == null ? null : FhirDecimal.fromJson(json['value']),
      valueElement: json['_value'] == null
          ? null
          : Element.fromJson(json['_value'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitAdjudicationToJson(
    ExplanationOfBenefitAdjudication instance) {
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
  val['category'] = instance.category.toJson();
  writeNotNull('reason', instance.reason?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('value', instance.value?.toJson());
  writeNotNull('_value', instance.valueElement?.toJson());
  return val;
}

const _$AdjudicationValueCodesEnumMap = {
  AdjudicationValueCodes.submitted: 'submitted',
  AdjudicationValueCodes.copay: 'copay',
  AdjudicationValueCodes.eligible: 'eligible',
  AdjudicationValueCodes.deductible: 'deductible',
  AdjudicationValueCodes.unallocdeduct: 'unallocdeduct',
  AdjudicationValueCodes.eligpercent: 'eligpercent',
  AdjudicationValueCodes.tax: 'tax',
  AdjudicationValueCodes.benefit: 'benefit',
};

const _$AdjudicationReasonCodesEnumMap = {
  AdjudicationReasonCodes.ar001: 'ar001',
  AdjudicationReasonCodes.ar002: 'ar002',
};

ExplanationOfBenefitDetail _$ExplanationOfBenefitDetailFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitDetail(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      revenue: $enumDecodeNullable(
          _$ExampleRevenueCenterCodesEnumMap, json['revenue']),
      category:
          $enumDecodeNullable(_$BenefitCategoryCodesEnumMap, json['category']),
      productOrService:
          $enumDecode(_$USCLSCodesEnumMap, json['productOrService']),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModifierTypeCodesEnumMap, e))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExampleProgramReasonCodesEnumMap, e))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitSubDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitDetailToJson(
    ExplanationOfBenefitDetail instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitSubDetail _$ExplanationOfBenefitSubDetailFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitSubDetail(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      revenue: $enumDecodeNullable(
          _$ExampleRevenueCenterCodesEnumMap, json['revenue']),
      category:
          $enumDecodeNullable(_$BenefitCategoryCodesEnumMap, json['category']),
      productOrService:
          $enumDecode(_$USCLSCodesEnumMap, json['productOrService']),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModifierTypeCodesEnumMap, e))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExampleProgramReasonCodesEnumMap, e))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
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

Map<String, dynamic> _$ExplanationOfBenefitSubDetailToJson(
    ExplanationOfBenefitSubDetail instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitAddItem _$ExplanationOfBenefitAddItemFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitAddItem(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemSequence: (json['itemSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      itemSequenceElement: (json['_itemSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailSequence: (json['detailSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      detailSequenceElement: (json['_detailSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      subDetailSequence: (json['subDetailSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      subDetailSequenceElement: (json['_subDetailSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      provider: (json['provider'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      productOrService:
          $enumDecode(_$USCLSCodesEnumMap, json['productOrService']),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModifierTypeCodesEnumMap, e))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExampleProgramReasonCodesEnumMap, e))
          .toList(),
      servicedDate: json['servicedDate'] == null
          ? null
          : FhirDate.fromJson(json['servicedDate'] as String),
      servicedDateElement: json['_servicedDate'] == null
          ? null
          : Element.fromJson(json['_servicedDate'] as Map<String, dynamic>),
      servicedPeriod: json['servicedPeriod'] == null
          ? null
          : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
      locationCodeableConcept: $enumDecodeNullable(
          _$ExampleServicePlaceCodesEnumMap, json['locationCodeableConcept']),
      locationAddress: $enumDecodeNullable(
          _$ExampleServicePlaceCodesEnumMap, json['locationAddress']),
      locationReference: $enumDecodeNullable(
          _$ExampleServicePlaceCodesEnumMap, json['locationReference']),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      bodySite: $enumDecodeNullable(_$OralSiteCodesEnumMap, json['bodySite']),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SurfaceCodesEnumMap, e))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitAddItemToJson(
    ExplanationOfBenefitAddItem instance) {
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
      'itemSequence', instance.itemSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_itemSequence',
      instance.itemSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('detailSequence',
      instance.detailSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_detailSequence',
      instance.detailSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('subDetailSequence',
      instance.subDetailSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_subDetailSequence',
      instance.subDetailSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('provider', instance.provider?.map((e) => e.toJson()).toList());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('servicedDate', instance.servicedDate?.toJson());
  writeNotNull('_servicedDate', instance.servicedDateElement?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull(
      'locationCodeableConcept', instance.locationCodeableConcept?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitDetail1 _$ExplanationOfBenefitDetail1FromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitDetail1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      productOrService:
          $enumDecode(_$USCLSCodesEnumMap, json['productOrService']),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModifierTypeCodesEnumMap, e))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitSubDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitDetail1ToJson(
    ExplanationOfBenefitDetail1 instance) {
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
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitSubDetail1 _$ExplanationOfBenefitSubDetail1FromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitSubDetail1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      productOrService:
          $enumDecode(_$USCLSCodesEnumMap, json['productOrService']),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ModifierTypeCodesEnumMap, e))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
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

Map<String, dynamic> _$ExplanationOfBenefitSubDetail1ToJson(
    ExplanationOfBenefitSubDetail1 instance) {
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
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitTotal _$ExplanationOfBenefitTotalFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitTotal(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: $enumDecode(_$AdjudicationValueCodesEnumMap, json['category']),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitTotalToJson(
    ExplanationOfBenefitTotal instance) {
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
  val['category'] = instance.category.toJson();
  val['amount'] = instance.amount.toJson();
  return val;
}

ExplanationOfBenefitPayment _$ExplanationOfBenefitPaymentFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitPayment(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecodeNullable(_$ExamplePaymentTypeCodesEnumMap, json['type']),
      adjustment: json['adjustment'] == null
          ? null
          : Money.fromJson(json['adjustment'] as Map<String, dynamic>),
      adjustmentReason: $enumDecodeNullable(
          _$PaymentAdjustmentReasonCodesEnumMap, json['adjustmentReason']),
      date: json['date'] == null
          ? null
          : FhirDate.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : Money.fromJson(json['amount'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitPaymentToJson(
    ExplanationOfBenefitPayment instance) {
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
  writeNotNull('adjustment', instance.adjustment?.toJson());
  writeNotNull('adjustmentReason', instance.adjustmentReason?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  return val;
}

const _$ExamplePaymentTypeCodesEnumMap = {
  ExamplePaymentTypeCodes.complete: 'complete',
  ExamplePaymentTypeCodes.partial: 'partial',
};

const _$PaymentAdjustmentReasonCodesEnumMap = {
  PaymentAdjustmentReasonCodes.a001: 'a001',
  PaymentAdjustmentReasonCodes.a002: 'a002',
};

ExplanationOfBenefitProcessNote _$ExplanationOfBenefitProcessNoteFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitProcessNote(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: json['number'] == null
          ? null
          : FhirPositiveInt.fromJson(json['number']),
      numberElement: json['_number'] == null
          ? null
          : Element.fromJson(json['_number'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$NoteTypeEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      language: $enumDecodeNullable(_$CommonLanguagesEnumMap, json['language']),
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

Map<String, dynamic> _$ExplanationOfBenefitProcessNoteToJson(
    ExplanationOfBenefitProcessNote instance) {
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
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('_number', instance.numberElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  return val;
}

const _$NoteTypeEnumMap = {
  NoteType.display: 'display',
  NoteType.print: 'print',
  NoteType.printoper: 'printoper',
};

ExplanationOfBenefitBenefitBalance _$ExplanationOfBenefitBenefitBalanceFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitBenefitBalance(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: $enumDecode(_$BenefitCategoryCodesEnumMap, json['category']),
      excluded: json['excluded'] == null
          ? null
          : FhirBoolean.fromJson(json['excluded']),
      excludedElement: json['_excluded'] == null
          ? null
          : Element.fromJson(json['_excluded'] as Map<String, dynamic>),
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
      network: $enumDecodeNullable(_$NetworkTypeCodesEnumMap, json['network']),
      unit: $enumDecodeNullable(_$UnitTypeCodesEnumMap, json['unit']),
      term: $enumDecodeNullable(_$BenefitTermCodesEnumMap, json['term']),
      financial: (json['financial'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitFinancial.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitBenefitBalanceToJson(
    ExplanationOfBenefitBenefitBalance instance) {
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
  val['category'] = instance.category.toJson();
  writeNotNull('excluded', instance.excluded?.toJson());
  writeNotNull('_excluded', instance.excludedElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('term', instance.term?.toJson());
  writeNotNull(
      'financial', instance.financial?.map((e) => e.toJson()).toList());
  return val;
}

const _$NetworkTypeCodesEnumMap = {
  NetworkTypeCodes.in_: 'in',
  NetworkTypeCodes.out: 'out',
};

const _$UnitTypeCodesEnumMap = {
  UnitTypeCodes.individual: 'individual',
  UnitTypeCodes.family: 'family',
};

const _$BenefitTermCodesEnumMap = {
  BenefitTermCodes.annual: 'annual',
  BenefitTermCodes.day: 'day',
  BenefitTermCodes.lifetime: 'lifetime',
};

ExplanationOfBenefitFinancial _$ExplanationOfBenefitFinancialFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitFinancial(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$BenefitTypeCodesEnumMap, json['type']),
      allowedUnsignedInt: json['allowedUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['allowedUnsignedInt']),
      allowedUnsignedIntElement: json['_allowedUnsignedInt'] == null
          ? null
          : Element.fromJson(
              json['_allowedUnsignedInt'] as Map<String, dynamic>),
      allowedString: json['allowedString'] == null
          ? null
          : FhirString.fromJson(json['allowedString']),
      allowedStringElement: json['_allowedString'] == null
          ? null
          : Element.fromJson(json['_allowedString'] as Map<String, dynamic>),
      allowedMoney: json['allowedMoney'] == null
          ? null
          : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
      usedUnsignedInt: json['usedUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['usedUnsignedInt']),
      usedUnsignedIntElement: json['_usedUnsignedInt'] == null
          ? null
          : Element.fromJson(json['_usedUnsignedInt'] as Map<String, dynamic>),
      usedMoney: json['usedMoney'] == null
          ? null
          : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitFinancialToJson(
    ExplanationOfBenefitFinancial instance) {
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
  writeNotNull('allowedUnsignedInt', instance.allowedUnsignedInt?.toJson());
  writeNotNull(
      '_allowedUnsignedInt', instance.allowedUnsignedIntElement?.toJson());
  writeNotNull('allowedString', instance.allowedString?.toJson());
  writeNotNull('_allowedString', instance.allowedStringElement?.toJson());
  writeNotNull('allowedMoney', instance.allowedMoney?.toJson());
  writeNotNull('usedUnsignedInt', instance.usedUnsignedInt?.toJson());
  writeNotNull('_usedUnsignedInt', instance.usedUnsignedIntElement?.toJson());
  writeNotNull('usedMoney', instance.usedMoney?.toJson());
  return val;
}

const _$BenefitTypeCodesEnumMap = {
  BenefitTypeCodes.benefit: 'benefit',
  BenefitTypeCodes.deductible: 'deductible',
  BenefitTypeCodes.visit: 'visit',
  BenefitTypeCodes.room: 'room',
  BenefitTypeCodes.copay: 'copay',
  BenefitTypeCodes.copay_percent: 'copay-percent',
  BenefitTypeCodes.copay_maximum: 'copay-maximum',
  BenefitTypeCodes.vision_exam: 'vision-exam',
  BenefitTypeCodes.vision_glasses: 'vision-glasses',
  BenefitTypeCodes.vision_contacts: 'vision-contacts',
  BenefitTypeCodes.medical_primarycare: 'medical-primarycare',
  BenefitTypeCodes.pharmacy_dispense: 'pharmacy-dispense',
};
