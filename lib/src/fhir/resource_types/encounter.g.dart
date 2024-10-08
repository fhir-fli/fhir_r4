// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encounter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Encounter _$EncounterFromJson(Map<String, dynamic> json) => Encounter(
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
      status: $enumDecode(_$EncounterStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      statusHistory: (json['statusHistory'] as List<dynamic>?)
          ?.map(
              (e) => EncounterStatusHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      class_: Coding.fromJson(json['class'] as Map<String, dynamic>),
      classHistory: (json['classHistory'] as List<dynamic>?)
          ?.map(
              (e) => EncounterClassHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EncounterTypeEnumMap, e))
          .toList(),
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
      priority: json['priority'] == null
          ? null
          : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
      subject: json['subject'] == null
          ? null
          : Reference.fromJson(json['subject'] as Map<String, dynamic>),
      episodeOfCare: (json['episodeOfCare'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => EncounterParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      length: json['length'] == null
          ? null
          : FhirDuration.fromJson(json['length'] as Map<String, dynamic>),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) => EncounterDiagnosis.fromJson(e as Map<String, dynamic>))
          .toList(),
      account: (json['account'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      hospitalization: json['hospitalization'] == null
          ? null
          : EncounterHospitalization.fromJson(
              json['hospitalization'] as Map<String, dynamic>),
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => EncounterLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceProvider: json['serviceProvider'] == null
          ? null
          : Reference.fromJson(json['serviceProvider'] as Map<String, dynamic>),
      partOf: json['partOf'] == null
          ? null
          : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
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

Map<String, dynamic> _$EncounterToJson(Encounter instance) {
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
  writeNotNull(
      'statusHistory', instance.statusHistory?.map((e) => e.toJson()).toList());
  val['class'] = instance.class_.toJson();
  writeNotNull(
      'classHistory', instance.classHistory?.map((e) => e.toJson()).toList());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('serviceType', instance.serviceType?.toJson());
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull(
      'episodeOfCare', instance.episodeOfCare?.map((e) => e.toJson()).toList());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e.toJson()).toList());
  writeNotNull(
      'participant', instance.participant?.map((e) => e.toJson()).toList());
  writeNotNull(
      'appointment', instance.appointment?.map((e) => e.toJson()).toList());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('length', instance.length?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e.toJson()).toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e.toJson()).toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e.toJson()).toList());
  writeNotNull('account', instance.account?.map((e) => e.toJson()).toList());
  writeNotNull('hospitalization', instance.hospitalization?.toJson());
  writeNotNull('location', instance.location?.map((e) => e.toJson()).toList());
  writeNotNull('serviceProvider', instance.serviceProvider?.toJson());
  writeNotNull('partOf', instance.partOf?.toJson());
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

const _$EncounterStatusEnumMap = {
  EncounterStatus.planned: 'planned',
  EncounterStatus.arrived: 'arrived',
  EncounterStatus.triaged: 'triaged',
  EncounterStatus.in_progress: 'in-progress',
  EncounterStatus.onleave: 'onleave',
  EncounterStatus.finished: 'finished',
  EncounterStatus.cancelled: 'cancelled',
  EncounterStatus.entered_in_error: 'entered-in-error',
  EncounterStatus.unknown: 'unknown',
};

const _$EncounterTypeEnumMap = {
  EncounterType.ADMS: 'ADMS',
  EncounterType.BD_BM_clin: 'BD/BM-clin',
  EncounterType.CCS60: 'CCS60',
  EncounterType.OKI: 'OKI',
};

