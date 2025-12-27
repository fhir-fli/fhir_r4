part of '../primitive_types.dart';

/// Actual enum for CommonLanguages
enum CommonLanguagesEnum {
  /// ar
  ar,

  /// bn
  bn,

  /// cs
  cs,

  /// da
  da,

  /// de
  de,

  /// de-AT
  deAt,

  /// de-CH
  deCh,

  /// de-DE
  deDe,

  /// el
  el,

  /// en
  en,

  /// en-AU
  enAu,

  /// en-CA
  enCa,

  /// en-GB
  enGb,

  /// en-IN
  enIn,

  /// en-NZ
  enNz,

  /// en-SG
  enSg,

  /// en-US
  enUs,

  /// es
  es,

  /// es-AR
  esAr,

  /// es-ES
  esEs,

  /// es-UY
  esUy,

  /// fi
  fi,

  /// fr
  fr,

  /// fr-BE
  frBe,

  /// fr-CH
  frCh,

  /// fr-FR
  frFr,

  /// fy
  fy,

  /// fy-NL
  fyNl,

  /// hi
  hi,

  /// hr
  hr,

  /// it
  it,

  /// it-CH
  itCh,

  /// it-IT
  itIt,

  /// ja
  ja,

  /// ko
  ko,

  /// nl
  nl,

  /// nl-BE
  nlBe,

  /// nl-NL
  nlNl,

  /// no
  no,

  /// no-NO
  noNo,

  /// pa
  pa,

  /// pl
  pl,

  /// pt
  pt,

  /// pt-BR
  ptBr,

  /// ru
  ru,

  /// ru-RU
  ruRu,

  /// sr
  sr,

  /// sr-RS
  srRs,

  /// sv
  sv,

  /// sv-SE
  svSe,

  /// te
  te,

  /// zh
  zh,

  /// zh-CN
  zhCn,

  /// zh-HK
  zhHk,

  /// zh-SG
  zhSg,

