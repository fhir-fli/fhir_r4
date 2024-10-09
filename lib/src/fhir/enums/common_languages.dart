import 'package:json_annotation/json_annotation.dart';

/// This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)
enum CommonLanguages {
  /// Display: Arabic
  @JsonValue('ar')
  ar,

  /// Display: Bengali
  @JsonValue('bn')
  bn,

  /// Display: Czech
  @JsonValue('cs')
  cs,

  /// Display: Danish
  @JsonValue('da')
  da,

  /// Display: German
  @JsonValue('de')
  de,

  /// Display: German (Austria)
  @JsonValue('de-AT')
  de_AT,

  /// Display: German (Switzerland)
  @JsonValue('de-CH')
  de_CH,

  /// Display: German (Germany)
  @JsonValue('de-DE')
  de_DE,

  /// Display: Greek
  @JsonValue('el')
  el,

  /// Display: English
  @JsonValue('en')
  en,

  /// Display: English (Australia)
  @JsonValue('en-AU')
  en_AU,

  /// Display: English (Canada)
  @JsonValue('en-CA')
  en_CA,

  /// Display: English (Great Britain)
  @JsonValue('en-GB')
  en_GB,

  /// Display: English (India)
  @JsonValue('en-IN')
  en_IN,

  /// Display: English (New Zeland)
  @JsonValue('en-NZ')
  en_NZ,

  /// Display: English (Singapore)
  @JsonValue('en-SG')
  en_SG,

  /// Display: English (United States)
  @JsonValue('en-US')
  en_US,

  /// Display: Spanish
  @JsonValue('es')
  es,

  /// Display: Spanish (Argentina)
  @JsonValue('es-AR')
  es_AR,

  /// Display: Spanish (Spain)
  @JsonValue('es-ES')
  es_ES,

  /// Display: Spanish (Uruguay)
  @JsonValue('es-UY')
  es_UY,

  /// Display: Finnish
  @JsonValue('fi')
  fi,

  /// Display: French
  @JsonValue('fr')
  fr,

  /// Display: French (Belgium)
  @JsonValue('fr-BE')
  fr_BE,

  /// Display: French (Switzerland)
  @JsonValue('fr-CH')
  fr_CH,

  /// Display: French (France)
  @JsonValue('fr-FR')
  fr_FR,

  /// Display: Frysian
  @JsonValue('fy')
  fy,

  /// Display: Frysian (Netherlands)
  @JsonValue('fy-NL')
  fy_NL,

  /// Display: Hindi
  @JsonValue('hi')
  hi,

  /// Display: Croatian
  @JsonValue('hr')
  hr,

  /// Display: Italian
  @JsonValue('it')
  it,

  /// Display: Italian (Switzerland)
  @JsonValue('it-CH')
  it_CH,

  /// Display: Italian (Italy)
  @JsonValue('it-IT')
  it_IT,

  /// Display: Japanese
  @JsonValue('ja')
  ja,

  /// Display: Korean
  @JsonValue('ko')
  ko,

  /// Display: Dutch
  @JsonValue('nl')
  nl,

  /// Display: Dutch (Belgium)
  @JsonValue('nl-BE')
  nl_BE,

  /// Display: Dutch (Netherlands)
  @JsonValue('nl-NL')
  nl_NL,

  /// Display: Norwegian
  @JsonValue('no')
  no,

  /// Display: Norwegian (Norway)
  @JsonValue('no-NO')
  no_NO,

  /// Display: Punjabi
  @JsonValue('pa')
  pa,

  /// Display: Polish
  @JsonValue('pl')
  pl,

  /// Display: Portuguese
  @JsonValue('pt')
  pt,

  /// Display: Portuguese (Brazil)
  @JsonValue('pt-BR')
  pt_BR,

  /// Display: Russian
  @JsonValue('ru')
  ru,

  /// Display: Russian (Russia)
  @JsonValue('ru-RU')
  ru_RU,

  /// Display: Serbian
  @JsonValue('sr')
  sr,

  /// Display: Serbian (Serbia)
  @JsonValue('sr-RS')
  sr_RS,

  /// Display: Swedish
  @JsonValue('sv')
  sv,

  /// Display: Swedish (Sweden)
  @JsonValue('sv-SE')
  sv_SE,

  /// Display: Telegu
  @JsonValue('te')
  te,

  /// Display: Chinese
  @JsonValue('zh')
  zh,

  /// Display: Chinese (China)
  @JsonValue('zh-CN')
  zh_CN,

  /// Display: Chinese (Hong Kong)
  @JsonValue('zh-HK')
  zh_HK,

  /// Display: Chinese (Singapore)
  @JsonValue('zh-SG')
  zh_SG,

  /// Display: Chinese (Taiwan)
  @JsonValue('zh-TW')
  zh_TW,
  ;

