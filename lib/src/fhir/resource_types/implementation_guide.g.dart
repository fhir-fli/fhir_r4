// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'implementation_guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImplementationGuide _$ImplementationGuideFromJson(Map<String, dynamic> json) =>
    ImplementationGuide(
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
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : Element.fromJson(json['_copyright'] as Map<String, dynamic>),
      packageId: FhirId.fromJson(json['packageId']),
      packageIdElement: json['_packageId'] == null
          ? null
          : Element.fromJson(json['_packageId'] as Map<String, dynamic>),
      license: $enumDecodeNullable(_$SPDXLicenseEnumMap, json['license']),
      licenseElement: json['_license'] == null
          ? null
          : Element.fromJson(json['_license'] as Map<String, dynamic>),
      fhirVersion: (json['fhirVersion'] as List<dynamic>)
          .map((e) => $enumDecode(_$FHIRVersionEnumMap, e))
          .toList(),
      fhirVersionElement: (json['_fhirVersion'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      dependsOn: (json['dependsOn'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuideDependsOn.fromJson(e as Map<String, dynamic>))
          .toList(),
      global: (json['global'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuideGlobal.fromJson(e as Map<String, dynamic>))
          .toList(),
      definition: json['definition'] == null
          ? null
          : ImplementationGuideDefinition.fromJson(
              json['definition'] as Map<String, dynamic>),
      manifest: json['manifest'] == null
          ? null
          : ImplementationGuideManifest.fromJson(
              json['manifest'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideToJson(ImplementationGuide instance) {
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
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  val['packageId'] = instance.packageId.toJson();
  writeNotNull('_packageId', instance.packageIdElement?.toJson());
  writeNotNull('license', instance.license?.toJson());
  writeNotNull('_license', instance.licenseElement?.toJson());
  val['fhirVersion'] = instance.fhirVersion.map((e) => e.toJson()).toList();
  writeNotNull('_fhirVersion',
      instance.fhirVersionElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'dependsOn', instance.dependsOn?.map((e) => e.toJson()).toList());
  writeNotNull('global', instance.global?.map((e) => e.toJson()).toList());
  writeNotNull('definition', instance.definition?.toJson());
  writeNotNull('manifest', instance.manifest?.toJson());
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

const _$SPDXLicenseEnumMap = {
  SPDXLicense.not_open_source: 'not-open-source',
  SPDXLicense.value0BSD: '0BSD',
  SPDXLicense.AAL: 'AAL',
  SPDXLicense.Abstyles: 'Abstyles',
  SPDXLicense.Adobe_2006: 'Adobe-2006',
  SPDXLicense.Adobe_Glyph: 'Adobe-Glyph',
  SPDXLicense.ADSL: 'ADSL',
  SPDXLicense.AFL_1_1: 'AFL-1.1',
  SPDXLicense.AFL_1_2: 'AFL-1.2',
  SPDXLicense.AFL_2_0: 'AFL-2.0',
  SPDXLicense.AFL_2_1: 'AFL-2.1',
  SPDXLicense.AFL_3_0: 'AFL-3.0',
  SPDXLicense.Afmparse: 'Afmparse',
  SPDXLicense.AGPL_1_0_only: 'AGPL-1.0-only',
  SPDXLicense.AGPL_1_0_or_later: 'AGPL-1.0-or-later',
  SPDXLicense.AGPL_3_0_only: 'AGPL-3.0-only',
  SPDXLicense.AGPL_3_0_or_later: 'AGPL-3.0-or-later',
  SPDXLicense.Aladdin: 'Aladdin',
  SPDXLicense.AMDPLPA: 'AMDPLPA',
  SPDXLicense.AML: 'AML',
  SPDXLicense.AMPAS: 'AMPAS',
  SPDXLicense.ANTLR_PD: 'ANTLR-PD',
  SPDXLicense.Apache_1_0: 'Apache-1.0',
  SPDXLicense.Apache_1_1: 'Apache-1.1',
  SPDXLicense.Apache_2_0: 'Apache-2.0',
  SPDXLicense.APAFML: 'APAFML',
  SPDXLicense.APL_1_0: 'APL-1.0',
  SPDXLicense.APSL_1_0: 'APSL-1.0',
  SPDXLicense.APSL_1_1: 'APSL-1.1',
  SPDXLicense.APSL_1_2: 'APSL-1.2',
  SPDXLicense.APSL_2_0: 'APSL-2.0',
  SPDXLicense.Artistic_1_0_cl8: 'Artistic-1.0-cl8',
  SPDXLicense.Artistic_1_0_Perl: 'Artistic-1.0-Perl',
  SPDXLicense.Artistic_1_0: 'Artistic-1.0',
  SPDXLicense.Artistic_2_0: 'Artistic-2.0',
  SPDXLicense.Bahyph: 'Bahyph',
  SPDXLicense.Barr: 'Barr',
  SPDXLicense.Beerware: 'Beerware',
  SPDXLicense.BitTorrent_1_0: 'BitTorrent-1.0',
  SPDXLicense.BitTorrent_1_1: 'BitTorrent-1.1',
  SPDXLicense.Borceux: 'Borceux',
  SPDXLicense.BSD_1_Clause: 'BSD-1-Clause',
  SPDXLicense.BSD_2_Clause_FreeBSD: 'BSD-2-Clause-FreeBSD',
  SPDXLicense.BSD_2_Clause_NetBSD: 'BSD-2-Clause-NetBSD',
  SPDXLicense.BSD_2_Clause_Patent: 'BSD-2-Clause-Patent',
  SPDXLicense.BSD_2_Clause: 'BSD-2-Clause',
  SPDXLicense.BSD_3_Clause_Attribution: 'BSD-3-Clause-Attribution',
  SPDXLicense.BSD_3_Clause_Clear: 'BSD-3-Clause-Clear',
  SPDXLicense.BSD_3_Clause_LBNL: 'BSD-3-Clause-LBNL',
  SPDXLicense.BSD_3_Clause_No_Nuclear_License_2014:
      'BSD-3-Clause-No-Nuclear-License-2014',
  SPDXLicense.BSD_3_Clause_No_Nuclear_License:
      'BSD-3-Clause-No-Nuclear-License',
  SPDXLicense.BSD_3_Clause_No_Nuclear_Warranty:
      'BSD-3-Clause-No-Nuclear-Warranty',
  SPDXLicense.BSD_3_Clause: 'BSD-3-Clause',
  SPDXLicense.BSD_4_Clause_UC: 'BSD-4-Clause-UC',
  SPDXLicense.BSD_4_Clause: 'BSD-4-Clause',
  SPDXLicense.BSD_Protection: 'BSD-Protection',
  SPDXLicense.BSD_Source_Code: 'BSD-Source-Code',
  SPDXLicense.BSL_1_0: 'BSL-1.0',
  SPDXLicense.bzip2_1_0_5: 'bzip2-1.0.5',
  SPDXLicense.bzip2_1_0_6: 'bzip2-1.0.6',
  SPDXLicense.Caldera: 'Caldera',
  SPDXLicense.CATOSL_1_1: 'CATOSL-1.1',
  SPDXLicense.CC_BY_1_0: 'CC-BY-1.0',
  SPDXLicense.CC_BY_2_0: 'CC-BY-2.0',
  SPDXLicense.CC_BY_2_5: 'CC-BY-2.5',
  SPDXLicense.CC_BY_3_0: 'CC-BY-3.0',
  SPDXLicense.CC_BY_4_0: 'CC-BY-4.0',
  SPDXLicense.CC_BY_NC_1_0: 'CC-BY-NC-1.0',
  SPDXLicense.CC_BY_NC_2_0: 'CC-BY-NC-2.0',
  SPDXLicense.CC_BY_NC_2_5: 'CC-BY-NC-2.5',
  SPDXLicense.CC_BY_NC_3_0: 'CC-BY-NC-3.0',
  SPDXLicense.CC_BY_NC_4_0: 'CC-BY-NC-4.0',
  SPDXLicense.CC_BY_NC_ND_1_0: 'CC-BY-NC-ND-1.0',
  SPDXLicense.CC_BY_NC_ND_2_0: 'CC-BY-NC-ND-2.0',
  SPDXLicense.CC_BY_NC_ND_2_5: 'CC-BY-NC-ND-2.5',
  SPDXLicense.CC_BY_NC_ND_3_0: 'CC-BY-NC-ND-3.0',
  SPDXLicense.CC_BY_NC_ND_4_0: 'CC-BY-NC-ND-4.0',
  SPDXLicense.CC_BY_NC_SA_1_0: 'CC-BY-NC-SA-1.0',
  SPDXLicense.CC_BY_NC_SA_2_0: 'CC-BY-NC-SA-2.0',
  SPDXLicense.CC_BY_NC_SA_2_5: 'CC-BY-NC-SA-2.5',
  SPDXLicense.CC_BY_NC_SA_3_0: 'CC-BY-NC-SA-3.0',
  SPDXLicense.CC_BY_NC_SA_4_0: 'CC-BY-NC-SA-4.0',
  SPDXLicense.CC_BY_ND_1_0: 'CC-BY-ND-1.0',
  SPDXLicense.CC_BY_ND_2_0: 'CC-BY-ND-2.0',
  SPDXLicense.CC_BY_ND_2_5: 'CC-BY-ND-2.5',
  SPDXLicense.CC_BY_ND_3_0: 'CC-BY-ND-3.0',
  SPDXLicense.CC_BY_ND_4_0: 'CC-BY-ND-4.0',
  SPDXLicense.CC_BY_SA_1_0: 'CC-BY-SA-1.0',
  SPDXLicense.CC_BY_SA_2_0: 'CC-BY-SA-2.0',
  SPDXLicense.CC_BY_SA_2_5: 'CC-BY-SA-2.5',
  SPDXLicense.CC_BY_SA_3_0: 'CC-BY-SA-3.0',
  SPDXLicense.CC_BY_SA_4_0: 'CC-BY-SA-4.0',
  SPDXLicense.CC0_1_0: 'CC0-1.0',
  SPDXLicense.CDDL_1_0: 'CDDL-1.0',
  SPDXLicense.CDDL_1_1: 'CDDL-1.1',
  SPDXLicense.CDLA_Permissive_1_0: 'CDLA-Permissive-1.0',
  SPDXLicense.CDLA_Sharing_1_0: 'CDLA-Sharing-1.0',
  SPDXLicense.CECILL_1_0: 'CECILL-1.0',
  SPDXLicense.CECILL_1_1: 'CECILL-1.1',
  SPDXLicense.CECILL_2_0: 'CECILL-2.0',
  SPDXLicense.CECILL_2_1: 'CECILL-2.1',
  SPDXLicense.CECILL_B: 'CECILL-B',
  SPDXLicense.CECILL_C: 'CECILL-C',
  SPDXLicense.ClArtistic: 'ClArtistic',
  SPDXLicense.CNRI_Jython: 'CNRI-Jython',
  SPDXLicense.CNRI_Python_GPL_Compatible: 'CNRI-Python-GPL-Compatible',
  SPDXLicense.CNRI_Python: 'CNRI-Python',
  SPDXLicense.Condor_1_1: 'Condor-1.1',
  SPDXLicense.CPAL_1_0: 'CPAL-1.0',
  SPDXLicense.CPL_1_0: 'CPL-1.0',
  SPDXLicense.CPOL_1_02: 'CPOL-1.02',
  SPDXLicense.Crossword: 'Crossword',
  SPDXLicense.CrystalStacker: 'CrystalStacker',
  SPDXLicense.CUA_OPL_1_0: 'CUA-OPL-1.0',
  SPDXLicense.Cube: 'Cube',
  SPDXLicense.curl: 'curl',
  SPDXLicense.D_FSL_1_0: 'D-FSL-1.0',
  SPDXLicense.diffmark: 'diffmark',
  SPDXLicense.DOC: 'DOC',
  SPDXLicense.Dotseqn: 'Dotseqn',
  SPDXLicense.DSDP: 'DSDP',
  SPDXLicense.dvipdfm: 'dvipdfm',
  SPDXLicense.ECL_1_0: 'ECL-1.0',
  SPDXLicense.ECL_2_0: 'ECL-2.0',
  SPDXLicense.EFL_1_0: 'EFL-1.0',
  SPDXLicense.EFL_2_0: 'EFL-2.0',
  SPDXLicense.eGenix: 'eGenix',
  SPDXLicense.Entessa: 'Entessa',
  SPDXLicense.EPL_1_0: 'EPL-1.0',
  SPDXLicense.EPL_2_0: 'EPL-2.0',
  SPDXLicense.ErlPL_1_1: 'ErlPL-1.1',
  SPDXLicense.EUDatagrid: 'EUDatagrid',
  SPDXLicense.EUPL_1_0: 'EUPL-1.0',
  SPDXLicense.EUPL_1_1: 'EUPL-1.1',
  SPDXLicense.EUPL_1_2: 'EUPL-1.2',
  SPDXLicense.Eurosym: 'Eurosym',
  SPDXLicense.Fair: 'Fair',
  SPDXLicense.Frameworx_1_0: 'Frameworx-1.0',
  SPDXLicense.FreeImage: 'FreeImage',
  SPDXLicense.FSFAP: 'FSFAP',
  SPDXLicense.FSFUL: 'FSFUL',
  SPDXLicense.FSFULLR: 'FSFULLR',
  SPDXLicense.FTL: 'FTL',
  SPDXLicense.GFDL_1_1_only: 'GFDL-1.1-only',
  SPDXLicense.GFDL_1_1_or_later: 'GFDL-1.1-or-later',
  SPDXLicense.GFDL_1_2_only: 'GFDL-1.2-only',
  SPDXLicense.GFDL_1_2_or_later: 'GFDL-1.2-or-later',
  SPDXLicense.GFDL_1_3_only: 'GFDL-1.3-only',
  SPDXLicense.GFDL_1_3_or_later: 'GFDL-1.3-or-later',
  SPDXLicense.Giftware: 'Giftware',
  SPDXLicense.GL2PS: 'GL2PS',
  SPDXLicense.Glide: 'Glide',
  SPDXLicense.Glulxe: 'Glulxe',
  SPDXLicense.gnuplot: 'gnuplot',
  SPDXLicense.GPL_1_0_only: 'GPL-1.0-only',
  SPDXLicense.GPL_1_0_or_later: 'GPL-1.0-or-later',
  SPDXLicense.GPL_2_0_only: 'GPL-2.0-only',
  SPDXLicense.GPL_2_0_or_later: 'GPL-2.0-or-later',
  SPDXLicense.GPL_3_0_only: 'GPL-3.0-only',
  SPDXLicense.GPL_3_0_or_later: 'GPL-3.0-or-later',
  SPDXLicense.gSOAP_1_3b: 'gSOAP-1.3b',
  SPDXLicense.HaskellReport: 'HaskellReport',
  SPDXLicense.HPND: 'HPND',
  SPDXLicense.IBM_pibs: 'IBM-pibs',
  SPDXLicense.ICU: 'ICU',
  SPDXLicense.IJG: 'IJG',
  SPDXLicense.ImageMagick: 'ImageMagick',
  SPDXLicense.iMatix: 'iMatix',
  SPDXLicense.Imlib2: 'Imlib2',
  SPDXLicense.Info_ZIP: 'Info-ZIP',
  SPDXLicense.Intel_ACPI: 'Intel-ACPI',
  SPDXLicense.Intel: 'Intel',
  SPDXLicense.Interbase_1_0: 'Interbase-1.0',
  SPDXLicense.IPA: 'IPA',
  SPDXLicense.IPL_1_0: 'IPL-1.0',
  SPDXLicense.ISC: 'ISC',
  SPDXLicense.JasPer_2_0: 'JasPer-2.0',
  SPDXLicense.JSON: 'JSON',
  SPDXLicense.LAL_1_2: 'LAL-1.2',
  SPDXLicense.LAL_1_3: 'LAL-1.3',
  SPDXLicense.Latex2e: 'Latex2e',
  SPDXLicense.Leptonica: 'Leptonica',
  SPDXLicense.LGPL_2_0_only: 'LGPL-2.0-only',
  SPDXLicense.LGPL_2_0_or_later: 'LGPL-2.0-or-later',
  SPDXLicense.LGPL_2_1_only: 'LGPL-2.1-only',
  SPDXLicense.LGPL_2_1_or_later: 'LGPL-2.1-or-later',
  SPDXLicense.LGPL_3_0_only: 'LGPL-3.0-only',
  SPDXLicense.LGPL_3_0_or_later: 'LGPL-3.0-or-later',
  SPDXLicense.LGPLLR: 'LGPLLR',
  SPDXLicense.Libpng: 'Libpng',
  SPDXLicense.libtiff: 'libtiff',
  SPDXLicense.LiLiQ_P_1_1: 'LiLiQ-P-1.1',
  SPDXLicense.LiLiQ_R_1_1: 'LiLiQ-R-1.1',
  SPDXLicense.LiLiQ_Rplus_1_1: 'LiLiQ-Rplus-1.1',
  SPDXLicense.Linux_OpenIB: 'Linux-OpenIB',
  SPDXLicense.LPL_1_0: 'LPL-1.0',
  SPDXLicense.LPL_1_02: 'LPL-1.02',
  SPDXLicense.LPPL_1_0: 'LPPL-1.0',
  SPDXLicense.LPPL_1_1: 'LPPL-1.1',
  SPDXLicense.LPPL_1_2: 'LPPL-1.2',
  SPDXLicense.LPPL_1_3a: 'LPPL-1.3a',
  SPDXLicense.LPPL_1_3c: 'LPPL-1.3c',
  SPDXLicense.MakeIndex: 'MakeIndex',
  SPDXLicense.MirOS: 'MirOS',
  SPDXLicense.MIT_0: 'MIT-0',
  SPDXLicense.MIT_advertising: 'MIT-advertising',
  SPDXLicense.MIT_CMU: 'MIT-CMU',
  SPDXLicense.MIT_enna: 'MIT-enna',
  SPDXLicense.MIT_feh: 'MIT-feh',
  SPDXLicense.MIT: 'MIT',
  SPDXLicense.MITNFA: 'MITNFA',
  SPDXLicense.Motosoto: 'Motosoto',
  SPDXLicense.mpich2: 'mpich2',
  SPDXLicense.MPL_1_0: 'MPL-1.0',
  SPDXLicense.MPL_1_1: 'MPL-1.1',
  SPDXLicense.MPL_2_0_no_copyleft_exception: 'MPL-2.0-no-copyleft-exception',
  SPDXLicense.MPL_2_0: 'MPL-2.0',
  SPDXLicense.MS_PL: 'MS-PL',
  SPDXLicense.MS_RL: 'MS-RL',
  SPDXLicense.MTLL: 'MTLL',
  SPDXLicense.Multics: 'Multics',
  SPDXLicense.Mup: 'Mup',
  SPDXLicense.NASA_1_3: 'NASA-1.3',
  SPDXLicense.Naumen: 'Naumen',
  SPDXLicense.NBPL_1_0: 'NBPL-1.0',
  SPDXLicense.NCSA: 'NCSA',
  SPDXLicense.Net_SNMP: 'Net-SNMP',
  SPDXLicense.NetCDF: 'NetCDF',
  SPDXLicense.Newsletr: 'Newsletr',
  SPDXLicense.NGPL: 'NGPL',
  SPDXLicense.NLOD_1_0: 'NLOD-1.0',
  SPDXLicense.NLPL: 'NLPL',
  SPDXLicense.Nokia: 'Nokia',
  SPDXLicense.NOSL: 'NOSL',
  SPDXLicense.Noweb: 'Noweb',
  SPDXLicense.NPL_1_0: 'NPL-1.0',
  SPDXLicense.NPL_1_1: 'NPL-1.1',
  SPDXLicense.NPOSL_3_0: 'NPOSL-3.0',
  SPDXLicense.NRL: 'NRL',
  SPDXLicense.NTP: 'NTP',
  SPDXLicense.OCCT_PL: 'OCCT-PL',
  SPDXLicense.OCLC_2_0: 'OCLC-2.0',
  SPDXLicense.ODbL_1_0: 'ODbL-1.0',
  SPDXLicense.OFL_1_0: 'OFL-1.0',
  SPDXLicense.OFL_1_1: 'OFL-1.1',
  SPDXLicense.OGTSL: 'OGTSL',
  SPDXLicense.OLDAP_1_1: 'OLDAP-1.1',
  SPDXLicense.OLDAP_1_2: 'OLDAP-1.2',
  SPDXLicense.OLDAP_1_3: 'OLDAP-1.3',
  SPDXLicense.OLDAP_1_4: 'OLDAP-1.4',
  SPDXLicense.OLDAP_2_0_1: 'OLDAP-2.0.1',
  SPDXLicense.OLDAP_2_0: 'OLDAP-2.0',
  SPDXLicense.OLDAP_2_1: 'OLDAP-2.1',
  SPDXLicense.OLDAP_2_2_1: 'OLDAP-2.2.1',
  SPDXLicense.OLDAP_2_2_2: 'OLDAP-2.2.2',
  SPDXLicense.OLDAP_2_2: 'OLDAP-2.2',
  SPDXLicense.OLDAP_2_3: 'OLDAP-2.3',
  SPDXLicense.OLDAP_2_4: 'OLDAP-2.4',
  SPDXLicense.OLDAP_2_5: 'OLDAP-2.5',
  SPDXLicense.OLDAP_2_6: 'OLDAP-2.6',
  SPDXLicense.OLDAP_2_7: 'OLDAP-2.7',
  SPDXLicense.OLDAP_2_8: 'OLDAP-2.8',
  SPDXLicense.OML: 'OML',
  SPDXLicense.OpenSSL: 'OpenSSL',
  SPDXLicense.OPL_1_0: 'OPL-1.0',
  SPDXLicense.OSET_PL_2_1: 'OSET-PL-2.1',
  SPDXLicense.OSL_1_0: 'OSL-1.0',
  SPDXLicense.OSL_1_1: 'OSL-1.1',
  SPDXLicense.OSL_2_0: 'OSL-2.0',
  SPDXLicense.OSL_2_1: 'OSL-2.1',
  SPDXLicense.OSL_3_0: 'OSL-3.0',
  SPDXLicense.PDDL_1_0: 'PDDL-1.0',
  SPDXLicense.PHP_3_0: 'PHP-3.0',
  SPDXLicense.PHP_3_01: 'PHP-3.01',
  SPDXLicense.Plexus: 'Plexus',
  SPDXLicense.PostgreSQL: 'PostgreSQL',
  SPDXLicense.psfrag: 'psfrag',
  SPDXLicense.psutils: 'psutils',
  SPDXLicense.Python_2_0: 'Python-2.0',
  SPDXLicense.Qhull: 'Qhull',
  SPDXLicense.QPL_1_0: 'QPL-1.0',
  SPDXLicense.Rdisc: 'Rdisc',
  SPDXLicense.RHeCos_1_1: 'RHeCos-1.1',
  SPDXLicense.RPL_1_1: 'RPL-1.1',
  SPDXLicense.RPL_1_5: 'RPL-1.5',
  SPDXLicense.RPSL_1_0: 'RPSL-1.0',
  SPDXLicense.RSA_MD: 'RSA-MD',
  SPDXLicense.RSCPL: 'RSCPL',
  SPDXLicense.Ruby: 'Ruby',
  SPDXLicense.SAX_PD: 'SAX-PD',
  SPDXLicense.Saxpath: 'Saxpath',
  SPDXLicense.SCEA: 'SCEA',
  SPDXLicense.Sendmail: 'Sendmail',
  SPDXLicense.SGI_B_1_0: 'SGI-B-1.0',
  SPDXLicense.SGI_B_1_1: 'SGI-B-1.1',
  SPDXLicense.SGI_B_2_0: 'SGI-B-2.0',
  SPDXLicense.SimPL_2_0: 'SimPL-2.0',
  SPDXLicense.SISSL_1_2: 'SISSL-1.2',
  SPDXLicense.SISSL: 'SISSL',
  SPDXLicense.Sleepycat: 'Sleepycat',
  SPDXLicense.SMLNJ: 'SMLNJ',
  SPDXLicense.SMPPL: 'SMPPL',
  SPDXLicense.SNIA: 'SNIA',
  SPDXLicense.Spencer_86: 'Spencer-86',
  SPDXLicense.Spencer_94: 'Spencer-94',
  SPDXLicense.Spencer_99: 'Spencer-99',
  SPDXLicense.SPL_1_0: 'SPL-1.0',
  SPDXLicense.SugarCRM_1_1_3: 'SugarCRM-1.1.3',
  SPDXLicense.SWL: 'SWL',
  SPDXLicense.TCL: 'TCL',
  SPDXLicense.TCP_wrappers: 'TCP-wrappers',
  SPDXLicense.TMate: 'TMate',
  SPDXLicense.TORQUE_1_1: 'TORQUE-1.1',
  SPDXLicense.TOSL: 'TOSL',
  SPDXLicense.Unicode_DFS_2015: 'Unicode-DFS-2015',
  SPDXLicense.Unicode_DFS_2016: 'Unicode-DFS-2016',
  SPDXLicense.Unicode_TOU: 'Unicode-TOU',
  SPDXLicense.Unlicense: 'Unlicense',
  SPDXLicense.UPL_1_0: 'UPL-1.0',
  SPDXLicense.Vim: 'Vim',
  SPDXLicense.VOSTROM: 'VOSTROM',
  SPDXLicense.VSL_1_0: 'VSL-1.0',
  SPDXLicense.W3C_19980720: 'W3C-19980720',
  SPDXLicense.W3C_20150513: 'W3C-20150513',
  SPDXLicense.W3C: 'W3C',
  SPDXLicense.Watcom_1_0: 'Watcom-1.0',
  SPDXLicense.Wsuipa: 'Wsuipa',
  SPDXLicense.WTFPL: 'WTFPL',
  SPDXLicense.X11: 'X11',
  SPDXLicense.Xerox: 'Xerox',
  SPDXLicense.XFree86_1_1: 'XFree86-1.1',
  SPDXLicense.xinetd: 'xinetd',
  SPDXLicense.Xnet: 'Xnet',
  SPDXLicense.xpp: 'xpp',
  SPDXLicense.XSkat: 'XSkat',
  SPDXLicense.YPL_1_0: 'YPL-1.0',
  SPDXLicense.YPL_1_1: 'YPL-1.1',
  SPDXLicense.Zed: 'Zed',
  SPDXLicense.Zend_2_0: 'Zend-2.0',
  SPDXLicense.Zimbra_1_3: 'Zimbra-1.3',
  SPDXLicense.Zimbra_1_4: 'Zimbra-1.4',
  SPDXLicense.zlib_acknowledgement: 'zlib-acknowledgement',
  SPDXLicense.Zlib: 'Zlib',
  SPDXLicense.ZPL_1_1: 'ZPL-1.1',
  SPDXLicense.ZPL_2_0: 'ZPL-2.0',
  SPDXLicense.ZPL_2_1: 'ZPL-2.1',
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

ImplementationGuideDependsOn _$ImplementationGuideDependsOnFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideDependsOn(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      uri: FhirCanonical.fromJson(json['uri']),
      uriElement: json['_uri'] == null
          ? null
          : Element.fromJson(json['_uri'] as Map<String, dynamic>),
      packageId:
          json['packageId'] == null ? null : FhirId.fromJson(json['packageId']),
      packageIdElement: json['_packageId'] == null
          ? null
          : Element.fromJson(json['_packageId'] as Map<String, dynamic>),
      version:
          json['version'] == null ? null : FhirString.fromJson(json['version']),
      versionElement: json['_version'] == null
          ? null
          : Element.fromJson(json['_version'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideDependsOnToJson(
    ImplementationGuideDependsOn instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['uri'] = instance.uri.toJson();
  writeNotNull('_uri', instance.uriElement?.toJson());
  writeNotNull('packageId', instance.packageId?.toJson());
  writeNotNull('_packageId', instance.packageIdElement?.toJson());
  writeNotNull('version', instance.version?.toJson());
  writeNotNull('_version', instance.versionElement?.toJson());
  return val;
}

ImplementationGuideGlobal _$ImplementationGuideGlobalFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideGlobal(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      profile: FhirCanonical.fromJson(json['profile']),
      profileElement: json['_profile'] == null
          ? null
          : Element.fromJson(json['_profile'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideGlobalToJson(
    ImplementationGuideGlobal instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  val['profile'] = instance.profile.toJson();
  writeNotNull('_profile', instance.profileElement?.toJson());
  return val;
}

ImplementationGuideDefinition _$ImplementationGuideDefinitionFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideDefinition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      grouping: (json['grouping'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuideGrouping.fromJson(e as Map<String, dynamic>))
          .toList(),
      resource: (json['resource'] as List<dynamic>)
          .map((e) =>
              ImplementationGuideResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] == null
          ? null
          : ImplementationGuidePage.fromJson(
              json['page'] as Map<String, dynamic>),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuideParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      template: (json['template'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuideTemplate.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ImplementationGuideDefinitionToJson(
    ImplementationGuideDefinition instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('grouping', instance.grouping?.map((e) => e.toJson()).toList());
  val['resource'] = instance.resource.map((e) => e.toJson()).toList();
  writeNotNull('page', instance.page?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e.toJson()).toList());
  writeNotNull('template', instance.template?.map((e) => e.toJson()).toList());
  return val;
}

ImplementationGuideGrouping _$ImplementationGuideGroupingFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideGrouping(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideGroupingToJson(
    ImplementationGuideGrouping instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  return val;
}

ImplementationGuideResource _$ImplementationGuideResourceFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideResource(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: Reference.fromJson(json['reference'] as Map<String, dynamic>),
      fhirVersion: (json['fhirVersion'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FHIRVersionEnumMap, e))
          .toList(),
      fhirVersionElement: (json['_fhirVersion'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
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
      exampleBoolean: json['exampleBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['exampleBoolean']),
      exampleBooleanElement: json['_exampleBoolean'] == null
          ? null
          : Element.fromJson(json['_exampleBoolean'] as Map<String, dynamic>),
      exampleCanonical: json['exampleCanonical'] == null
          ? null
          : FhirCanonical.fromJson(json['exampleCanonical']),
      exampleCanonicalElement: json['_exampleCanonical'] == null
          ? null
          : Element.fromJson(json['_exampleCanonical'] as Map<String, dynamic>),
      groupingId: json['groupingId'] == null
          ? null
          : FhirId.fromJson(json['groupingId']),
      groupingIdElement: json['_groupingId'] == null
          ? null
          : Element.fromJson(json['_groupingId'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideResourceToJson(
    ImplementationGuideResource instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['reference'] = instance.reference.toJson();
  writeNotNull(
      'fhirVersion', instance.fhirVersion?.map((e) => e.toJson()).toList());
  writeNotNull('_fhirVersion',
      instance.fhirVersionElement?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('exampleBoolean', instance.exampleBoolean?.toJson());
  writeNotNull('_exampleBoolean', instance.exampleBooleanElement?.toJson());
  writeNotNull('exampleCanonical', instance.exampleCanonical?.toJson());
  writeNotNull('_exampleCanonical', instance.exampleCanonicalElement?.toJson());
  writeNotNull('groupingId', instance.groupingId?.toJson());
  writeNotNull('_groupingId', instance.groupingIdElement?.toJson());
  return val;
}

ImplementationGuidePage _$ImplementationGuidePageFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuidePage(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      nameUrl:
          json['nameUrl'] == null ? null : FhirUrl.fromJson(json['nameUrl']),
      nameUrlElement: json['_nameUrl'] == null
          ? null
          : Element.fromJson(json['_nameUrl'] as Map<String, dynamic>),
      nameReference: json['nameReference'] == null
          ? null
          : Reference.fromJson(json['nameReference'] as Map<String, dynamic>),
      title: FhirString.fromJson(json['title']),
      titleElement: json['_title'] == null
          ? null
          : Element.fromJson(json['_title'] as Map<String, dynamic>),
      generation: $enumDecode(_$GuidePageGenerationEnumMap, json['generation']),
      generationElement: json['_generation'] == null
          ? null
          : Element.fromJson(json['_generation'] as Map<String, dynamic>),
      page: (json['page'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuidePage.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ImplementationGuidePageToJson(
    ImplementationGuidePage instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('nameUrl', instance.nameUrl?.toJson());
  writeNotNull('_nameUrl', instance.nameUrlElement?.toJson());
  writeNotNull('nameReference', instance.nameReference?.toJson());
  val['title'] = instance.title.toJson();
  writeNotNull('_title', instance.titleElement?.toJson());
  val['generation'] = instance.generation.toJson();
  writeNotNull('_generation', instance.generationElement?.toJson());
  writeNotNull('page', instance.page?.map((e) => e.toJson()).toList());
  return val;
}

const _$GuidePageGenerationEnumMap = {
  GuidePageGeneration.html: 'html',
  GuidePageGeneration.markdown: 'markdown',
  GuidePageGeneration.xml: 'xml',
  GuidePageGeneration.generated: 'generated',
};

ImplementationGuideParameter _$ImplementationGuideParameterFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideParameter(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: $enumDecode(_$GuideParameterCodeEnumMap, json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      value: FhirString.fromJson(json['value']),
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

Map<String, dynamic> _$ImplementationGuideParameterToJson(
    ImplementationGuideParameter instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  val['value'] = instance.value.toJson();
  writeNotNull('_value', instance.valueElement?.toJson());
  return val;
}

const _$GuideParameterCodeEnumMap = {
  GuideParameterCode.apply: 'apply',
  GuideParameterCode.path_resource: 'path-resource',
  GuideParameterCode.path_pages: 'path-pages',
  GuideParameterCode.path_tx_cache: 'path-tx-cache',
  GuideParameterCode.expansion_parameter: 'expansion-parameter',
  GuideParameterCode.rule_broken_links: 'rule-broken-links',
  GuideParameterCode.generate_xml: 'generate-xml',
  GuideParameterCode.generate_json: 'generate-json',
  GuideParameterCode.generate_turtle: 'generate-turtle',
  GuideParameterCode.html_template: 'html-template',
};

ImplementationGuideTemplate _$ImplementationGuideTemplateFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideTemplate(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : Element.fromJson(json['_code'] as Map<String, dynamic>),
      source: FhirString.fromJson(json['source']),
      sourceElement: json['_source'] == null
          ? null
          : Element.fromJson(json['_source'] as Map<String, dynamic>),
      scope: json['scope'] == null ? null : FhirString.fromJson(json['scope']),
      scopeElement: json['_scope'] == null
          ? null
          : Element.fromJson(json['_scope'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideTemplateToJson(
    ImplementationGuideTemplate instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['code'] = instance.code.toJson();
  writeNotNull('_code', instance.codeElement?.toJson());
  val['source'] = instance.source.toJson();
  writeNotNull('_source', instance.sourceElement?.toJson());
  writeNotNull('scope', instance.scope?.toJson());
  writeNotNull('_scope', instance.scopeElement?.toJson());
  return val;
}

ImplementationGuideManifest _$ImplementationGuideManifestFromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideManifest(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      rendering: json['rendering'] == null
          ? null
          : FhirUrl.fromJson(json['rendering']),
      renderingElement: json['_rendering'] == null
          ? null
          : Element.fromJson(json['_rendering'] as Map<String, dynamic>),
      resource: (json['resource'] as List<dynamic>)
          .map((e) =>
              ImplementationGuideResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as List<dynamic>?)
          ?.map((e) =>
              ImplementationGuidePage.fromJson(e as Map<String, dynamic>))
          .toList(),
      image:
          (json['image'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      imageElement: (json['_image'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      other:
          (json['other'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      otherElement: (json['_other'] as List<dynamic>?)
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

Map<String, dynamic> _$ImplementationGuideManifestToJson(
    ImplementationGuideManifest instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('rendering', instance.rendering?.toJson());
  writeNotNull('_rendering', instance.renderingElement?.toJson());
  val['resource'] = instance.resource.map((e) => e.toJson()).toList();
  writeNotNull('page', instance.page?.map((e) => e.toJson()).toList());
  writeNotNull('image', instance.image?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_image', instance.imageElement?.map((e) => e.toJson()).toList());
  writeNotNull('other', instance.other?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_other', instance.otherElement?.map((e) => e.toJson()).toList());
  return val;
}

ImplementationGuideResource1 _$ImplementationGuideResource1FromJson(
        Map<String, dynamic> json) =>
    ImplementationGuideResource1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: Reference.fromJson(json['reference'] as Map<String, dynamic>),
      exampleBoolean: json['exampleBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['exampleBoolean']),
      exampleBooleanElement: json['_exampleBoolean'] == null
          ? null
          : Element.fromJson(json['_exampleBoolean'] as Map<String, dynamic>),
      exampleCanonical: json['exampleCanonical'] == null
          ? null
          : FhirCanonical.fromJson(json['exampleCanonical']),
      exampleCanonicalElement: json['_exampleCanonical'] == null
          ? null
          : Element.fromJson(json['_exampleCanonical'] as Map<String, dynamic>),
      relativePath: json['relativePath'] == null
          ? null
          : FhirUrl.fromJson(json['relativePath']),
      relativePathElement: json['_relativePath'] == null
          ? null
          : Element.fromJson(json['_relativePath'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ImplementationGuideResource1ToJson(
    ImplementationGuideResource1 instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['reference'] = instance.reference.toJson();
  writeNotNull('exampleBoolean', instance.exampleBoolean?.toJson());
  writeNotNull('_exampleBoolean', instance.exampleBooleanElement?.toJson());
  writeNotNull('exampleCanonical', instance.exampleCanonical?.toJson());
  writeNotNull('_exampleCanonical', instance.exampleCanonicalElement?.toJson());
  writeNotNull('relativePath', instance.relativePath?.toJson());
  writeNotNull('_relativePath', instance.relativePathElement?.toJson());
  return val;
}

ImplementationGuidePage1 _$ImplementationGuidePage1FromJson(
        Map<String, dynamic> json) =>
    ImplementationGuidePage1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] == null ? null : FhirString.fromJson(json['title']),
      titleElement: json['_title'] == null
          ? null
          : Element.fromJson(json['_title'] as Map<String, dynamic>),
      anchor:
          (json['anchor'] as List<dynamic>?)?.map(FhirString.fromJson).toList(),
      anchorElement: (json['_anchor'] as List<dynamic>?)
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

Map<String, dynamic> _$ImplementationGuidePage1ToJson(
    ImplementationGuidePage1 instance) {
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
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['name'] = instance.name.toJson();
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('anchor', instance.anchor?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_anchor', instance.anchorElement?.map((e) => e.toJson()).toList());
  return val;
}