  /// zh-TW
  zhTw,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CommonLanguagesEnum.ar:
        return 'ar';
      case CommonLanguagesEnum.bn:
        return 'bn';
      case CommonLanguagesEnum.cs:
        return 'cs';
      case CommonLanguagesEnum.da:
        return 'da';
      case CommonLanguagesEnum.de:
        return 'de';
      case CommonLanguagesEnum.deAt:
        return 'de-AT';
      case CommonLanguagesEnum.deCh:
        return 'de-CH';
      case CommonLanguagesEnum.deDe:
        return 'de-DE';
      case CommonLanguagesEnum.el:
        return 'el';
      case CommonLanguagesEnum.en:
        return 'en';
      case CommonLanguagesEnum.enAu:
        return 'en-AU';
      case CommonLanguagesEnum.enCa:
        return 'en-CA';
      case CommonLanguagesEnum.enGb:
        return 'en-GB';
      case CommonLanguagesEnum.enIn:
        return 'en-IN';
      case CommonLanguagesEnum.enNz:
        return 'en-NZ';
      case CommonLanguagesEnum.enSg:
        return 'en-SG';
      case CommonLanguagesEnum.enUs:
        return 'en-US';
      case CommonLanguagesEnum.es:
        return 'es';
      case CommonLanguagesEnum.esAr:
        return 'es-AR';
      case CommonLanguagesEnum.esEs:
        return 'es-ES';
      case CommonLanguagesEnum.esUy:
        return 'es-UY';
      case CommonLanguagesEnum.fi:
        return 'fi';
      case CommonLanguagesEnum.fr:
        return 'fr';
      case CommonLanguagesEnum.frBe:
        return 'fr-BE';
      case CommonLanguagesEnum.frCh:
        return 'fr-CH';
      case CommonLanguagesEnum.frFr:
        return 'fr-FR';
      case CommonLanguagesEnum.fy:
        return 'fy';
      case CommonLanguagesEnum.fyNl:
        return 'fy-NL';
      case CommonLanguagesEnum.hi:
        return 'hi';
      case CommonLanguagesEnum.hr:
        return 'hr';
      case CommonLanguagesEnum.it:
        return 'it';
      case CommonLanguagesEnum.itCh:
        return 'it-CH';
      case CommonLanguagesEnum.itIt:
        return 'it-IT';
      case CommonLanguagesEnum.ja:
        return 'ja';
      case CommonLanguagesEnum.ko:
        return 'ko';
      case CommonLanguagesEnum.nl:
        return 'nl';
      case CommonLanguagesEnum.nlBe:
        return 'nl-BE';
      case CommonLanguagesEnum.nlNl:
        return 'nl-NL';
      case CommonLanguagesEnum.no:
        return 'no';
      case CommonLanguagesEnum.noNo:
        return 'no-NO';
      case CommonLanguagesEnum.pa:
        return 'pa';
      case CommonLanguagesEnum.pl:
        return 'pl';
      case CommonLanguagesEnum.pt:
        return 'pt';
      case CommonLanguagesEnum.ptBr:
        return 'pt-BR';
      case CommonLanguagesEnum.ru:
        return 'ru';
      case CommonLanguagesEnum.ruRu:
        return 'ru-RU';
      case CommonLanguagesEnum.sr:
        return 'sr';
      case CommonLanguagesEnum.srRs:
        return 'sr-RS';
      case CommonLanguagesEnum.sv:
        return 'sv';
      case CommonLanguagesEnum.svSe:
        return 'sv-SE';
      case CommonLanguagesEnum.te:
        return 'te';
      case CommonLanguagesEnum.zh:
        return 'zh';
      case CommonLanguagesEnum.zhCn:
        return 'zh-CN';
      case CommonLanguagesEnum.zhHk:
        return 'zh-HK';
      case CommonLanguagesEnum.zhSg:
        return 'zh-SG';
      case CommonLanguagesEnum.zhTw:
        return 'zh-TW';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CommonLanguagesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CommonLanguagesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CommonLanguagesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'ar':
        return CommonLanguagesEnum.ar;
      case 'bn':
        return CommonLanguagesEnum.bn;
      case 'cs':
        return CommonLanguagesEnum.cs;
      case 'da':
        return CommonLanguagesEnum.da;
      case 'de':
        return CommonLanguagesEnum.de;
      case 'de-AT':
        return CommonLanguagesEnum.deAt;
      case 'de-CH':
        return CommonLanguagesEnum.deCh;
      case 'de-DE':
        return CommonLanguagesEnum.deDe;
      case 'el':
        return CommonLanguagesEnum.el;
      case 'en':
        return CommonLanguagesEnum.en;
      case 'en-AU':
        return CommonLanguagesEnum.enAu;
      case 'en-CA':
        return CommonLanguagesEnum.enCa;
      case 'en-GB':
        return CommonLanguagesEnum.enGb;
      case 'en-IN':
        return CommonLanguagesEnum.enIn;
      case 'en-NZ':
        return CommonLanguagesEnum.enNz;
      case 'en-SG':
        return CommonLanguagesEnum.enSg;
      case 'en-US':
        return CommonLanguagesEnum.enUs;
      case 'es':
        return CommonLanguagesEnum.es;
      case 'es-AR':
        return CommonLanguagesEnum.esAr;
      case 'es-ES':
        return CommonLanguagesEnum.esEs;
      case 'es-UY':
        return CommonLanguagesEnum.esUy;
      case 'fi':
        return CommonLanguagesEnum.fi;
      case 'fr':
        return CommonLanguagesEnum.fr;
      case 'fr-BE':
        return CommonLanguagesEnum.frBe;
      case 'fr-CH':
        return CommonLanguagesEnum.frCh;
      case 'fr-FR':
        return CommonLanguagesEnum.frFr;
      case 'fy':
        return CommonLanguagesEnum.fy;
      case 'fy-NL':
        return CommonLanguagesEnum.fyNl;
      case 'hi':
        return CommonLanguagesEnum.hi;
      case 'hr':
        return CommonLanguagesEnum.hr;
      case 'it':
        return CommonLanguagesEnum.it;
      case 'it-CH':
        return CommonLanguagesEnum.itCh;
      case 'it-IT':
        return CommonLanguagesEnum.itIt;
      case 'ja':
        return CommonLanguagesEnum.ja;
      case 'ko':
        return CommonLanguagesEnum.ko;
      case 'nl':
        return CommonLanguagesEnum.nl;
      case 'nl-BE':
        return CommonLanguagesEnum.nlBe;
      case 'nl-NL':
        return CommonLanguagesEnum.nlNl;
      case 'no':
        return CommonLanguagesEnum.no;
      case 'no-NO':
        return CommonLanguagesEnum.noNo;
      case 'pa':
        return CommonLanguagesEnum.pa;
      case 'pl':
        return CommonLanguagesEnum.pl;
      case 'pt':
        return CommonLanguagesEnum.pt;
      case 'pt-BR':
        return CommonLanguagesEnum.ptBr;
      case 'ru':
        return CommonLanguagesEnum.ru;
      case 'ru-RU':
        return CommonLanguagesEnum.ruRu;
      case 'sr':
        return CommonLanguagesEnum.sr;
      case 'sr-RS':
        return CommonLanguagesEnum.srRs;
      case 'sv':
        return CommonLanguagesEnum.sv;
      case 'sv-SE':
        return CommonLanguagesEnum.svSe;
      case 'te':
        return CommonLanguagesEnum.te;
      case 'zh':
        return CommonLanguagesEnum.zh;
      case 'zh-CN':
        return CommonLanguagesEnum.zhCn;
      case 'zh-HK':
        return CommonLanguagesEnum.zhHk;
      case 'zh-SG':
        return CommonLanguagesEnum.zhSg;
      case 'zh-TW':
        return CommonLanguagesEnum.zhTw;
    }
    return null;
  }
}