  @override
  String toString() {
    switch (this) {
      case ar:
        return 'ar';
      case bn:
        return 'bn';
      case cs:
        return 'cs';
      case da:
        return 'da';
      case de:
        return 'de';
      case de_AT:
        return 'de-AT';
      case de_CH:
        return 'de-CH';
      case de_DE:
        return 'de-DE';
      case el:
        return 'el';
      case en:
        return 'en';
      case en_AU:
        return 'en-AU';
      case en_CA:
        return 'en-CA';
      case en_GB:
        return 'en-GB';
      case en_IN:
        return 'en-IN';
      case en_NZ:
        return 'en-NZ';
      case en_SG:
        return 'en-SG';
      case en_US:
        return 'en-US';
      case es:
        return 'es';
      case es_AR:
        return 'es-AR';
      case es_ES:
        return 'es-ES';
      case es_UY:
        return 'es-UY';
      case fi:
        return 'fi';
      case fr:
        return 'fr';
      case fr_BE:
        return 'fr-BE';
      case fr_CH:
        return 'fr-CH';
      case fr_FR:
        return 'fr-FR';
      case fy:
        return 'fy';
      case fy_NL:
        return 'fy-NL';
      case hi:
        return 'hi';
      case hr:
        return 'hr';
      case it:
        return 'it';
      case it_CH:
        return 'it-CH';
      case it_IT:
        return 'it-IT';
      case ja:
        return 'ja';
      case ko:
        return 'ko';
      case nl:
        return 'nl';
      case nl_BE:
        return 'nl-BE';
      case nl_NL:
        return 'nl-NL';
      case no:
        return 'no';
      case no_NO:
        return 'no-NO';
      case pa:
        return 'pa';
      case pl:
        return 'pl';
      case pt:
        return 'pt';
      case pt_BR:
        return 'pt-BR';
      case ru:
        return 'ru';
      case ru_RU:
        return 'ru-RU';
      case sr:
        return 'sr';
      case sr_RS:
        return 'sr-RS';
      case sv:
        return 'sv';
      case sv_SE:
        return 'sv-SE';
      case te:
        return 'te';
      case zh:
        return 'zh';
      case zh_CN:
        return 'zh-CN';
      case zh_HK:
        return 'zh-HK';
      case zh_SG:
        return 'zh-SG';
      case zh_TW:
        return 'zh-TW';
    }
  }

  String toJson() => toString();
  static CommonLanguages fromString(String str) {
    switch (str) {
      case 'ar':
        return CommonLanguages.ar;
      case 'bn':
        return CommonLanguages.bn;
      case 'cs':
        return CommonLanguages.cs;
      case 'da':
        return CommonLanguages.da;
      case 'de':
        return CommonLanguages.de;
      case 'de-AT':
        return CommonLanguages.de_AT;
      case 'de-CH':
        return CommonLanguages.de_CH;
      case 'de-DE':
        return CommonLanguages.de_DE;
      case 'el':
        return CommonLanguages.el;
      case 'en':
        return CommonLanguages.en;
      case 'en-AU':
        return CommonLanguages.en_AU;
      case 'en-CA':
        return CommonLanguages.en_CA;
      case 'en-GB':
        return CommonLanguages.en_GB;
      case 'en-IN':
        return CommonLanguages.en_IN;
      case 'en-NZ':
        return CommonLanguages.en_NZ;
      case 'en-SG':
        return CommonLanguages.en_SG;
      case 'en-US':
        return CommonLanguages.en_US;
      case 'es':
        return CommonLanguages.es;
      case 'es-AR':
        return CommonLanguages.es_AR;
      case 'es-ES':
        return CommonLanguages.es_ES;
      case 'es-UY':
        return CommonLanguages.es_UY;
      case 'fi':
        return CommonLanguages.fi;
      case 'fr':
        return CommonLanguages.fr;
      case 'fr-BE':
        return CommonLanguages.fr_BE;
      case 'fr-CH':
        return CommonLanguages.fr_CH;
      case 'fr-FR':
        return CommonLanguages.fr_FR;
      case 'fy':
        return CommonLanguages.fy;
      case 'fy-NL':
        return CommonLanguages.fy_NL;
      case 'hi':
        return CommonLanguages.hi;
      case 'hr':
        return CommonLanguages.hr;
      case 'it':
        return CommonLanguages.it;
      case 'it-CH':
        return CommonLanguages.it_CH;
      case 'it-IT':
        return CommonLanguages.it_IT;
      case 'ja':
        return CommonLanguages.ja;
      case 'ko':
        return CommonLanguages.ko;
      case 'nl':
        return CommonLanguages.nl;
      case 'nl-BE':
        return CommonLanguages.nl_BE;
      case 'nl-NL':
        return CommonLanguages.nl_NL;
      case 'no':
        return CommonLanguages.no;
      case 'no-NO':
        return CommonLanguages.no_NO;
      case 'pa':
        return CommonLanguages.pa;
      case 'pl':
        return CommonLanguages.pl;
      case 'pt':
        return CommonLanguages.pt;
      case 'pt-BR':
        return CommonLanguages.pt_BR;
      case 'ru':
        return CommonLanguages.ru;
      case 'ru-RU':
        return CommonLanguages.ru_RU;
      case 'sr':
        return CommonLanguages.sr;
      case 'sr-RS':
        return CommonLanguages.sr_RS;
      case 'sv':
        return CommonLanguages.sv;
      case 'sv-SE':
        return CommonLanguages.sv_SE;
      case 'te':
        return CommonLanguages.te;
      case 'zh':
        return CommonLanguages.zh;
      case 'zh-CN':
        return CommonLanguages.zh_CN;
      case 'zh-HK':
        return CommonLanguages.zh_HK;
      case 'zh-SG':
        return CommonLanguages.zh_SG;
      case 'zh-TW':
        return CommonLanguages.zh_TW;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CommonLanguages fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