const _$ServiceTypeEnumMap = {
  ServiceType.value1: '1',
  ServiceType.value2: '2',
  ServiceType.value3: '3',
  ServiceType.value4: '4',
  ServiceType.value5: '5',
  ServiceType.value6: '6',
  ServiceType.value7: '7',
  ServiceType.value8: '8',
  ServiceType.value9: '9',
  ServiceType.value10: '10',
  ServiceType.value11: '11',
  ServiceType.value12: '12',
  ServiceType.value13: '13',
  ServiceType.value14: '14',
  ServiceType.value15: '15',
  ServiceType.value16: '16',
  ServiceType.value17: '17',
  ServiceType.value18: '18',
  ServiceType.value19: '19',
  ServiceType.value20: '20',
  ServiceType.value21: '21',
  ServiceType.value22: '22',
  ServiceType.value23: '23',
  ServiceType.value24: '24',
  ServiceType.value25: '25',
  ServiceType.value26: '26',
  ServiceType.value27: '27',
  ServiceType.value28: '28',
  ServiceType.value29: '29',
  ServiceType.value30: '30',
  ServiceType.value31: '31',
  ServiceType.value32: '32',
  ServiceType.value33: '33',
  ServiceType.value34: '34',
  ServiceType.value35: '35',
  ServiceType.value36: '36',
  ServiceType.value37: '37',
  ServiceType.value38: '38',
  ServiceType.value39: '39',
  ServiceType.value40: '40',
  ServiceType.value41: '41',
  ServiceType.value42: '42',
  ServiceType.value43: '43',
  ServiceType.value44: '44',
  ServiceType.value45: '45',
  ServiceType.value46: '46',
  ServiceType.value47: '47',
  ServiceType.value48: '48',
  ServiceType.value49: '49',
  ServiceType.value50: '50',
  ServiceType.value51: '51',
  ServiceType.value52: '52',
  ServiceType.value53: '53',
  ServiceType.value54: '54',
  ServiceType.value55: '55',
  ServiceType.value56: '56',
  ServiceType.value57: '57',
  ServiceType.value58: '58',
  ServiceType.value59: '59',
  ServiceType.value60: '60',
  ServiceType.value61: '61',
  ServiceType.value62: '62',
  ServiceType.value63: '63',
  ServiceType.value64: '64',
  ServiceType.value65: '65',
  ServiceType.value66: '66',
  ServiceType.value67: '67',
  ServiceType.value68: '68',
  ServiceType.value69: '69',
  ServiceType.value70: '70',
  ServiceType.value71: '71',
  ServiceType.value72: '72',
  ServiceType.value73: '73',
  ServiceType.value74: '74',
  ServiceType.value75: '75',
  ServiceType.value76: '76',
  ServiceType.value77: '77',
  ServiceType.value78: '78',
  ServiceType.value79: '79',
  ServiceType.value80: '80',
  ServiceType.value81: '81',
  ServiceType.value82: '82',
  ServiceType.value83: '83',
  ServiceType.value84: '84',
  ServiceType.value85: '85',
  ServiceType.value86: '86',
  ServiceType.value87: '87',
  ServiceType.value88: '88',
  ServiceType.value89: '89',
  ServiceType.value90: '90',
  ServiceType.value91: '91',
  ServiceType.value92: '92',
  ServiceType.value93: '93',
  ServiceType.value94: '94',
  ServiceType.value95: '95',
  ServiceType.value96: '96',
  ServiceType.value97: '97',
  ServiceType.value98: '98',
  ServiceType.value99: '99',
  ServiceType.value100: '100',
  ServiceType.value101: '101',
  ServiceType.value102: '102',
  ServiceType.value103: '103',
  ServiceType.value104: '104',
  ServiceType.value105: '105',
  ServiceType.value106: '106',
  ServiceType.value107: '107',
  ServiceType.value108: '108',
  ServiceType.value109: '109',
  ServiceType.value110: '110',
  ServiceType.value111: '111',
  ServiceType.value112: '112',
  ServiceType.value113: '113',
  ServiceType.value114: '114',
  ServiceType.value115: '115',
  ServiceType.value116: '116',
  ServiceType.value117: '117',
  ServiceType.value118: '118',
  ServiceType.value119: '119',
  ServiceType.value120: '120',
  ServiceType.value121: '121',
  ServiceType.value122: '122',
  ServiceType.value123: '123',
  ServiceType.value124: '124',
  ServiceType.value125: '125',
  ServiceType.value126: '126',
  ServiceType.value127: '127',
  ServiceType.value128: '128',
  ServiceType.value129: '129',
  ServiceType.value130: '130',
  ServiceType.value131: '131',
  ServiceType.value132: '132',
  ServiceType.value133: '133',
  ServiceType.value134: '134',
  ServiceType.value135: '135',
  ServiceType.value136: '136',
  ServiceType.value137: '137',
  ServiceType.value138: '138',
  ServiceType.value139: '139',
  ServiceType.value140: '140',
  ServiceType.value141: '141',
  ServiceType.value142: '142',
  ServiceType.value143: '143',
  ServiceType.value144: '144',
  ServiceType.value145: '145',
  ServiceType.value146: '146',
  ServiceType.value147: '147',
  ServiceType.value148: '148',
  ServiceType.value149: '149',
  ServiceType.value150: '150',
  ServiceType.value151: '151',
  ServiceType.value152: '152',
  ServiceType.value153: '153',
  ServiceType.value154: '154',
  ServiceType.value155: '155',
  ServiceType.value156: '156',
  ServiceType.value157: '157',
  ServiceType.value158: '158',
  ServiceType.value159: '159',
  ServiceType.value160: '160',
  ServiceType.value161: '161',
  ServiceType.value162: '162',
  ServiceType.value163: '163',
  ServiceType.value164: '164',
  ServiceType.value165: '165',
  ServiceType.value166: '166',
  ServiceType.value167: '167',
  ServiceType.value168: '168',
  ServiceType.value169: '169',
  ServiceType.value170: '170',
  ServiceType.value171: '171',
  ServiceType.value172: '172',
  ServiceType.value173: '173',
  ServiceType.value174: '174',
  ServiceType.value175: '175',
  ServiceType.value176: '176',
  ServiceType.value177: '177',
  ServiceType.value178: '178',
  ServiceType.value179: '179',
  ServiceType.value180: '180',
  ServiceType.value181: '181',
  ServiceType.value182: '182',
  ServiceType.value183: '183',
  ServiceType.value184: '184',
  ServiceType.value185: '185',
  ServiceType.value186: '186',
  ServiceType.value187: '187',
  ServiceType.value188: '188',
  ServiceType.value189: '189',
  ServiceType.value190: '190',
  ServiceType.value191: '191',
  ServiceType.value192: '192',
  ServiceType.value193: '193',
  ServiceType.value194: '194',
  ServiceType.value195: '195',
  ServiceType.value196: '196',
  ServiceType.value197: '197',
  ServiceType.value198: '198',
  ServiceType.value199: '199',
  ServiceType.value200: '200',
  ServiceType.value201: '201',
  ServiceType.value202: '202',
  ServiceType.value203: '203',
  ServiceType.value204: '204',
  ServiceType.value205: '205',
  ServiceType.value206: '206',
  ServiceType.value207: '207',
  ServiceType.value208: '208',
  ServiceType.value209: '209',
  ServiceType.value210: '210',
  ServiceType.value211: '211',
  ServiceType.value212: '212',
  ServiceType.value213: '213',
  ServiceType.value214: '214',
  ServiceType.value215: '215',
  ServiceType.value216: '216',
  ServiceType.value217: '217',
  ServiceType.value218: '218',
  ServiceType.value219: '219',
  ServiceType.value220: '220',
  ServiceType.value221: '221',
  ServiceType.value222: '222',
  ServiceType.value223: '223',
  ServiceType.value224: '224',
  ServiceType.value225: '225',
  ServiceType.value226: '226',
  ServiceType.value227: '227',
  ServiceType.value228: '228',
  ServiceType.value229: '229',
  ServiceType.value230: '230',
  ServiceType.value231: '231',
  ServiceType.value232: '232',
  ServiceType.value233: '233',
  ServiceType.value234: '234',
  ServiceType.value235: '235',
  ServiceType.value236: '236',
  ServiceType.value237: '237',
  ServiceType.value238: '238',
  ServiceType.value239: '239',
  ServiceType.value240: '240',
  ServiceType.value241: '241',
  ServiceType.value242: '242',
  ServiceType.value243: '243',
  ServiceType.value244: '244',
  ServiceType.value245: '245',
  ServiceType.value246: '246',
  ServiceType.value247: '247',
  ServiceType.value248: '248',
  ServiceType.value249: '249',
  ServiceType.value250: '250',
  ServiceType.value251: '251',
  ServiceType.value252: '252',
  ServiceType.value253: '253',
  ServiceType.value254: '254',
  ServiceType.value255: '255',
  ServiceType.value256: '256',
  ServiceType.value257: '257',
  ServiceType.value258: '258',
  ServiceType.value259: '259',
  ServiceType.value260: '260',
  ServiceType.value261: '261',
  ServiceType.value262: '262',
  ServiceType.value263: '263',
  ServiceType.value264: '264',
  ServiceType.value265: '265',
  ServiceType.value266: '266',
  ServiceType.value267: '267',
  ServiceType.value268: '268',
  ServiceType.value269: '269',
  ServiceType.value270: '270',
  ServiceType.value271: '271',
  ServiceType.value272: '272',
  ServiceType.value273: '273',
  ServiceType.value274: '274',
  ServiceType.value275: '275',
  ServiceType.value276: '276',
  ServiceType.value277: '277',
  ServiceType.value278: '278',
  ServiceType.value279: '279',
  ServiceType.value280: '280',
  ServiceType.value281: '281',
  ServiceType.value282: '282',
  ServiceType.value283: '283',
  ServiceType.value284: '284',
  ServiceType.value285: '285',
  ServiceType.value286: '286',
  ServiceType.value287: '287',
  ServiceType.value288: '288',
  ServiceType.value289: '289',
  ServiceType.value290: '290',
  ServiceType.value291: '291',
  ServiceType.value292: '292',
  ServiceType.value293: '293',
  ServiceType.value294: '294',
  ServiceType.value295: '295',
  ServiceType.value296: '296',
  ServiceType.value297: '297',
  ServiceType.value298: '298',
  ServiceType.value299: '299',
  ServiceType.value300: '300',
  ServiceType.value301: '301',
  ServiceType.value302: '302',
  ServiceType.value303: '303',
  ServiceType.value304: '304',
  ServiceType.value305: '305',
  ServiceType.value306: '306',
  ServiceType.value307: '307',
  ServiceType.value308: '308',
  ServiceType.value309: '309',
  ServiceType.value310: '310',
  ServiceType.value311: '311',
  ServiceType.value312: '312',
  ServiceType.value313: '313',
  ServiceType.value314: '314',
  ServiceType.value315: '315',
  ServiceType.value316: '316',
  ServiceType.value317: '317',
  ServiceType.value318: '318',
  ServiceType.value319: '319',
  ServiceType.value320: '320',
  ServiceType.value321: '321',
  ServiceType.value322: '322',
  ServiceType.value323: '323',
  ServiceType.value324: '324',
  ServiceType.value325: '325',
  ServiceType.value326: '326',
  ServiceType.value327: '327',
  ServiceType.value328: '328',
  ServiceType.value330: '330',
  ServiceType.value331: '331',
  ServiceType.value332: '332',
  ServiceType.value333: '333',
  ServiceType.value334: '334',
  ServiceType.value335: '335',
  ServiceType.value336: '336',
  ServiceType.value337: '337',
  ServiceType.value338: '338',
  ServiceType.value339: '339',
  ServiceType.value340: '340',
  ServiceType.value341: '341',
  ServiceType.value342: '342',
  ServiceType.value343: '343',
  ServiceType.value344: '344',
  ServiceType.value345: '345',
  ServiceType.value346: '346',
  ServiceType.value347: '347',
  ServiceType.value348: '348',
  ServiceType.value349: '349',
  ServiceType.value350: '350',
  ServiceType.value351: '351',
  ServiceType.value352: '352',
  ServiceType.value353: '353',
  ServiceType.value354: '354',
  ServiceType.value355: '355',
  ServiceType.value356: '356',
  ServiceType.value357: '357',
  ServiceType.value358: '358',
  ServiceType.value359: '359',
  ServiceType.value360: '360',
  ServiceType.value361: '361',
  ServiceType.value362: '362',
  ServiceType.value364: '364',
  ServiceType.value365: '365',
  ServiceType.value366: '366',
  ServiceType.value367: '367',
  ServiceType.value368: '368',
  ServiceType.value369: '369',
  ServiceType.value370: '370',
  ServiceType.value371: '371',
  ServiceType.value372: '372',
  ServiceType.value373: '373',
  ServiceType.value374: '374',
  ServiceType.value375: '375',
  ServiceType.value376: '376',
  ServiceType.value377: '377',
  ServiceType.value378: '378',
  ServiceType.value379: '379',
  ServiceType.value380: '380',
  ServiceType.value381: '381',
  ServiceType.value382: '382',
  ServiceType.value383: '383',
  ServiceType.value384: '384',
  ServiceType.value385: '385',
  ServiceType.value386: '386',
  ServiceType.value387: '387',
  ServiceType.value388: '388',
  ServiceType.value389: '389',
  ServiceType.value390: '390',
  ServiceType.value391: '391',
  ServiceType.value392: '392',
  ServiceType.value393: '393',
  ServiceType.value394: '394',
  ServiceType.value395: '395',
  ServiceType.value396: '396',
  ServiceType.value397: '397',
  ServiceType.value398: '398',
  ServiceType.value399: '399',
  ServiceType.value400: '400',
  ServiceType.value401: '401',
  ServiceType.value402: '402',
  ServiceType.value403: '403',
  ServiceType.value404: '404',
  ServiceType.value405: '405',
  ServiceType.value406: '406',
  ServiceType.value407: '407',
  ServiceType.value408: '408',
  ServiceType.value409: '409',
  ServiceType.value410: '410',
  ServiceType.value411: '411',
  ServiceType.value412: '412',
  ServiceType.value413: '413',
  ServiceType.value414: '414',
  ServiceType.value415: '415',
  ServiceType.value416: '416',
  ServiceType.value417: '417',
  ServiceType.value418: '418',
  ServiceType.value419: '419',
  ServiceType.value420: '420',
  ServiceType.value421: '421',
  ServiceType.value422: '422',
  ServiceType.value423: '423',
  ServiceType.value424: '424',
  ServiceType.value425: '425',
  ServiceType.value426: '426',
  ServiceType.value427: '427',
  ServiceType.value428: '428',
  ServiceType.value429: '429',
  ServiceType.value430: '430',
  ServiceType.value431: '431',
  ServiceType.value432: '432',
  ServiceType.value433: '433',
  ServiceType.value434: '434',
  ServiceType.value435: '435',
  ServiceType.value436: '436',
  ServiceType.value437: '437',
  ServiceType.value438: '438',
  ServiceType.value439: '439',
  ServiceType.value440: '440',
  ServiceType.value441: '441',
  ServiceType.value442: '442',
  ServiceType.value443: '443',
  ServiceType.value444: '444',
  ServiceType.value445: '445',
  ServiceType.value446: '446',
  ServiceType.value447: '447',
  ServiceType.value448: '448',
  ServiceType.value449: '449',
  ServiceType.value450: '450',
  ServiceType.value451: '451',
  ServiceType.value452: '452',
  ServiceType.value453: '453',
  ServiceType.value454: '454',
  ServiceType.value455: '455',
  ServiceType.value456: '456',
  ServiceType.value457: '457',
  ServiceType.value458: '458',
  ServiceType.value459: '459',
  ServiceType.value460: '460',
  ServiceType.value461: '461',
  ServiceType.value462: '462',
  ServiceType.value463: '463',
  ServiceType.value464: '464',
  ServiceType.value465: '465',
  ServiceType.value466: '466',
  ServiceType.value467: '467',
  ServiceType.value468: '468',
  ServiceType.value469: '469',
  ServiceType.value470: '470',
  ServiceType.value471: '471',
  ServiceType.value472: '472',
  ServiceType.value473: '473',
  ServiceType.value474: '474',
  ServiceType.value475: '475',
  ServiceType.value476: '476',
  ServiceType.value477: '477',
  ServiceType.value478: '478',
  ServiceType.value479: '479',
  ServiceType.value480: '480',
  ServiceType.value481: '481',
  ServiceType.value482: '482',
  ServiceType.value483: '483',
  ServiceType.value484: '484',
  ServiceType.value485: '485',
  ServiceType.value486: '486',
  ServiceType.value488: '488',
  ServiceType.value489: '489',
  ServiceType.value490: '490',
  ServiceType.value491: '491',
  ServiceType.value492: '492',
  ServiceType.value493: '493',
  ServiceType.value494: '494',
  ServiceType.value495: '495',
  ServiceType.value496: '496',
  ServiceType.value497: '497',
  ServiceType.value498: '498',
  ServiceType.value500: '500',
  ServiceType.value501: '501',
  ServiceType.value502: '502',
  ServiceType.value503: '503',
  ServiceType.value504: '504',
  ServiceType.value505: '505',
  ServiceType.value506: '506',
  ServiceType.value507: '507',
  ServiceType.value508: '508',
  ServiceType.value509: '509',
  ServiceType.value510: '510',
  ServiceType.value513: '513',
  ServiceType.value514: '514',
  ServiceType.value530: '530',
  ServiceType.value531: '531',
  ServiceType.value532: '532',
  ServiceType.value533: '533',
  ServiceType.value534: '534',
  ServiceType.value535: '535',
  ServiceType.value536: '536',
  ServiceType.value537: '537',
  ServiceType.value538: '538',
  ServiceType.value539: '539',
  ServiceType.value540: '540',
  ServiceType.value541: '541',
  ServiceType.value542: '542',
  ServiceType.value543: '543',
  ServiceType.value544: '544',
  ServiceType.value545: '545',
  ServiceType.value546: '546',
  ServiceType.value547: '547',
  ServiceType.value548: '548',
  ServiceType.value550: '550',
  ServiceType.value551: '551',
  ServiceType.value552: '552',
  ServiceType.value553: '553',
  ServiceType.value554: '554',
  ServiceType.value555: '555',
  ServiceType.value556: '556',
  ServiceType.value557: '557',
  ServiceType.value558: '558',
  ServiceType.value559: '559',
  ServiceType.value560: '560',
  ServiceType.value561: '561',
  ServiceType.value562: '562',
  ServiceType.value563: '563',
  ServiceType.value564: '564',
  ServiceType.value565: '565',
  ServiceType.value566: '566',
  ServiceType.value567: '567',
  ServiceType.value568: '568',
  ServiceType.value569: '569',
  ServiceType.value570: '570',
  ServiceType.value571: '571',
  ServiceType.value572: '572',
  ServiceType.value573: '573',
  ServiceType.value574: '574',
  ServiceType.value575: '575',
  ServiceType.value576: '576',
  ServiceType.value577: '577',
  ServiceType.value580: '580',
  ServiceType.value581: '581',
  ServiceType.value582: '582',
  ServiceType.value583: '583',
  ServiceType.value584: '584',
  ServiceType.value585: '585',
  ServiceType.value589: '589',
  ServiceType.value590: '590',
  ServiceType.value591: '591',
  ServiceType.value593: '593',
  ServiceType.value599: '599',
  ServiceType.value600: '600',
  ServiceType.value601: '601',
  ServiceType.value602: '602',
  ServiceType.value603: '603',
  ServiceType.value604: '604',
  ServiceType.value605: '605',
  ServiceType.value606: '606',
  ServiceType.value607: '607',
  ServiceType.value608: '608',
  ServiceType.value609: '609',
  ServiceType.value610: '610',
  ServiceType.value611: '611',
  ServiceType.value612: '612',
  ServiceType.value613: '613',
  ServiceType.value614: '614',
  ServiceType.value615: '615',
  ServiceType.value616: '616',
  ServiceType.value617: '617',
  ServiceType.value618: '618',
  ServiceType.value619: '619',
  ServiceType.value620: '620',
  ServiceType.value621: '621',
  ServiceType.value622: '622',
  ServiceType.value623: '623',
  ServiceType.value624: '624',
  ServiceType.value625: '625',
  ServiceType.value626: '626',
  ServiceType.value627: '627',
  ServiceType.value628: '628',
  ServiceType.value629: '629',
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

EncounterStatusHistory _$EncounterStatusHistoryFromJson(
        Map<String, dynamic> json) =>
    EncounterStatusHistory(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$EncounterStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
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

Map<String, dynamic> _$EncounterStatusHistoryToJson(
    EncounterStatusHistory instance) {
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
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  val['period'] = instance.period.toJson();
  return val;
}

EncounterClassHistory _$EncounterClassHistoryFromJson(
        Map<String, dynamic> json) =>
    EncounterClassHistory(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      class_: Coding.fromJson(json['class'] as Map<String, dynamic>),
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
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

Map<String, dynamic> _$EncounterClassHistoryToJson(
    EncounterClassHistory instance) {
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
  val['class'] = instance.class_.toJson();
  val['period'] = instance.period.toJson();
  return val;
}

EncounterParticipant _$EncounterParticipantFromJson(
        Map<String, dynamic> json) =>
    EncounterParticipant(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ParticipantTypeEnumMap, e))
          .toList(),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      individual: json['individual'] == null
          ? null
          : Reference.fromJson(json['individual'] as Map<String, dynamic>),
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

Map<String, dynamic> _$EncounterParticipantToJson(
    EncounterParticipant instance) {
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
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('individual', instance.individual?.toJson());
  return val;
}

const _$ParticipantTypeEnumMap = {
  ParticipantType.SPRF: 'SPRF',
  ParticipantType.PPRF: 'PPRF',
  ParticipantType.PART: 'PART',
  ParticipantType.translator: 'translator',
  ParticipantType.emergency: 'emergency',
};

EncounterDiagnosis _$EncounterDiagnosisFromJson(Map<String, dynamic> json) =>
    EncounterDiagnosis(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: Reference.fromJson(json['condition'] as Map<String, dynamic>),
      use: $enumDecodeNullable(_$DiagnosisRoleEnumMap, json['use']),
      rank:
          json['rank'] == null ? null : FhirPositiveInt.fromJson(json['rank']),
      rankElement: json['_rank'] == null
          ? null
          : Element.fromJson(json['_rank'] as Map<String, dynamic>),
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

Map<String, dynamic> _$EncounterDiagnosisToJson(EncounterDiagnosis instance) {
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
  val['condition'] = instance.condition.toJson();
  writeNotNull('use', instance.use?.toJson());
  writeNotNull('rank', instance.rank?.toJson());
  writeNotNull('_rank', instance.rankElement?.toJson());
  return val;
}

const _$DiagnosisRoleEnumMap = {
  DiagnosisRole.AD: 'AD',
  DiagnosisRole.DD: 'DD',
  DiagnosisRole.CC: 'CC',
  DiagnosisRole.CM: 'CM',
  DiagnosisRole.pre_op: 'pre-op',
  DiagnosisRole.post_op: 'post-op',
  DiagnosisRole.billing: 'billing',
};

EncounterHospitalization _$EncounterHospitalizationFromJson(
        Map<String, dynamic> json) =>
    EncounterHospitalization(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      preAdmissionIdentifier: json['preAdmissionIdentifier'] == null
          ? null
          : Identifier.fromJson(
              json['preAdmissionIdentifier'] as Map<String, dynamic>),
      origin: json['origin'] == null
          ? null
          : Reference.fromJson(json['origin'] as Map<String, dynamic>),
      admitSource:
          $enumDecodeNullable(_$AdmitSourceEnumMap, json['admitSource']),
      reAdmission: json['reAdmission'] == null
          ? null
          : CodeableConcept.fromJson(
              json['reAdmission'] as Map<String, dynamic>),
      dietPreference: (json['dietPreference'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DietEnumMap, e))
          .toList(),
      specialCourtesy: (json['specialCourtesy'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SpecialCourtesyEnumMap, e))
          .toList(),
      specialArrangement: (json['specialArrangement'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SpecialArrangementsEnumMap, e))
          .toList(),
      destination: json['destination'] == null
          ? null
          : Reference.fromJson(json['destination'] as Map<String, dynamic>),
      dischargeDisposition: $enumDecodeNullable(
          _$DischargeDispositionEnumMap, json['dischargeDisposition']),
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

Map<String, dynamic> _$EncounterHospitalizationToJson(
    EncounterHospitalization instance) {
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
      'preAdmissionIdentifier', instance.preAdmissionIdentifier?.toJson());
  writeNotNull('origin', instance.origin?.toJson());
  writeNotNull('admitSource', instance.admitSource?.toJson());
  writeNotNull('reAdmission', instance.reAdmission?.toJson());
  writeNotNull('dietPreference',
      instance.dietPreference?.map((e) => e.toJson()).toList());
  writeNotNull('specialCourtesy',
      instance.specialCourtesy?.map((e) => e.toJson()).toList());
  writeNotNull('specialArrangement',
      instance.specialArrangement?.map((e) => e.toJson()).toList());
  writeNotNull('destination', instance.destination?.toJson());
  writeNotNull('dischargeDisposition', instance.dischargeDisposition?.toJson());
  return val;
}

const _$AdmitSourceEnumMap = {
  AdmitSource.hosp_trans: 'hosp-trans',
  AdmitSource.emd: 'emd',
  AdmitSource.outp: 'outp',
  AdmitSource.born: 'born',
  AdmitSource.gp: 'gp',
  AdmitSource.mp: 'mp',
  AdmitSource.nursing: 'nursing',
  AdmitSource.psych: 'psych',
  AdmitSource.rehab: 'rehab',
  AdmitSource.other: 'other',
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

const _$SpecialCourtesyEnumMap = {
  SpecialCourtesy.EXT: 'EXT',
  SpecialCourtesy.NRM: 'NRM',
  SpecialCourtesy.PRF: 'PRF',
  SpecialCourtesy.STF: 'STF',
  SpecialCourtesy.VIP: 'VIP',
  SpecialCourtesy.UNK: 'UNK',
};

const _$SpecialArrangementsEnumMap = {
  SpecialArrangements.wheel: 'wheel',
  SpecialArrangements.add_bed: 'add-bed',
  SpecialArrangements.int: 'int',
  SpecialArrangements.att: 'att',
  SpecialArrangements.dog: 'dog',
};

const _$DischargeDispositionEnumMap = {
  DischargeDisposition.home: 'home',
  DischargeDisposition.alt_home: 'alt-home',
  DischargeDisposition.other_hcf: 'other-hcf',
  DischargeDisposition.hosp: 'hosp',
  DischargeDisposition.long: 'long',
  DischargeDisposition.aadvice: 'aadvice',
  DischargeDisposition.exp: 'exp',
  DischargeDisposition.psy: 'psy',
  DischargeDisposition.rehab: 'rehab',
  DischargeDisposition.snf: 'snf',
  DischargeDisposition.oth: 'oth',
};

EncounterLocation _$EncounterLocationFromJson(Map<String, dynamic> json) =>
    EncounterLocation(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: Reference.fromJson(json['location'] as Map<String, dynamic>),
      status:
          $enumDecodeNullable(_$EncounterLocationStatusEnumMap, json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      physicalType:
          $enumDecodeNullable(_$LocationTypeEnumMap, json['physicalType']),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
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

Map<String, dynamic> _$EncounterLocationToJson(EncounterLocation instance) {
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
  val['location'] = instance.location.toJson();
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('physicalType', instance.physicalType?.toJson());
  writeNotNull('period', instance.period?.toJson());
  return val;
}

const _$EncounterLocationStatusEnumMap = {
  EncounterLocationStatus.planned: 'planned',
  EncounterLocationStatus.active: 'active',
  EncounterLocationStatus.reserved: 'reserved',
  EncounterLocationStatus.completed: 'completed',
};

const _$LocationTypeEnumMap = {
  LocationType.si: 'si',
  LocationType.bu: 'bu',
  LocationType.wi: 'wi',
  LocationType.wa: 'wa',
  LocationType.lvl: 'lvl',
  LocationType.co: 'co',
  LocationType.ro: 'ro',
  LocationType.bd: 'bd',
  LocationType.ve: 've',
  LocationType.ho: 'ho',
  LocationType.ca: 'ca',
  LocationType.rd: 'rd',
  LocationType.area: 'area',
  LocationType.jdn: 'jdn',
};