/// This value set includes common codes from BCP-47
/// (http://tools.ietf.org/html/bcp47)
class CommonLanguages extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CommonLanguages._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CommonLanguages(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = CommonLanguagesEnum.fromString(valueString);
    return CommonLanguages._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [CommonLanguages]
  /// from JSON.
  factory CommonLanguages.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CommonLanguagesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguages._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonLanguages cannot be constructed from JSON.',
      );
    }
    return CommonLanguages._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CommonLanguages
  final CommonLanguagesEnum? valueEnum;

  /// ar
  static const CommonLanguages ar = CommonLanguages._(
    valueString: 'ar',
    valueEnum: CommonLanguagesEnum.ar,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Arabic',
    ),
  );

  /// bn
  static const CommonLanguages bn = CommonLanguages._(
    valueString: 'bn',
    valueEnum: CommonLanguagesEnum.bn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Bengali',
    ),
  );

  /// cs
  static const CommonLanguages cs = CommonLanguages._(
    valueString: 'cs',
    valueEnum: CommonLanguagesEnum.cs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Czech',
    ),
  );

  /// da
  static const CommonLanguages da = CommonLanguages._(
    valueString: 'da',
    valueEnum: CommonLanguagesEnum.da,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Danish',
    ),
  );

  /// de
  static const CommonLanguages de = CommonLanguages._(
    valueString: 'de',
    valueEnum: CommonLanguagesEnum.de,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'German',
    ),
  );

  /// de_AT
  static const CommonLanguages deAt = CommonLanguages._(
    valueString: 'de-AT',
    valueEnum: CommonLanguagesEnum.deAt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'German (Austria)',
    ),
  );

  /// de_CH
  static const CommonLanguages deCh = CommonLanguages._(
    valueString: 'de-CH',
    valueEnum: CommonLanguagesEnum.deCh,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'German (Switzerland)',
    ),
  );

  /// de_DE
  static const CommonLanguages deDe = CommonLanguages._(
    valueString: 'de-DE',
    valueEnum: CommonLanguagesEnum.deDe,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'German (Germany)',
    ),
  );

  /// el
  static const CommonLanguages el = CommonLanguages._(
    valueString: 'el',
    valueEnum: CommonLanguagesEnum.el,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Greek',
    ),
  );

  /// en
  static const CommonLanguages en = CommonLanguages._(
    valueString: 'en',
    valueEnum: CommonLanguagesEnum.en,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English',
    ),
  );

  /// en_AU
  static const CommonLanguages enAu = CommonLanguages._(
    valueString: 'en-AU',
    valueEnum: CommonLanguagesEnum.enAu,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (Australia)',
    ),
  );

  /// en_CA
  static const CommonLanguages enCa = CommonLanguages._(
    valueString: 'en-CA',
    valueEnum: CommonLanguagesEnum.enCa,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (Canada)',
    ),
  );

  /// en_GB
  static const CommonLanguages enGb = CommonLanguages._(
    valueString: 'en-GB',
    valueEnum: CommonLanguagesEnum.enGb,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (Great Britain)',
    ),
  );

  /// en_IN
  static const CommonLanguages enIn = CommonLanguages._(
    valueString: 'en-IN',
    valueEnum: CommonLanguagesEnum.enIn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (India)',
    ),
  );

  /// en_NZ
  static const CommonLanguages enNz = CommonLanguages._(
    valueString: 'en-NZ',
    valueEnum: CommonLanguagesEnum.enNz,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (New Zeland)',
    ),
  );

  /// en_SG
  static const CommonLanguages enSg = CommonLanguages._(
    valueString: 'en-SG',
    valueEnum: CommonLanguagesEnum.enSg,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (Singapore)',
    ),
  );

  /// en_US
  static const CommonLanguages enUs = CommonLanguages._(
    valueString: 'en-US',
    valueEnum: CommonLanguagesEnum.enUs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'English (United States)',
    ),
  );

  /// es
  static const CommonLanguages es = CommonLanguages._(
    valueString: 'es',
    valueEnum: CommonLanguagesEnum.es,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Spanish',
    ),
  );

  /// es_AR
  static const CommonLanguages esAr = CommonLanguages._(
    valueString: 'es-AR',
    valueEnum: CommonLanguagesEnum.esAr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Spanish (Argentina)',
    ),
  );

  /// es_ES
  static const CommonLanguages esEs = CommonLanguages._(
    valueString: 'es-ES',
    valueEnum: CommonLanguagesEnum.esEs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Spanish (Spain)',
    ),
  );

  /// es_UY
  static const CommonLanguages esUy = CommonLanguages._(
    valueString: 'es-UY',
    valueEnum: CommonLanguagesEnum.esUy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Spanish (Uruguay)',
    ),
  );

  /// fi
  static const CommonLanguages fi = CommonLanguages._(
    valueString: 'fi',
    valueEnum: CommonLanguagesEnum.fi,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Finnish',
    ),
  );

  /// fr
  static const CommonLanguages fr = CommonLanguages._(
    valueString: 'fr',
    valueEnum: CommonLanguagesEnum.fr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'French',
    ),
  );

  /// fr_BE
  static const CommonLanguages frBe = CommonLanguages._(
    valueString: 'fr-BE',
    valueEnum: CommonLanguagesEnum.frBe,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'French (Belgium)',
    ),
  );

  /// fr_CH
  static const CommonLanguages frCh = CommonLanguages._(
    valueString: 'fr-CH',
    valueEnum: CommonLanguagesEnum.frCh,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'French (Switzerland)',
    ),
  );

  /// fr_FR
  static const CommonLanguages frFr = CommonLanguages._(
    valueString: 'fr-FR',
    valueEnum: CommonLanguagesEnum.frFr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'French (France)',
    ),
  );

  /// fy
  static const CommonLanguages fy = CommonLanguages._(
    valueString: 'fy',
    valueEnum: CommonLanguagesEnum.fy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Frysian',
    ),
  );

  /// fy_NL
  static const CommonLanguages fyNl = CommonLanguages._(
    valueString: 'fy-NL',
    valueEnum: CommonLanguagesEnum.fyNl,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Frysian (Netherlands)',
    ),
  );

  /// hi
  static const CommonLanguages hi = CommonLanguages._(
    valueString: 'hi',
    valueEnum: CommonLanguagesEnum.hi,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Hindi',
    ),
  );

  /// hr
  static const CommonLanguages hr = CommonLanguages._(
    valueString: 'hr',
    valueEnum: CommonLanguagesEnum.hr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Croatian',
    ),
  );

  /// it
  static const CommonLanguages it = CommonLanguages._(
    valueString: 'it',
    valueEnum: CommonLanguagesEnum.it,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Italian',
    ),
  );

  /// it_CH
  static const CommonLanguages itCh = CommonLanguages._(
    valueString: 'it-CH',
    valueEnum: CommonLanguagesEnum.itCh,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Italian (Switzerland)',
    ),
  );

  /// it_IT
  static const CommonLanguages itIt = CommonLanguages._(
    valueString: 'it-IT',
    valueEnum: CommonLanguagesEnum.itIt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Italian (Italy)',
    ),
  );

  /// ja
  static const CommonLanguages ja = CommonLanguages._(
    valueString: 'ja',
    valueEnum: CommonLanguagesEnum.ja,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Japanese',
    ),
  );

  /// ko
  static const CommonLanguages ko = CommonLanguages._(
    valueString: 'ko',
    valueEnum: CommonLanguagesEnum.ko,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Korean',
    ),
  );

  /// nl
  static const CommonLanguages nl = CommonLanguages._(
    valueString: 'nl',
    valueEnum: CommonLanguagesEnum.nl,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Dutch',
    ),
  );

  /// nl_BE
  static const CommonLanguages nlBe = CommonLanguages._(
    valueString: 'nl-BE',
    valueEnum: CommonLanguagesEnum.nlBe,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Dutch (Belgium)',
    ),
  );

  /// nl_NL
  static const CommonLanguages nlNl = CommonLanguages._(
    valueString: 'nl-NL',
    valueEnum: CommonLanguagesEnum.nlNl,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Dutch (Netherlands)',
    ),
  );

  /// no
  static const CommonLanguages no = CommonLanguages._(
    valueString: 'no',
    valueEnum: CommonLanguagesEnum.no,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Norwegian',
    ),
  );

  /// no_NO
  static const CommonLanguages noNo = CommonLanguages._(
    valueString: 'no-NO',
    valueEnum: CommonLanguagesEnum.noNo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Norwegian (Norway)',
    ),
  );

  /// pa
  static const CommonLanguages pa = CommonLanguages._(
    valueString: 'pa',
    valueEnum: CommonLanguagesEnum.pa,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Punjabi',
    ),
  );

  /// pl
  static const CommonLanguages pl = CommonLanguages._(
    valueString: 'pl',
    valueEnum: CommonLanguagesEnum.pl,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Polish',
    ),
  );

  /// pt
  static const CommonLanguages pt = CommonLanguages._(
    valueString: 'pt',
    valueEnum: CommonLanguagesEnum.pt,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Portuguese',
    ),
  );

  /// pt_BR
  static const CommonLanguages ptBr = CommonLanguages._(
    valueString: 'pt-BR',
    valueEnum: CommonLanguagesEnum.ptBr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Portuguese (Brazil)',
    ),
  );

  /// ru
  static const CommonLanguages ru = CommonLanguages._(
    valueString: 'ru',
    valueEnum: CommonLanguagesEnum.ru,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Russian',
    ),
  );

  /// ru_RU
  static const CommonLanguages ruRu = CommonLanguages._(
    valueString: 'ru-RU',
    valueEnum: CommonLanguagesEnum.ruRu,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Russian (Russia)',
    ),
  );

  /// sr
  static const CommonLanguages sr = CommonLanguages._(
    valueString: 'sr',
    valueEnum: CommonLanguagesEnum.sr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Serbian',
    ),
  );

  /// sr_RS
  static const CommonLanguages srRs = CommonLanguages._(
    valueString: 'sr-RS',
    valueEnum: CommonLanguagesEnum.srRs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Serbian (Serbia)',
    ),
  );

  /// sv
  static const CommonLanguages sv = CommonLanguages._(
    valueString: 'sv',
    valueEnum: CommonLanguagesEnum.sv,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Swedish',
    ),
  );

  /// sv_SE
  static const CommonLanguages svSe = CommonLanguages._(
    valueString: 'sv-SE',
    valueEnum: CommonLanguagesEnum.svSe,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Swedish (Sweden)',
    ),
  );

  /// te
  static const CommonLanguages te = CommonLanguages._(
    valueString: 'te',
    valueEnum: CommonLanguagesEnum.te,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Telegu',
    ),
  );

  /// zh
  static const CommonLanguages zh = CommonLanguages._(
    valueString: 'zh',
    valueEnum: CommonLanguagesEnum.zh,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Chinese',
    ),
  );

  /// zh_CN
  static const CommonLanguages zhCn = CommonLanguages._(
    valueString: 'zh-CN',
    valueEnum: CommonLanguagesEnum.zhCn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Chinese (China)',
    ),
  );

  /// zh_HK
  static const CommonLanguages zhHk = CommonLanguages._(
    valueString: 'zh-HK',
    valueEnum: CommonLanguagesEnum.zhHk,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Chinese (Hong Kong)',
    ),
  );

  /// zh_SG
  static const CommonLanguages zhSg = CommonLanguages._(
    valueString: 'zh-SG',
    valueEnum: CommonLanguagesEnum.zhSg,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Chinese (Singapore)',
    ),
  );

  /// zh_TW
  static const CommonLanguages zhTw = CommonLanguages._(
    valueString: 'zh-TW',
    valueEnum: CommonLanguagesEnum.zhTw,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Chinese (Taiwan)',
    ),
  );

  /// List of all enum-like values
  static final List<CommonLanguages> values = [
    ar,
    bn,
    cs,
    da,
    de,
    deAt,
    deCh,
    deDe,
    el,
    en,
    enAu,
    enCa,
    enGb,
    enIn,
    enNz,
    enSg,
    enUs,
    es,
    esAr,
    esEs,
    esUy,
    fi,
    fr,
    frBe,
    frCh,
    frFr,
    fy,
    fyNl,
    hi,
    hr,
    it,
    itCh,
    itIt,
    ja,
    ko,
    nl,
    nlBe,
    nlNl,
    no,
    noNo,
    pa,
    pl,
    pt,
    ptBr,
    ru,
    ruRu,
    sr,
    srRs,
    sv,
    svSe,
    te,
    zh,
    zhCn,
    zhHk,
    zhSg,
    zhTw,
  ];

  /// Returns the enum value with an element attached
  CommonLanguages withElement(Element? newElement) {
    return CommonLanguages._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  CommonLanguages clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CommonLanguagesCopyWithImpl<CommonLanguages> get copyWith =>
      CommonLanguagesCopyWithImpl<CommonLanguages>(
        this,
        (v) => v as CommonLanguages,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CommonLanguagesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CommonLanguagesCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      CommonLanguages(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
