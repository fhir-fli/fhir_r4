// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administrable_product_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdministrableProductDefinition _$AdministrableProductDefinitionFromJson(
        Map<String, dynamic> json) =>
    AdministrableProductDefinition(
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
      status: $enumDecode(_$PublicationStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      formOf: (json['formOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      administrableDoseForm: $enumDecodeNullable(
          _$AdministrableDoseFormEnumMap, json['administrableDoseForm']),
      unitOfPresentation: $enumDecodeNullable(
          _$UnitOfPresentationEnumMap, json['unitOfPresentation']),
      producedFrom: (json['producedFrom'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      device: json['device'] == null
          ? null
          : Reference.fromJson(json['device'] as Map<String, dynamic>),
      property: (json['property'] as List<dynamic>?)
          ?.map((e) => AdministrableProductDefinitionProperty.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      routeOfAdministration: (json['routeOfAdministration'] as List<dynamic>)
          .map((e) =>
              AdministrableProductDefinitionRouteOfAdministration.fromJson(
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

Map<String, dynamic> _$AdministrableProductDefinitionToJson(
    AdministrableProductDefinition instance) {
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
  writeNotNull('formOf', instance.formOf?.map((e) => e.toJson()).toList());
  writeNotNull(
      'administrableDoseForm', instance.administrableDoseForm?.toJson());
  writeNotNull('unitOfPresentation', instance.unitOfPresentation?.toJson());
  writeNotNull(
      'producedFrom', instance.producedFrom?.map((e) => e.toJson()).toList());
  writeNotNull(
      'ingredient', instance.ingredient?.map((e) => e.toJson()).toList());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('property', instance.property?.map((e) => e.toJson()).toList());
  val['routeOfAdministration'] =
      instance.routeOfAdministration.map((e) => e.toJson()).toList();
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

const _$AdministrableDoseFormEnumMap = {
  AdministrableDoseForm.value100000073362: '100000073362',
  AdministrableDoseForm.value100000073363: '100000073363',
  AdministrableDoseForm.value100000073364: '100000073364',
  AdministrableDoseForm.value100000073365: '100000073365',
  AdministrableDoseForm.value100000073367: '100000073367',
  AdministrableDoseForm.value100000073368: '100000073368',
  AdministrableDoseForm.value100000073369: '100000073369',
  AdministrableDoseForm.value100000073370: '100000073370',
  AdministrableDoseForm.value100000073371: '100000073371',
  AdministrableDoseForm.value100000073372: '100000073372',
  AdministrableDoseForm.value100000073373: '100000073373',
  AdministrableDoseForm.value100000073374: '100000073374',
  AdministrableDoseForm.value100000073375: '100000073375',
  AdministrableDoseForm.value100000073376: '100000073376',
  AdministrableDoseForm.value100000073377: '100000073377',
  AdministrableDoseForm.value100000073378: '100000073378',
  AdministrableDoseForm.value100000073379: '100000073379',
  AdministrableDoseForm.value100000073380: '100000073380',
  AdministrableDoseForm.value100000073642: '100000073642',
  AdministrableDoseForm.value100000073643: '100000073643',
  AdministrableDoseForm.value100000073644: '100000073644',
  AdministrableDoseForm.value100000073645: '100000073645',
  AdministrableDoseForm.value100000073646: '100000073646',
  AdministrableDoseForm.value100000073647: '100000073647',
  AdministrableDoseForm.value100000073648: '100000073648',
  AdministrableDoseForm.value100000073649: '100000073649',
  AdministrableDoseForm.value100000073650: '100000073650',
  AdministrableDoseForm.value100000073652: '100000073652',
  AdministrableDoseForm.value100000073653: '100000073653',
  AdministrableDoseForm.value100000073654: '100000073654',
  AdministrableDoseForm.value100000073655: '100000073655',
  AdministrableDoseForm.value100000073656: '100000073656',
  AdministrableDoseForm.value100000073657: '100000073657',
  AdministrableDoseForm.value100000073658: '100000073658',
  AdministrableDoseForm.value100000073659: '100000073659',
  AdministrableDoseForm.value100000073660: '100000073660',
  AdministrableDoseForm.value100000073661: '100000073661',
  AdministrableDoseForm.value100000073662: '100000073662',
  AdministrableDoseForm.value100000073663: '100000073663',
  AdministrableDoseForm.value100000073664: '100000073664',
  AdministrableDoseForm.value100000073665: '100000073665',
  AdministrableDoseForm.value100000073666: '100000073666',
  AdministrableDoseForm.value100000073667: '100000073667',
  AdministrableDoseForm.value100000073668: '100000073668',
  AdministrableDoseForm.value100000073669: '100000073669',
  AdministrableDoseForm.value100000073670: '100000073670',
  AdministrableDoseForm.value100000073671: '100000073671',
  AdministrableDoseForm.value100000073672: '100000073672',
  AdministrableDoseForm.value100000073673: '100000073673',
  AdministrableDoseForm.value100000073674: '100000073674',
  AdministrableDoseForm.value100000073675: '100000073675',
  AdministrableDoseForm.value100000073676: '100000073676',
  AdministrableDoseForm.value100000073677: '100000073677',
  AdministrableDoseForm.value100000073678: '100000073678',
  AdministrableDoseForm.value100000073679: '100000073679',
  AdministrableDoseForm.value100000073680: '100000073680',
  AdministrableDoseForm.value100000073681: '100000073681',
  AdministrableDoseForm.value100000073682: '100000073682',
  AdministrableDoseForm.value100000073683: '100000073683',
  AdministrableDoseForm.value100000073684: '100000073684',
  AdministrableDoseForm.value100000073685: '100000073685',
  AdministrableDoseForm.value100000073686: '100000073686',
  AdministrableDoseForm.value100000073687: '100000073687',
  AdministrableDoseForm.value100000073688: '100000073688',
  AdministrableDoseForm.value100000073689: '100000073689',
  AdministrableDoseForm.value100000073690: '100000073690',
  AdministrableDoseForm.value100000073691: '100000073691',
  AdministrableDoseForm.value100000073692: '100000073692',
  AdministrableDoseForm.value100000073693: '100000073693',
  AdministrableDoseForm.value100000073694: '100000073694',
  AdministrableDoseForm.value100000073695: '100000073695',
  AdministrableDoseForm.value100000073696: '100000073696',
  AdministrableDoseForm.value100000073697: '100000073697',
  AdministrableDoseForm.value100000073698: '100000073698',
  AdministrableDoseForm.value100000073699: '100000073699',
  AdministrableDoseForm.value100000073700: '100000073700',
  AdministrableDoseForm.value100000073701: '100000073701',
  AdministrableDoseForm.value100000073702: '100000073702',
  AdministrableDoseForm.value100000073703: '100000073703',
  AdministrableDoseForm.value100000073704: '100000073704',
  AdministrableDoseForm.value100000073705: '100000073705',
  AdministrableDoseForm.value100000073706: '100000073706',
  AdministrableDoseForm.value100000073707: '100000073707',
  AdministrableDoseForm.value100000073708: '100000073708',
  AdministrableDoseForm.value100000073709: '100000073709',
  AdministrableDoseForm.value100000073710: '100000073710',
  AdministrableDoseForm.value100000073711: '100000073711',
  AdministrableDoseForm.value100000073712: '100000073712',
  AdministrableDoseForm.value100000073713: '100000073713',
  AdministrableDoseForm.value100000073714: '100000073714',
  AdministrableDoseForm.value100000073715: '100000073715',
  AdministrableDoseForm.value100000073716: '100000073716',
  AdministrableDoseForm.value100000073717: '100000073717',
  AdministrableDoseForm.value100000073718: '100000073718',
  AdministrableDoseForm.value100000073719: '100000073719',
  AdministrableDoseForm.value100000073720: '100000073720',
  AdministrableDoseForm.value100000073721: '100000073721',
  AdministrableDoseForm.value100000073722: '100000073722',
  AdministrableDoseForm.value100000073723: '100000073723',
  AdministrableDoseForm.value100000073724: '100000073724',
  AdministrableDoseForm.value100000073725: '100000073725',
  AdministrableDoseForm.value100000073726: '100000073726',
  AdministrableDoseForm.value100000073727: '100000073727',
  AdministrableDoseForm.value100000073728: '100000073728',
  AdministrableDoseForm.value100000073729: '100000073729',
  AdministrableDoseForm.value100000073730: '100000073730',
  AdministrableDoseForm.value100000073731: '100000073731',
  AdministrableDoseForm.value100000073732: '100000073732',
  AdministrableDoseForm.value100000073733: '100000073733',
  AdministrableDoseForm.value100000073734: '100000073734',
  AdministrableDoseForm.value100000073735: '100000073735',
  AdministrableDoseForm.value100000073736: '100000073736',
  AdministrableDoseForm.value100000073737: '100000073737',
  AdministrableDoseForm.value100000073738: '100000073738',
  AdministrableDoseForm.value100000073739: '100000073739',
  AdministrableDoseForm.value100000073740: '100000073740',
  AdministrableDoseForm.value100000073741: '100000073741',
  AdministrableDoseForm.value100000073742: '100000073742',
  AdministrableDoseForm.value100000073743: '100000073743',
  AdministrableDoseForm.value100000073744: '100000073744',
  AdministrableDoseForm.value100000073745: '100000073745',
  AdministrableDoseForm.value100000073746: '100000073746',
  AdministrableDoseForm.value100000073747: '100000073747',
  AdministrableDoseForm.value100000073748: '100000073748',
  AdministrableDoseForm.value100000073749: '100000073749',
  AdministrableDoseForm.value100000073750: '100000073750',
  AdministrableDoseForm.value100000073751: '100000073751',
  AdministrableDoseForm.value100000073752: '100000073752',
  AdministrableDoseForm.value100000073753: '100000073753',
  AdministrableDoseForm.value100000073754: '100000073754',
  AdministrableDoseForm.value100000073755: '100000073755',
  AdministrableDoseForm.value100000073756: '100000073756',
  AdministrableDoseForm.value100000073757: '100000073757',
  AdministrableDoseForm.value100000073758: '100000073758',
  AdministrableDoseForm.value100000073759: '100000073759',
  AdministrableDoseForm.value100000073760: '100000073760',
  AdministrableDoseForm.value100000073761: '100000073761',
  AdministrableDoseForm.value100000073762: '100000073762',
  AdministrableDoseForm.value100000073763: '100000073763',
  AdministrableDoseForm.value100000073764: '100000073764',
  AdministrableDoseForm.value100000073765: '100000073765',
  AdministrableDoseForm.value100000073766: '100000073766',
  AdministrableDoseForm.value100000073767: '100000073767',
  AdministrableDoseForm.value100000073768: '100000073768',
  AdministrableDoseForm.value100000073769: '100000073769',
  AdministrableDoseForm.value100000073770: '100000073770',
  AdministrableDoseForm.value100000073771: '100000073771',
  AdministrableDoseForm.value100000073772: '100000073772',
  AdministrableDoseForm.value100000073773: '100000073773',
  AdministrableDoseForm.value100000073775: '100000073775',
  AdministrableDoseForm.value100000073776: '100000073776',
  AdministrableDoseForm.value100000073777: '100000073777',
  AdministrableDoseForm.value100000073778: '100000073778',
  AdministrableDoseForm.value100000073779: '100000073779',
  AdministrableDoseForm.value100000073780: '100000073780',
  AdministrableDoseForm.value100000073782: '100000073782',
  AdministrableDoseForm.value100000073783: '100000073783',
  AdministrableDoseForm.value100000073784: '100000073784',
  AdministrableDoseForm.value100000073785: '100000073785',
  AdministrableDoseForm.value100000073786: '100000073786',
  AdministrableDoseForm.value100000073787: '100000073787',
  AdministrableDoseForm.value100000073788: '100000073788',
  AdministrableDoseForm.value100000073789: '100000073789',
  AdministrableDoseForm.value100000073790: '100000073790',
  AdministrableDoseForm.value100000073791: '100000073791',
  AdministrableDoseForm.value100000073792: '100000073792',
  AdministrableDoseForm.value100000073793: '100000073793',
  AdministrableDoseForm.value100000073794: '100000073794',
  AdministrableDoseForm.value100000073795: '100000073795',
  AdministrableDoseForm.value100000073796: '100000073796',
  AdministrableDoseForm.value100000073797: '100000073797',
  AdministrableDoseForm.value100000073798: '100000073798',
  AdministrableDoseForm.value100000073799: '100000073799',
  AdministrableDoseForm.value100000073800: '100000073800',
  AdministrableDoseForm.value100000073802: '100000073802',
  AdministrableDoseForm.value100000073803: '100000073803',
  AdministrableDoseForm.value100000073804: '100000073804',
  AdministrableDoseForm.value100000073805: '100000073805',
  AdministrableDoseForm.value100000073806: '100000073806',
  AdministrableDoseForm.value100000073807: '100000073807',
  AdministrableDoseForm.value100000073808: '100000073808',
  AdministrableDoseForm.value100000073809: '100000073809',
  AdministrableDoseForm.value100000073810: '100000073810',
  AdministrableDoseForm.value100000073811: '100000073811',
  AdministrableDoseForm.value100000073812: '100000073812',
  AdministrableDoseForm.value100000073813: '100000073813',
  AdministrableDoseForm.value100000073814: '100000073814',
  AdministrableDoseForm.value100000073815: '100000073815',
  AdministrableDoseForm.value100000073816: '100000073816',
  AdministrableDoseForm.value100000073817: '100000073817',
  AdministrableDoseForm.value100000073818: '100000073818',
  AdministrableDoseForm.value100000073819: '100000073819',
  AdministrableDoseForm.value100000073820: '100000073820',
  AdministrableDoseForm.value100000073821: '100000073821',
  AdministrableDoseForm.value100000073822: '100000073822',
  AdministrableDoseForm.value100000073823: '100000073823',
  AdministrableDoseForm.value100000073824: '100000073824',
  AdministrableDoseForm.value100000073825: '100000073825',
  AdministrableDoseForm.value100000073826: '100000073826',
  AdministrableDoseForm.value100000073827: '100000073827',
  AdministrableDoseForm.value100000073863: '100000073863',
};

const _$UnitOfPresentationEnumMap = {
  UnitOfPresentation.value200000002108: '200000002108',
  UnitOfPresentation.value200000002109: '200000002109',
  UnitOfPresentation.value200000002110: '200000002110',
  UnitOfPresentation.value200000002111: '200000002111',
  UnitOfPresentation.value200000002112: '200000002112',
  UnitOfPresentation.value200000002113: '200000002113',
  UnitOfPresentation.value200000002114: '200000002114',
  UnitOfPresentation.value200000002115: '200000002115',
  UnitOfPresentation.value200000002116: '200000002116',
  UnitOfPresentation.value200000002117: '200000002117',
  UnitOfPresentation.value200000002118: '200000002118',
  UnitOfPresentation.value200000002119: '200000002119',
  UnitOfPresentation.value200000002120: '200000002120',
  UnitOfPresentation.value200000002121: '200000002121',
  UnitOfPresentation.value200000002122: '200000002122',
  UnitOfPresentation.value200000002123: '200000002123',
  UnitOfPresentation.value200000002124: '200000002124',
  UnitOfPresentation.value200000002125: '200000002125',
  UnitOfPresentation.value200000002126: '200000002126',
  UnitOfPresentation.value200000002127: '200000002127',
  UnitOfPresentation.value200000002128: '200000002128',
  UnitOfPresentation.value200000002129: '200000002129',
  UnitOfPresentation.value200000002130: '200000002130',
  UnitOfPresentation.value200000002131: '200000002131',
  UnitOfPresentation.value200000002132: '200000002132',
  UnitOfPresentation.value200000002133: '200000002133',
  UnitOfPresentation.value200000002134: '200000002134',
  UnitOfPresentation.value200000002135: '200000002135',
  UnitOfPresentation.value200000002136: '200000002136',
  UnitOfPresentation.value200000002137: '200000002137',
  UnitOfPresentation.value200000002138: '200000002138',
  UnitOfPresentation.value200000002139: '200000002139',
  UnitOfPresentation.value200000002140: '200000002140',
  UnitOfPresentation.value200000002141: '200000002141',
  UnitOfPresentation.value200000002142: '200000002142',
  UnitOfPresentation.value200000002143: '200000002143',
  UnitOfPresentation.value200000002144: '200000002144',
  UnitOfPresentation.value200000002145: '200000002145',
  UnitOfPresentation.value200000002146: '200000002146',
  UnitOfPresentation.value200000002147: '200000002147',
  UnitOfPresentation.value200000002148: '200000002148',
  UnitOfPresentation.value200000002149: '200000002149',
  UnitOfPresentation.value200000002150: '200000002150',
  UnitOfPresentation.value200000002151: '200000002151',
  UnitOfPresentation.value200000002152: '200000002152',
  UnitOfPresentation.value200000002153: '200000002153',
  UnitOfPresentation.value200000002154: '200000002154',
  UnitOfPresentation.value200000002155: '200000002155',
  UnitOfPresentation.value200000002156: '200000002156',
  UnitOfPresentation.value200000002157: '200000002157',
  UnitOfPresentation.value200000002158: '200000002158',
  UnitOfPresentation.value200000002159: '200000002159',
  UnitOfPresentation.value200000002163: '200000002163',
  UnitOfPresentation.value200000002164: '200000002164',
  UnitOfPresentation.value200000002165: '200000002165',
  UnitOfPresentation.value200000002166: '200000002166',
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

AdministrableProductDefinitionProperty
    _$AdministrableProductDefinitionPropertyFromJson(
            Map<String, dynamic> json) =>
        AdministrableProductDefinitionProperty(
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
          status:
              $enumDecodeNullable(_$PublicationStatusEnumMap, json['status']),
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

Map<String, dynamic> _$AdministrableProductDefinitionPropertyToJson(
    AdministrableProductDefinitionProperty instance) {
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
  writeNotNull('status', instance.status?.toJson());
  return val;
}

AdministrableProductDefinitionRouteOfAdministration
    _$AdministrableProductDefinitionRouteOfAdministrationFromJson(
            Map<String, dynamic> json) =>
        AdministrableProductDefinitionRouteOfAdministration(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
          firstDose: json['firstDose'] == null
              ? null
              : Quantity.fromJson(json['firstDose'] as Map<String, dynamic>),
          maxSingleDose: json['maxSingleDose'] == null
              ? null
              : Quantity.fromJson(
                  json['maxSingleDose'] as Map<String, dynamic>),
          maxDosePerDay: json['maxDosePerDay'] == null
              ? null
              : Quantity.fromJson(
                  json['maxDosePerDay'] as Map<String, dynamic>),
          maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] == null
              ? null
              : Ratio.fromJson(
                  json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>),
          maxTreatmentPeriod: json['maxTreatmentPeriod'] == null
              ? null
              : FhirDuration.fromJson(
                  json['maxTreatmentPeriod'] as Map<String, dynamic>),
          targetSpecies: (json['targetSpecies'] as List<dynamic>?)
              ?.map((e) => AdministrableProductDefinitionTargetSpecies.fromJson(
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
          children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList(),
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ),
        );

Map<String, dynamic>
    _$AdministrableProductDefinitionRouteOfAdministrationToJson(
        AdministrableProductDefinitionRouteOfAdministration instance) {
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
  writeNotNull('firstDose', instance.firstDose?.toJson());
  writeNotNull('maxSingleDose', instance.maxSingleDose?.toJson());
  writeNotNull('maxDosePerDay', instance.maxDosePerDay?.toJson());
  writeNotNull('maxDosePerTreatmentPeriod',
      instance.maxDosePerTreatmentPeriod?.toJson());
  writeNotNull('maxTreatmentPeriod', instance.maxTreatmentPeriod?.toJson());
  writeNotNull(
      'targetSpecies', instance.targetSpecies?.map((e) => e.toJson()).toList());
  return val;
}

AdministrableProductDefinitionTargetSpecies
    _$AdministrableProductDefinitionTargetSpeciesFromJson(
            Map<String, dynamic> json) =>
        AdministrableProductDefinitionTargetSpecies(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          code: $enumDecode(_$TargetSpeciesEnumMap, json['code']),
          withdrawalPeriod: (json['withdrawalPeriod'] as List<dynamic>?)
              ?.map((e) =>
                  AdministrableProductDefinitionWithdrawalPeriod.fromJson(
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
          children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList(),
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ),
        );

Map<String, dynamic> _$AdministrableProductDefinitionTargetSpeciesToJson(
    AdministrableProductDefinitionTargetSpecies instance) {
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
  writeNotNull('withdrawalPeriod',
      instance.withdrawalPeriod?.map((e) => e.toJson()).toList());
  return val;
}

const _$TargetSpeciesEnumMap = {
  TargetSpecies.value100000108874: '100000108874',
  TargetSpecies.value100000108875: '100000108875',
  TargetSpecies.value100000108876: '100000108876',
  TargetSpecies.value100000108877: '100000108877',
  TargetSpecies.value100000108878: '100000108878',
  TargetSpecies.value100000108879: '100000108879',
  TargetSpecies.value100000108880: '100000108880',
  TargetSpecies.value100000108881: '100000108881',
  TargetSpecies.value100000108882: '100000108882',
  TargetSpecies.value100000108883: '100000108883',
  TargetSpecies.value100000108884: '100000108884',
  TargetSpecies.value100000108885: '100000108885',
  TargetSpecies.value100000108886: '100000108886',
  TargetSpecies.value100000108887: '100000108887',
  TargetSpecies.value100000108888: '100000108888',
  TargetSpecies.value100000108889: '100000108889',
  TargetSpecies.value100000108890: '100000108890',
  TargetSpecies.value100000108891: '100000108891',
  TargetSpecies.value100000108892: '100000108892',
  TargetSpecies.value100000108893: '100000108893',
  TargetSpecies.value100000108894: '100000108894',
  TargetSpecies.value100000108895: '100000108895',
  TargetSpecies.value100000108896: '100000108896',
  TargetSpecies.value100000108897: '100000108897',
  TargetSpecies.value100000108898: '100000108898',
  TargetSpecies.value100000108899: '100000108899',
  TargetSpecies.value100000108900: '100000108900',
  TargetSpecies.value100000108901: '100000108901',
  TargetSpecies.value100000108902: '100000108902',
  TargetSpecies.value100000108903: '100000108903',
  TargetSpecies.value100000108904: '100000108904',
  TargetSpecies.value100000108905: '100000108905',
  TargetSpecies.value100000108906: '100000108906',
  TargetSpecies.value100000108907: '100000108907',
  TargetSpecies.value100000108908: '100000108908',
  TargetSpecies.value100000108909: '100000108909',
  TargetSpecies.value100000108910: '100000108910',
  TargetSpecies.value100000108911: '100000108911',
  TargetSpecies.value100000108912: '100000108912',
  TargetSpecies.value100000108913: '100000108913',
  TargetSpecies.value100000108914: '100000108914',
  TargetSpecies.value100000108915: '100000108915',
  TargetSpecies.value100000108916: '100000108916',
  TargetSpecies.value100000108917: '100000108917',
  TargetSpecies.value100000108918: '100000108918',
  TargetSpecies.value100000108919: '100000108919',
  TargetSpecies.value100000108920: '100000108920',
  TargetSpecies.value100000108921: '100000108921',
  TargetSpecies.value100000108922: '100000108922',
  TargetSpecies.value100000108923: '100000108923',
  TargetSpecies.value100000108924: '100000108924',
  TargetSpecies.value100000108925: '100000108925',
  TargetSpecies.value100000108926: '100000108926',
  TargetSpecies.value100000108927: '100000108927',
  TargetSpecies.value100000108928: '100000108928',
  TargetSpecies.value100000108929: '100000108929',
  TargetSpecies.value100000108930: '100000108930',
  TargetSpecies.value100000108931: '100000108931',
  TargetSpecies.value100000108932: '100000108932',
  TargetSpecies.value100000108933: '100000108933',
  TargetSpecies.value100000108934: '100000108934',
  TargetSpecies.value100000108935: '100000108935',
  TargetSpecies.value100000108936: '100000108936',
  TargetSpecies.value100000108937: '100000108937',
  TargetSpecies.value100000108938: '100000108938',
  TargetSpecies.value100000108939: '100000108939',
  TargetSpecies.value100000108940: '100000108940',
  TargetSpecies.value100000108941: '100000108941',
  TargetSpecies.value100000108942: '100000108942',
  TargetSpecies.value100000108943: '100000108943',
  TargetSpecies.value100000108944: '100000108944',
  TargetSpecies.value100000108945: '100000108945',
  TargetSpecies.value100000108946: '100000108946',
  TargetSpecies.value100000108947: '100000108947',
  TargetSpecies.value100000108948: '100000108948',
  TargetSpecies.value100000108949: '100000108949',
  TargetSpecies.value100000108950: '100000108950',
  TargetSpecies.value100000108951: '100000108951',
  TargetSpecies.value100000108952: '100000108952',
  TargetSpecies.value100000108953: '100000108953',
  TargetSpecies.value100000108954: '100000108954',
  TargetSpecies.value100000108955: '100000108955',
  TargetSpecies.value100000108956: '100000108956',
  TargetSpecies.value100000108957: '100000108957',
  TargetSpecies.value100000108958: '100000108958',
  TargetSpecies.value100000108959: '100000108959',
  TargetSpecies.value100000108960: '100000108960',
  TargetSpecies.value100000108961: '100000108961',
  TargetSpecies.value100000108962: '100000108962',
  TargetSpecies.value100000108963: '100000108963',
  TargetSpecies.value100000108964: '100000108964',
  TargetSpecies.value100000108965: '100000108965',
  TargetSpecies.value100000108966: '100000108966',
  TargetSpecies.value100000108967: '100000108967',
  TargetSpecies.value100000108968: '100000108968',
  TargetSpecies.value100000108969: '100000108969',
  TargetSpecies.value100000108970: '100000108970',
  TargetSpecies.value100000108971: '100000108971',
  TargetSpecies.value100000108972: '100000108972',
  TargetSpecies.value100000108973: '100000108973',
  TargetSpecies.value100000108974: '100000108974',
  TargetSpecies.value100000108975: '100000108975',
  TargetSpecies.value100000108976: '100000108976',
  TargetSpecies.value100000108977: '100000108977',
  TargetSpecies.value100000108978: '100000108978',
  TargetSpecies.value100000108979: '100000108979',
  TargetSpecies.value100000108980: '100000108980',
  TargetSpecies.value100000108981: '100000108981',
  TargetSpecies.value100000108982: '100000108982',
  TargetSpecies.value100000108983: '100000108983',
  TargetSpecies.value100000108984: '100000108984',
  TargetSpecies.value100000108985: '100000108985',
  TargetSpecies.value100000108986: '100000108986',
  TargetSpecies.value100000108987: '100000108987',
  TargetSpecies.value100000108988: '100000108988',
  TargetSpecies.value100000108989: '100000108989',
  TargetSpecies.value100000108990: '100000108990',
  TargetSpecies.value100000108991: '100000108991',
  TargetSpecies.value100000108992: '100000108992',
  TargetSpecies.value100000108993: '100000108993',
  TargetSpecies.value100000108994: '100000108994',
  TargetSpecies.value100000108995: '100000108995',
  TargetSpecies.value100000108996: '100000108996',
  TargetSpecies.value100000108997: '100000108997',
  TargetSpecies.value100000108998: '100000108998',
  TargetSpecies.value100000108999: '100000108999',
  TargetSpecies.value100000109000: '100000109000',
  TargetSpecies.value100000109001: '100000109001',
  TargetSpecies.value100000109002: '100000109002',
  TargetSpecies.value100000109003: '100000109003',
  TargetSpecies.value100000109004: '100000109004',
  TargetSpecies.value100000109005: '100000109005',
  TargetSpecies.value100000109006: '100000109006',
  TargetSpecies.value100000109007: '100000109007',
  TargetSpecies.value100000109008: '100000109008',
  TargetSpecies.value100000109009: '100000109009',
  TargetSpecies.value100000109010: '100000109010',
  TargetSpecies.value100000109011: '100000109011',
  TargetSpecies.value100000109012: '100000109012',
  TargetSpecies.value100000109013: '100000109013',
  TargetSpecies.value100000109014: '100000109014',
  TargetSpecies.value100000109015: '100000109015',
  TargetSpecies.value100000109016: '100000109016',
  TargetSpecies.value100000109017: '100000109017',
  TargetSpecies.value100000109018: '100000109018',
  TargetSpecies.value100000109019: '100000109019',
  TargetSpecies.value100000109020: '100000109020',
  TargetSpecies.value100000109021: '100000109021',
  TargetSpecies.value100000109022: '100000109022',
  TargetSpecies.value100000109023: '100000109023',
  TargetSpecies.value100000109024: '100000109024',
  TargetSpecies.value100000109025: '100000109025',
  TargetSpecies.value100000109026: '100000109026',
  TargetSpecies.value100000109027: '100000109027',
  TargetSpecies.value100000109028: '100000109028',
  TargetSpecies.value100000109029: '100000109029',
  TargetSpecies.value100000109030: '100000109030',
  TargetSpecies.value100000109031: '100000109031',
  TargetSpecies.value100000109032: '100000109032',
  TargetSpecies.value100000109033: '100000109033',
  TargetSpecies.value100000109034: '100000109034',
  TargetSpecies.value100000109035: '100000109035',
  TargetSpecies.value100000109036: '100000109036',
  TargetSpecies.value100000109037: '100000109037',
  TargetSpecies.value100000109038: '100000109038',
  TargetSpecies.value100000109039: '100000109039',
  TargetSpecies.value100000109040: '100000109040',
  TargetSpecies.value100000109041: '100000109041',
  TargetSpecies.value100000109042: '100000109042',
  TargetSpecies.value100000109043: '100000109043',
  TargetSpecies.value100000109044: '100000109044',
  TargetSpecies.value100000109045: '100000109045',
  TargetSpecies.value100000109046: '100000109046',
  TargetSpecies.value100000109047: '100000109047',
  TargetSpecies.value100000109048: '100000109048',
  TargetSpecies.value100000109049: '100000109049',
  TargetSpecies.value100000109050: '100000109050',
  TargetSpecies.value100000109051: '100000109051',
  TargetSpecies.value100000109052: '100000109052',
  TargetSpecies.value100000109053: '100000109053',
  TargetSpecies.value100000109054: '100000109054',
  TargetSpecies.value100000109055: '100000109055',
  TargetSpecies.value100000109056: '100000109056',
  TargetSpecies.value100000109057: '100000109057',
  TargetSpecies.value100000109058: '100000109058',
  TargetSpecies.value100000109059: '100000109059',
  TargetSpecies.value100000109060: '100000109060',
  TargetSpecies.value100000109061: '100000109061',
  TargetSpecies.value100000109062: '100000109062',
  TargetSpecies.value100000109063: '100000109063',
  TargetSpecies.value100000109064: '100000109064',
  TargetSpecies.value100000109065: '100000109065',
  TargetSpecies.value100000109066: '100000109066',
  TargetSpecies.value100000109067: '100000109067',
  TargetSpecies.value100000109068: '100000109068',
  TargetSpecies.value100000109069: '100000109069',
  TargetSpecies.value100000109070: '100000109070',
  TargetSpecies.value100000109071: '100000109071',
  TargetSpecies.value100000109072: '100000109072',
  TargetSpecies.value100000109073: '100000109073',
};

AdministrableProductDefinitionWithdrawalPeriod
    _$AdministrableProductDefinitionWithdrawalPeriodFromJson(
            Map<String, dynamic> json) =>
        AdministrableProductDefinitionWithdrawalPeriod(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          tissue: $enumDecode(_$AnimalTissueTypeEnumMap, json['tissue']),
          value: Quantity.fromJson(json['value'] as Map<String, dynamic>),
          supportingInformation: json['supportingInformation'] == null
              ? null
              : FhirString.fromJson(json['supportingInformation']),
          supportingInformationElement: json['_supportingInformation'] == null
              ? null
              : Element.fromJson(
                  json['_supportingInformation'] as Map<String, dynamic>),
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

Map<String, dynamic> _$AdministrableProductDefinitionWithdrawalPeriodToJson(
    AdministrableProductDefinitionWithdrawalPeriod instance) {
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
  val['tissue'] = instance.tissue.toJson();
  val['value'] = instance.value.toJson();
  writeNotNull(
      'supportingInformation', instance.supportingInformation?.toJson());
  writeNotNull('_supportingInformation',
      instance.supportingInformationElement?.toJson());
  return val;
}

const _$AnimalTissueTypeEnumMap = {
  AnimalTissueType.value100000072091: '100000072091',
  AnimalTissueType.value100000072092: '100000072092',
  AnimalTissueType.value100000072093: '100000072093',
  AnimalTissueType.value100000072094: '100000072094',
  AnimalTissueType.value100000072095: '100000072095',
  AnimalTissueType.value100000072096: '100000072096',
  AnimalTissueType.value100000072104: '100000072104',
  AnimalTissueType.value100000072105: '100000072105',
  AnimalTissueType.value100000072106: '100000072106',
  AnimalTissueType.value100000072107: '100000072107',
  AnimalTissueType.value100000072108: '100000072108',
  AnimalTissueType.value100000072109: '100000072109',
  AnimalTissueType.value100000111053: '100000111053',
  AnimalTissueType.value100000111054: '100000111054',
  AnimalTissueType.value100000111055: '100000111055',
  AnimalTissueType.value100000111056: '100000111056',
  AnimalTissueType.value100000111057: '100000111057',
  AnimalTissueType.value100000111058: '100000111058',
  AnimalTissueType.value100000111059: '100000111059',
  AnimalTissueType.value100000111060: '100000111060',
  AnimalTissueType.value100000111061: '100000111061',
  AnimalTissueType.value100000111062: '100000111062',
  AnimalTissueType.value100000111063: '100000111063',
  AnimalTissueType.value100000111064: '100000111064',
  AnimalTissueType.value100000111065: '100000111065',
  AnimalTissueType.value100000111066: '100000111066',
  AnimalTissueType.value100000111067: '100000111067',
  AnimalTissueType.value100000111068: '100000111068',
  AnimalTissueType.value100000111069: '100000111069',
  AnimalTissueType.value100000111070: '100000111070',
  AnimalTissueType.value100000111071: '100000111071',
  AnimalTissueType.value100000111072: '100000111072',
  AnimalTissueType.value100000111073: '100000111073',
  AnimalTissueType.value100000111074: '100000111074',
  AnimalTissueType.value100000111075: '100000111075',
  AnimalTissueType.value100000111076: '100000111076',
  AnimalTissueType.value100000111077: '100000111077',
  AnimalTissueType.value100000111078: '100000111078',
  AnimalTissueType.value100000111079: '100000111079',
  AnimalTissueType.value100000111080: '100000111080',
  AnimalTissueType.value100000111081: '100000111081',
  AnimalTissueType.value100000111082: '100000111082',
  AnimalTissueType.value100000111083: '100000111083',
  AnimalTissueType.value100000111084: '100000111084',
  AnimalTissueType.value100000111085: '100000111085',
  AnimalTissueType.value100000111086: '100000111086',
  AnimalTissueType.value100000111087: '100000111087',
  AnimalTissueType.value100000111088: '100000111088',
  AnimalTissueType.value100000111089: '100000111089',
  AnimalTissueType.value100000111090: '100000111090',
  AnimalTissueType.value100000111091: '100000111091',
  AnimalTissueType.value100000111092: '100000111092',
  AnimalTissueType.value100000111093: '100000111093',
  AnimalTissueType.value100000111094: '100000111094',
  AnimalTissueType.value100000111095: '100000111095',
  AnimalTissueType.value100000111096: '100000111096',
  AnimalTissueType.value100000111097: '100000111097',
  AnimalTissueType.value100000111098: '100000111098',
  AnimalTissueType.value100000111099: '100000111099',
  AnimalTissueType.value100000111100: '100000111100',
  AnimalTissueType.value100000111101: '100000111101',
  AnimalTissueType.value100000111102: '100000111102',
  AnimalTissueType.value100000111103: '100000111103',
  AnimalTissueType.value100000111104: '100000111104',
  AnimalTissueType.value100000111105: '100000111105',
  AnimalTissueType.value100000111106: '100000111106',
  AnimalTissueType.value100000111107: '100000111107',
  AnimalTissueType.value100000111108: '100000111108',
  AnimalTissueType.value100000111109: '100000111109',
  AnimalTissueType.value100000111110: '100000111110',
  AnimalTissueType.value100000111111: '100000111111',
  AnimalTissueType.value100000111112: '100000111112',
  AnimalTissueType.value100000111113: '100000111113',
  AnimalTissueType.value100000111114: '100000111114',
  AnimalTissueType.value100000111115: '100000111115',
  AnimalTissueType.value100000111116: '100000111116',
  AnimalTissueType.value100000111117: '100000111117',
  AnimalTissueType.value100000111118: '100000111118',
  AnimalTissueType.value100000111119: '100000111119',
  AnimalTissueType.value100000111120: '100000111120',
  AnimalTissueType.value100000111121: '100000111121',
  AnimalTissueType.value100000111122: '100000111122',
  AnimalTissueType.value100000111123: '100000111123',
  AnimalTissueType.value100000111124: '100000111124',
  AnimalTissueType.value100000111125: '100000111125',
  AnimalTissueType.value100000111126: '100000111126',
  AnimalTissueType.value100000111127: '100000111127',
  AnimalTissueType.value100000111128: '100000111128',
  AnimalTissueType.value100000111129: '100000111129',
  AnimalTissueType.value100000111130: '100000111130',
  AnimalTissueType.value100000111131: '100000111131',
  AnimalTissueType.value100000111132: '100000111132',
  AnimalTissueType.value100000111133: '100000111133',
  AnimalTissueType.value100000111134: '100000111134',
  AnimalTissueType.value100000111135: '100000111135',
  AnimalTissueType.value100000111136: '100000111136',
  AnimalTissueType.value100000111137: '100000111137',
  AnimalTissueType.value100000111138: '100000111138',
  AnimalTissueType.value100000111139: '100000111139',
  AnimalTissueType.value100000111140: '100000111140',
  AnimalTissueType.value100000111141: '100000111141',
  AnimalTissueType.value100000111142: '100000111142',
  AnimalTissueType.value100000111143: '100000111143',
  AnimalTissueType.value100000111144: '100000111144',
  AnimalTissueType.value100000111145: '100000111145',
  AnimalTissueType.value100000111146: '100000111146',
  AnimalTissueType.value100000111147: '100000111147',
  AnimalTissueType.value100000111148: '100000111148',
  AnimalTissueType.value100000111149: '100000111149',
  AnimalTissueType.value100000111150: '100000111150',
  AnimalTissueType.value100000111151: '100000111151',
  AnimalTissueType.value100000111152: '100000111152',
  AnimalTissueType.value100000111153: '100000111153',
  AnimalTissueType.value100000111154: '100000111154',
  AnimalTissueType.value100000111155: '100000111155',
  AnimalTissueType.value100000111156: '100000111156',
  AnimalTissueType.value100000111157: '100000111157',
  AnimalTissueType.value100000111158: '100000111158',
  AnimalTissueType.value100000111159: '100000111159',
  AnimalTissueType.value100000111160: '100000111160',
  AnimalTissueType.value100000111161: '100000111161',
  AnimalTissueType.value100000111162: '100000111162',
  AnimalTissueType.value100000111163: '100000111163',
  AnimalTissueType.value100000111164: '100000111164',
  AnimalTissueType.value100000125717: '100000125717',
  AnimalTissueType.value100000136180: '100000136180',
  AnimalTissueType.value100000136181: '100000136181',
  AnimalTissueType.value100000136182: '100000136182',
  AnimalTissueType.value100000136183: '100000136183',
  AnimalTissueType.value100000136184: '100000136184',
  AnimalTissueType.value100000136185: '100000136185',
  AnimalTissueType.value100000136186: '100000136186',
  AnimalTissueType.value100000136187: '100000136187',
  AnimalTissueType.value100000136188: '100000136188',
  AnimalTissueType.value100000136189: '100000136189',
  AnimalTissueType.value100000136190: '100000136190',
  AnimalTissueType.value100000136191: '100000136191',
  AnimalTissueType.value100000136192: '100000136192',
  AnimalTissueType.value100000136193: '100000136193',
  AnimalTissueType.value100000136194: '100000136194',
  AnimalTissueType.value100000136195: '100000136195',
  AnimalTissueType.value100000136196: '100000136196',
  AnimalTissueType.value100000136197: '100000136197',
  AnimalTissueType.value100000136198: '100000136198',
  AnimalTissueType.value100000136199: '100000136199',
  AnimalTissueType.value100000136200: '100000136200',
  AnimalTissueType.value100000136201: '100000136201',
  AnimalTissueType.value100000136202: '100000136202',
  AnimalTissueType.value100000136203: '100000136203',
  AnimalTissueType.value100000136204: '100000136204',
  AnimalTissueType.value100000136205: '100000136205',
  AnimalTissueType.value100000136206: '100000136206',
  AnimalTissueType.value100000136207: '100000136207',
  AnimalTissueType.value100000136208: '100000136208',
  AnimalTissueType.value100000136209: '100000136209',
  AnimalTissueType.value100000136210: '100000136210',
  AnimalTissueType.value100000136211: '100000136211',
  AnimalTissueType.value100000136212: '100000136212',
  AnimalTissueType.value100000136213: '100000136213',
  AnimalTissueType.value100000136214: '100000136214',
  AnimalTissueType.value100000136215: '100000136215',
  AnimalTissueType.value100000136216: '100000136216',
  AnimalTissueType.value100000136217: '100000136217',
  AnimalTissueType.value100000136218: '100000136218',
  AnimalTissueType.value100000136219: '100000136219',
  AnimalTissueType.value100000136220: '100000136220',
  AnimalTissueType.value100000136221: '100000136221',
  AnimalTissueType.value100000136222: '100000136222',
  AnimalTissueType.value100000136223: '100000136223',
  AnimalTissueType.value100000136224: '100000136224',
  AnimalTissueType.value100000136225: '100000136225',
  AnimalTissueType.value100000136226: '100000136226',
  AnimalTissueType.value100000136227: '100000136227',
  AnimalTissueType.value100000136228: '100000136228',
  AnimalTissueType.value100000136229: '100000136229',
  AnimalTissueType.value100000136230: '100000136230',
  AnimalTissueType.value100000136231: '100000136231',
  AnimalTissueType.value100000136232: '100000136232',
  AnimalTissueType.value100000136233: '100000136233',
  AnimalTissueType.value100000136234: '100000136234',
  AnimalTissueType.value100000136235: '100000136235',
  AnimalTissueType.value100000136236: '100000136236',
  AnimalTissueType.value100000136237: '100000136237',
  AnimalTissueType.value100000136247: '100000136247',
  AnimalTissueType.value100000136248: '100000136248',
  AnimalTissueType.value100000136554: '100000136554',
  AnimalTissueType.value100000136555: '100000136555',
  AnimalTissueType.value100000136556: '100000136556',
  AnimalTissueType.value100000142485: '100000142485',
};
