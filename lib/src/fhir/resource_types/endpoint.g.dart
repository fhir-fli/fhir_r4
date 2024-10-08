// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FhirEndpoint _$FhirEndpointFromJson(Map<String, dynamic> json) => FhirEndpoint(
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
      status: $enumDecode(_$EndpointStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      connectionType:
          $enumDecode(_$EndpointConnectionTypeEnumMap, json['connectionType']),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      managingOrganization: json['managingOrganization'] == null
          ? null
          : Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      payloadType: (json['payloadType'] as List<dynamic>)
          .map((e) => $enumDecode(_$EndpointPayloadTypeEnumMap, e))
          .toList(),
      payloadMimeType: (json['payloadMimeType'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      payloadMimeTypeElement: (json['_payloadMimeType'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: FhirUrl.fromJson(json['address']),
      addressElement: json['_address'] == null
          ? null
          : Element.fromJson(json['_address'] as Map<String, dynamic>),
      header:
          (json['header'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      headerElement: (json['_header'] as List<dynamic>?)
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
      resourceType:
          $enumDecodeNullable(_$R4ResourceTypeEnumMap, json['resourceType']),
    );

Map<String, dynamic> _$FhirEndpointToJson(FhirEndpoint instance) {
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
  val['connectionType'] = instance.connectionType.toJson();
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('managingOrganization', instance.managingOrganization?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull('period', instance.period?.toJson());
  val['payloadType'] = instance.payloadType.map((e) => e.toJson()).toList();
  writeNotNull('payloadMimeType',
      instance.payloadMimeType?.map((e) => e.toJson()).toList());
  writeNotNull('_payloadMimeType',
      instance.payloadMimeTypeElement?.map((e) => e.toJson()).toList());
  val['address'] = instance.address.toJson();
  writeNotNull('_address', instance.addressElement?.toJson());
  writeNotNull('header', instance.header?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_header', instance.headerElement?.map((e) => e.toJson()).toList());
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

const _$EndpointStatusEnumMap = {
  EndpointStatus.active: 'active',
  EndpointStatus.suspended: 'suspended',
  EndpointStatus.error: 'error',
  EndpointStatus.off: 'off',
  EndpointStatus.entered_in_error: 'entered-in-error',
  EndpointStatus.test: 'test',
};

const _$EndpointConnectionTypeEnumMap = {
  EndpointConnectionType.ihe_xcpd: 'ihe-xcpd',
  EndpointConnectionType.ihe_xca: 'ihe-xca',
  EndpointConnectionType.ihe_xdr: 'ihe-xdr',
  EndpointConnectionType.ihe_xds: 'ihe-xds',
  EndpointConnectionType.ihe_iid: 'ihe-iid',
  EndpointConnectionType.dicom_wado_rs: 'dicom-wado-rs',
  EndpointConnectionType.dicom_qido_rs: 'dicom-qido-rs',
  EndpointConnectionType.dicom_stow_rs: 'dicom-stow-rs',
  EndpointConnectionType.dicom_wado_uri: 'dicom-wado-uri',
  EndpointConnectionType.hl7_fhir_rest: 'hl7-fhir-rest',
  EndpointConnectionType.hl7_fhir_msg: 'hl7-fhir-msg',
  EndpointConnectionType.hl7v2_mllp: 'hl7v2-mllp',
  EndpointConnectionType.secure_email: 'secure-email',
  EndpointConnectionType.direct_project: 'direct-project',
};

const _$EndpointPayloadTypeEnumMap = {
  EndpointPayloadType.any: 'any',
  EndpointPayloadType.none: 'none',
  EndpointPayloadType.urn_ihe_pcc_handp_2008: 'urn:ihe:pcc:handp:2008',
  EndpointPayloadType.urn_ihe_pcc_xphr_2007: 'urn:ihe:pcc:xphr:2007',
  EndpointPayloadType.urn_ihe_pcc_aps_2007: 'urn:ihe:pcc:aps:2007',
  EndpointPayloadType.urn_ihe_pcc_xds_ms_2007: 'urn:ihe:pcc:xds-ms:2007',
  EndpointPayloadType.urn_ihe_pcc_edr_2007: 'urn:ihe:pcc:edr:2007',
  EndpointPayloadType.urn_ihe_pcc_edes_2007: 'urn:ihe:pcc:edes:2007',
  EndpointPayloadType.urn_ihe_pcc_apr_handp_2008: 'urn:ihe:pcc:apr:handp:2008',
  EndpointPayloadType.urn_ihe_pcc_apr_lab_2008: 'urn:ihe:pcc:apr:lab:2008',
  EndpointPayloadType.urn_ihe_pcc_apr_edu_2008: 'urn:ihe:pcc:apr:edu:2008',
  EndpointPayloadType.urn_ihe_pcc_irc_2008: 'urn:ihe:pcc:irc:2008',
  EndpointPayloadType.urn_ihe_pcc_crc_2008: 'urn:ihe:pcc:crc:2008',
  EndpointPayloadType.urn_ihe_pcc_cm_2008: 'urn:ihe:pcc:cm:2008',
  EndpointPayloadType.urn_ihe_pcc_ic_2009: 'urn:ihe:pcc:ic:2009',
  EndpointPayloadType.urn_ihe_pcc_tn_2007: 'urn:ihe:pcc:tn:2007',
  EndpointPayloadType.urn_ihe_pcc_nn_2007: 'urn:ihe:pcc:nn:2007',
  EndpointPayloadType.urn_ihe_pcc_ctn_2007: 'urn:ihe:pcc:ctn:2007',
  EndpointPayloadType.urn_ihe_pcc_edpn_2007: 'urn:ihe:pcc:edpn:2007',
  EndpointPayloadType.urn_ihe_pcc_hp_2008: 'urn:ihe:pcc:hp:2008',
  EndpointPayloadType.urn_ihe_pcc_ldhp_2009: 'urn:ihe:pcc:ldhp:2009',
  EndpointPayloadType.urn_ihe_pcc_lds_2009: 'urn:ihe:pcc:lds:2009',
  EndpointPayloadType.urn_ihe_pcc_mds_2009: 'urn:ihe:pcc:mds:2009',
  EndpointPayloadType.urn_ihe_pcc_nds_2010: 'urn:ihe:pcc:nds:2010',
  EndpointPayloadType.urn_ihe_pcc_ppvs_2010: 'urn:ihe:pcc:ppvs:2010',
  EndpointPayloadType.urn_ihe_pcc_trs_2011: 'urn:ihe:pcc:trs:2011',
  EndpointPayloadType.urn_ihe_pcc_ets_2011: 'urn:ihe:pcc:ets:2011',
  EndpointPayloadType.urn_ihe_pcc_its_2011: 'urn:ihe:pcc:its:2011',
  EndpointPayloadType.urn_ihe_iti_bppc_2007: 'urn:ihe:iti:bppc:2007',
  EndpointPayloadType.urn_ihe_iti_bppc_sd_2007: 'urn:ihe:iti:bppc-sd:2007',
  EndpointPayloadType.urn_ihe_iti_xdw_2011_workflowDoc:
      'urn:ihe:iti:xdw:2011:workflowDoc',
  EndpointPayloadType.urn_ihe_iti_dsg_detached_2014:
      'urn:ihe:iti:dsg:detached:2014',
  EndpointPayloadType.urn_ihe_iti_dsg_enveloping_2014:
      'urn:ihe:iti:dsg:enveloping:2014',
  EndpointPayloadType.urn_ihe_iti_xds_sd_pdf_2008:
      'urn:ihe:iti:xds-sd:pdf:2008',
  EndpointPayloadType.urn_ihe_iti_xds_sd_text_2008:
      'urn:ihe:iti:xds-sd:text:2008',
  EndpointPayloadType.urn_ihe_lab_xd_lab_2008: 'urn:ihe:lab:xd-lab:2008',
  EndpointPayloadType.urn_ihe_rad_TEXT: 'urn:ihe:rad:TEXT',
  EndpointPayloadType.urn_ihe_rad_PDF: 'urn:ihe:rad:PDF',
  EndpointPayloadType.urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013:
      'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013',
  EndpointPayloadType.urn_ihe_card_imaging_2011: 'urn:ihe:card:imaging:2011',
  EndpointPayloadType.urn_ihe_card_CRC_2012: 'urn:ihe:card:CRC:2012',
  EndpointPayloadType.urn_ihe_card_EPRC_IE_2014: 'urn:ihe:card:EPRC-IE:2014',
  EndpointPayloadType.urn_ihe_dent_TEXT: 'urn:ihe:dent:TEXT',
  EndpointPayloadType.urn_ihe_dent_PDF: 'urn:ihe:dent:PDF',
  EndpointPayloadType.urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013:
      'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013',
  EndpointPayloadType.urn_ihe_pat_apsr_all_2010: 'urn:ihe:pat:apsr:all:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_all_2010:
      'urn:ihe:pat:apsr:cancer:all:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_breast_2010:
      'urn:ihe:pat:apsr:cancer:breast:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_colon_2010:
      'urn:ihe:pat:apsr:cancer:colon:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_prostate_2010:
      'urn:ihe:pat:apsr:cancer:prostate:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_thyroid_2010:
      'urn:ihe:pat:apsr:cancer:thyroid:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_lung_2010:
      'urn:ihe:pat:apsr:cancer:lung:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_skin_2010:
      'urn:ihe:pat:apsr:cancer:skin:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_kidney_2010:
      'urn:ihe:pat:apsr:cancer:kidney:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_cervix_2010:
      'urn:ihe:pat:apsr:cancer:cervix:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_endometrium_2010:
      'urn:ihe:pat:apsr:cancer:endometrium:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_ovary_2010:
      'urn:ihe:pat:apsr:cancer:ovary:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_esophagus__2010:
      'urn:ihe:pat:apsr:cancer:esophagus: 2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_stomach__2010:
      'urn:ihe:pat:apsr:cancer:stomach: 2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_liver_2010:
      'urn:ihe:pat:apsr:cancer:liver:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_pancreas__2010:
      'urn:ihe:pat:apsr:cancer:pancreas: 2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_testis_2010:
      'urn:ihe:pat:apsr:cancer:testis:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_urinary_bladder_2010:
      'urn:ihe:pat:apsr:cancer:urinary_bladder:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010:
      'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_pharynx_2010:
      'urn:ihe:pat:apsr:cancer:pharynx:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_salivary_gland_2010:
      'urn:ihe:pat:apsr:cancer:salivary_gland:2010',
  EndpointPayloadType.urn_ihe_pat_apsr_cancer_larynx_2010:
      'urn:ihe:pat:apsr:cancer:larynx:2010',
  EndpointPayloadType.urn_ihe_pharm_pre_2010: 'urn:ihe:pharm:pre:2010',
  EndpointPayloadType.urn_ihe_pharm_padv_2010: 'urn:ihe:pharm:padv:2010',
  EndpointPayloadType.urn_ihe_pharm_dis_2010: 'urn:ihe:pharm:dis:2010',
  EndpointPayloadType.urn_ihe_pharm_pml_2013: 'urn:ihe:pharm:pml:2013',
  EndpointPayloadType.urn_hl7_org_sdwg_ccda_structuredBody_1_1:
      'urn:hl7-org:sdwg:ccda-structuredBody:1.1',
  EndpointPayloadType.urn_hl7_org_sdwg_ccda_nonXMLBody_1_1:
      'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1',
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
