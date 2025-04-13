// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CommonLanguages
enum CommonLanguagesBuilderEnum {
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
      case CommonLanguagesBuilderEnum.ar:
        return 'ar';
      case CommonLanguagesBuilderEnum.bn:
        return 'bn';
      case CommonLanguagesBuilderEnum.cs:
        return 'cs';
      case CommonLanguagesBuilderEnum.da:
        return 'da';
      case CommonLanguagesBuilderEnum.de:
        return 'de';
      case CommonLanguagesBuilderEnum.deAt:
        return 'de-AT';
      case CommonLanguagesBuilderEnum.deCh:
        return 'de-CH';
      case CommonLanguagesBuilderEnum.deDe:
        return 'de-DE';
      case CommonLanguagesBuilderEnum.el:
        return 'el';
      case CommonLanguagesBuilderEnum.en:
        return 'en';
      case CommonLanguagesBuilderEnum.enAu:
        return 'en-AU';
      case CommonLanguagesBuilderEnum.enCa:
        return 'en-CA';
      case CommonLanguagesBuilderEnum.enGb:
        return 'en-GB';
      case CommonLanguagesBuilderEnum.enIn:
        return 'en-IN';
      case CommonLanguagesBuilderEnum.enNz:
        return 'en-NZ';
      case CommonLanguagesBuilderEnum.enSg:
        return 'en-SG';
      case CommonLanguagesBuilderEnum.enUs:
        return 'en-US';
      case CommonLanguagesBuilderEnum.es:
        return 'es';
      case CommonLanguagesBuilderEnum.esAr:
        return 'es-AR';
      case CommonLanguagesBuilderEnum.esEs:
        return 'es-ES';
      case CommonLanguagesBuilderEnum.esUy:
        return 'es-UY';
      case CommonLanguagesBuilderEnum.fi:
        return 'fi';
      case CommonLanguagesBuilderEnum.fr:
        return 'fr';
      case CommonLanguagesBuilderEnum.frBe:
        return 'fr-BE';
      case CommonLanguagesBuilderEnum.frCh:
        return 'fr-CH';
      case CommonLanguagesBuilderEnum.frFr:
        return 'fr-FR';
      case CommonLanguagesBuilderEnum.fy:
        return 'fy';
      case CommonLanguagesBuilderEnum.fyNl:
        return 'fy-NL';
      case CommonLanguagesBuilderEnum.hi:
        return 'hi';
      case CommonLanguagesBuilderEnum.hr:
        return 'hr';
      case CommonLanguagesBuilderEnum.it:
        return 'it';
      case CommonLanguagesBuilderEnum.itCh:
        return 'it-CH';
      case CommonLanguagesBuilderEnum.itIt:
        return 'it-IT';
      case CommonLanguagesBuilderEnum.ja:
        return 'ja';
      case CommonLanguagesBuilderEnum.ko:
        return 'ko';
      case CommonLanguagesBuilderEnum.nl:
        return 'nl';
      case CommonLanguagesBuilderEnum.nlBe:
        return 'nl-BE';
      case CommonLanguagesBuilderEnum.nlNl:
        return 'nl-NL';
      case CommonLanguagesBuilderEnum.no:
        return 'no';
      case CommonLanguagesBuilderEnum.noNo:
        return 'no-NO';
      case CommonLanguagesBuilderEnum.pa:
        return 'pa';
      case CommonLanguagesBuilderEnum.pl:
        return 'pl';
      case CommonLanguagesBuilderEnum.pt:
        return 'pt';
      case CommonLanguagesBuilderEnum.ptBr:
        return 'pt-BR';
      case CommonLanguagesBuilderEnum.ru:
        return 'ru';
      case CommonLanguagesBuilderEnum.ruRu:
        return 'ru-RU';
      case CommonLanguagesBuilderEnum.sr:
        return 'sr';
      case CommonLanguagesBuilderEnum.srRs:
        return 'sr-RS';
      case CommonLanguagesBuilderEnum.sv:
        return 'sv';
      case CommonLanguagesBuilderEnum.svSe:
        return 'sv-SE';
      case CommonLanguagesBuilderEnum.te:
        return 'te';
      case CommonLanguagesBuilderEnum.zh:
        return 'zh';
      case CommonLanguagesBuilderEnum.zhCn:
        return 'zh-CN';
      case CommonLanguagesBuilderEnum.zhHk:
        return 'zh-HK';
      case CommonLanguagesBuilderEnum.zhSg:
        return 'zh-SG';
      case CommonLanguagesBuilderEnum.zhTw:
        return 'zh-TW';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CommonLanguagesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CommonLanguagesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CommonLanguagesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'ar':
        return CommonLanguagesBuilderEnum.ar;
      case 'bn':
        return CommonLanguagesBuilderEnum.bn;
      case 'cs':
        return CommonLanguagesBuilderEnum.cs;
      case 'da':
        return CommonLanguagesBuilderEnum.da;
      case 'de':
        return CommonLanguagesBuilderEnum.de;
      case 'de-AT':
        return CommonLanguagesBuilderEnum.deAt;
      case 'de-CH':
        return CommonLanguagesBuilderEnum.deCh;
      case 'de-DE':
        return CommonLanguagesBuilderEnum.deDe;
      case 'el':
        return CommonLanguagesBuilderEnum.el;
      case 'en':
        return CommonLanguagesBuilderEnum.en;
      case 'en-AU':
        return CommonLanguagesBuilderEnum.enAu;
      case 'en-CA':
        return CommonLanguagesBuilderEnum.enCa;
      case 'en-GB':
        return CommonLanguagesBuilderEnum.enGb;
      case 'en-IN':
        return CommonLanguagesBuilderEnum.enIn;
      case 'en-NZ':
        return CommonLanguagesBuilderEnum.enNz;
      case 'en-SG':
        return CommonLanguagesBuilderEnum.enSg;
      case 'en-US':
        return CommonLanguagesBuilderEnum.enUs;
      case 'es':
        return CommonLanguagesBuilderEnum.es;
      case 'es-AR':
        return CommonLanguagesBuilderEnum.esAr;
      case 'es-ES':
        return CommonLanguagesBuilderEnum.esEs;
      case 'es-UY':
        return CommonLanguagesBuilderEnum.esUy;
      case 'fi':
        return CommonLanguagesBuilderEnum.fi;
      case 'fr':
        return CommonLanguagesBuilderEnum.fr;
      case 'fr-BE':
        return CommonLanguagesBuilderEnum.frBe;
      case 'fr-CH':
        return CommonLanguagesBuilderEnum.frCh;
      case 'fr-FR':
        return CommonLanguagesBuilderEnum.frFr;
      case 'fy':
        return CommonLanguagesBuilderEnum.fy;
      case 'fy-NL':
        return CommonLanguagesBuilderEnum.fyNl;
      case 'hi':
        return CommonLanguagesBuilderEnum.hi;
      case 'hr':
        return CommonLanguagesBuilderEnum.hr;
      case 'it':
        return CommonLanguagesBuilderEnum.it;
      case 'it-CH':
        return CommonLanguagesBuilderEnum.itCh;
      case 'it-IT':
        return CommonLanguagesBuilderEnum.itIt;
      case 'ja':
        return CommonLanguagesBuilderEnum.ja;
      case 'ko':
        return CommonLanguagesBuilderEnum.ko;
      case 'nl':
        return CommonLanguagesBuilderEnum.nl;
      case 'nl-BE':
        return CommonLanguagesBuilderEnum.nlBe;
      case 'nl-NL':
        return CommonLanguagesBuilderEnum.nlNl;
      case 'no':
        return CommonLanguagesBuilderEnum.no;
      case 'no-NO':
        return CommonLanguagesBuilderEnum.noNo;
      case 'pa':
        return CommonLanguagesBuilderEnum.pa;
      case 'pl':
        return CommonLanguagesBuilderEnum.pl;
      case 'pt':
        return CommonLanguagesBuilderEnum.pt;
      case 'pt-BR':
        return CommonLanguagesBuilderEnum.ptBr;
      case 'ru':
        return CommonLanguagesBuilderEnum.ru;
      case 'ru-RU':
        return CommonLanguagesBuilderEnum.ruRu;
      case 'sr':
        return CommonLanguagesBuilderEnum.sr;
      case 'sr-RS':
        return CommonLanguagesBuilderEnum.srRs;
      case 'sv':
        return CommonLanguagesBuilderEnum.sv;
      case 'sv-SE':
        return CommonLanguagesBuilderEnum.svSe;
      case 'te':
        return CommonLanguagesBuilderEnum.te;
      case 'zh':
        return CommonLanguagesBuilderEnum.zh;
      case 'zh-CN':
        return CommonLanguagesBuilderEnum.zhCn;
      case 'zh-HK':
        return CommonLanguagesBuilderEnum.zhHk;
      case 'zh-SG':
        return CommonLanguagesBuilderEnum.zhSg;
      case 'zh-TW':
        return CommonLanguagesBuilderEnum.zhTw;
    }
    return null;
  }
}

/// This value set includes common codes from BCP-47
/// (http://tools.ietf.org/html/bcp47)
class CommonLanguagesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CommonLanguagesBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CommonLanguagesBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = CommonLanguagesBuilderEnum.fromString(
      valueString,
    );
    return CommonLanguagesBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [CommonLanguagesBuilder]
  /// with element only
  factory CommonLanguagesBuilder.empty() =>
      CommonLanguagesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CommonLanguagesBuilder] from JSON.
  factory CommonLanguagesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonLanguagesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CommonLanguagesBuilder cannot be constructed from JSON.',
      );
    }
    return CommonLanguagesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CommonLanguagesBuilder
  final CommonLanguagesBuilderEnum? valueEnum;

  /// ar
  static CommonLanguagesBuilder ar = CommonLanguagesBuilder._(
    valueString: 'ar',
    valueEnum: CommonLanguagesBuilderEnum.ar,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Arabic',
    ),
  );

  /// bn
  static CommonLanguagesBuilder bn = CommonLanguagesBuilder._(
    valueString: 'bn',
    valueEnum: CommonLanguagesBuilderEnum.bn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Bengali',
    ),
  );

  /// cs
  static CommonLanguagesBuilder cs = CommonLanguagesBuilder._(
    valueString: 'cs',
    valueEnum: CommonLanguagesBuilderEnum.cs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Czech',
    ),
  );

  /// da
  static CommonLanguagesBuilder da = CommonLanguagesBuilder._(
    valueString: 'da',
    valueEnum: CommonLanguagesBuilderEnum.da,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Danish',
    ),
  );

  /// de
  static CommonLanguagesBuilder de = CommonLanguagesBuilder._(
    valueString: 'de',
    valueEnum: CommonLanguagesBuilderEnum.de,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'German',
    ),
  );

  /// de_AT
  static CommonLanguagesBuilder deAt = CommonLanguagesBuilder._(
    valueString: 'de-AT',
    valueEnum: CommonLanguagesBuilderEnum.deAt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'German (Austria)',
    ),
  );

  /// de_CH
  static CommonLanguagesBuilder deCh = CommonLanguagesBuilder._(
    valueString: 'de-CH',
    valueEnum: CommonLanguagesBuilderEnum.deCh,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'German (Switzerland)',
    ),
  );

  /// de_DE
  static CommonLanguagesBuilder deDe = CommonLanguagesBuilder._(
    valueString: 'de-DE',
    valueEnum: CommonLanguagesBuilderEnum.deDe,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'German (Germany)',
    ),
  );

  /// el
  static CommonLanguagesBuilder el = CommonLanguagesBuilder._(
    valueString: 'el',
    valueEnum: CommonLanguagesBuilderEnum.el,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Greek',
    ),
  );

  /// en
  static CommonLanguagesBuilder en = CommonLanguagesBuilder._(
    valueString: 'en',
    valueEnum: CommonLanguagesBuilderEnum.en,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English',
    ),
  );

  /// en_AU
  static CommonLanguagesBuilder enAu = CommonLanguagesBuilder._(
    valueString: 'en-AU',
    valueEnum: CommonLanguagesBuilderEnum.enAu,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (Australia)',
    ),
  );

  /// en_CA
  static CommonLanguagesBuilder enCa = CommonLanguagesBuilder._(
    valueString: 'en-CA',
    valueEnum: CommonLanguagesBuilderEnum.enCa,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (Canada)',
    ),
  );

  /// en_GB
  static CommonLanguagesBuilder enGb = CommonLanguagesBuilder._(
    valueString: 'en-GB',
    valueEnum: CommonLanguagesBuilderEnum.enGb,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (Great Britain)',
    ),
  );

  /// en_IN
  static CommonLanguagesBuilder enIn = CommonLanguagesBuilder._(
    valueString: 'en-IN',
    valueEnum: CommonLanguagesBuilderEnum.enIn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (India)',
    ),
  );

  /// en_NZ
  static CommonLanguagesBuilder enNz = CommonLanguagesBuilder._(
    valueString: 'en-NZ',
    valueEnum: CommonLanguagesBuilderEnum.enNz,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (New Zeland)',
    ),
  );

  /// en_SG
  static CommonLanguagesBuilder enSg = CommonLanguagesBuilder._(
    valueString: 'en-SG',
    valueEnum: CommonLanguagesBuilderEnum.enSg,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (Singapore)',
    ),
  );

  /// en_US
  static CommonLanguagesBuilder enUs = CommonLanguagesBuilder._(
    valueString: 'en-US',
    valueEnum: CommonLanguagesBuilderEnum.enUs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'English (United States)',
    ),
  );

  /// es
  static CommonLanguagesBuilder es = CommonLanguagesBuilder._(
    valueString: 'es',
    valueEnum: CommonLanguagesBuilderEnum.es,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Spanish',
    ),
  );

  /// es_AR
  static CommonLanguagesBuilder esAr = CommonLanguagesBuilder._(
    valueString: 'es-AR',
    valueEnum: CommonLanguagesBuilderEnum.esAr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Spanish (Argentina)',
    ),
  );

  /// es_ES
  static CommonLanguagesBuilder esEs = CommonLanguagesBuilder._(
    valueString: 'es-ES',
    valueEnum: CommonLanguagesBuilderEnum.esEs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Spanish (Spain)',
    ),
  );

  /// es_UY
  static CommonLanguagesBuilder esUy = CommonLanguagesBuilder._(
    valueString: 'es-UY',
    valueEnum: CommonLanguagesBuilderEnum.esUy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Spanish (Uruguay)',
    ),
  );

  /// fi
  static CommonLanguagesBuilder fi = CommonLanguagesBuilder._(
    valueString: 'fi',
    valueEnum: CommonLanguagesBuilderEnum.fi,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Finnish',
    ),
  );

  /// fr
  static CommonLanguagesBuilder fr = CommonLanguagesBuilder._(
    valueString: 'fr',
    valueEnum: CommonLanguagesBuilderEnum.fr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'French',
    ),
  );

  /// fr_BE
  static CommonLanguagesBuilder frBe = CommonLanguagesBuilder._(
    valueString: 'fr-BE',
    valueEnum: CommonLanguagesBuilderEnum.frBe,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'French (Belgium)',
    ),
  );

  /// fr_CH
  static CommonLanguagesBuilder frCh = CommonLanguagesBuilder._(
    valueString: 'fr-CH',
    valueEnum: CommonLanguagesBuilderEnum.frCh,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'French (Switzerland)',
    ),
  );

  /// fr_FR
  static CommonLanguagesBuilder frFr = CommonLanguagesBuilder._(
    valueString: 'fr-FR',
    valueEnum: CommonLanguagesBuilderEnum.frFr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'French (France)',
    ),
  );

  /// fy
  static CommonLanguagesBuilder fy = CommonLanguagesBuilder._(
    valueString: 'fy',
    valueEnum: CommonLanguagesBuilderEnum.fy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Frysian',
    ),
  );

  /// fy_NL
  static CommonLanguagesBuilder fyNl = CommonLanguagesBuilder._(
    valueString: 'fy-NL',
    valueEnum: CommonLanguagesBuilderEnum.fyNl,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Frysian (Netherlands)',
    ),
  );

  /// hi
  static CommonLanguagesBuilder hi = CommonLanguagesBuilder._(
    valueString: 'hi',
    valueEnum: CommonLanguagesBuilderEnum.hi,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Hindi',
    ),
  );

  /// hr
  static CommonLanguagesBuilder hr = CommonLanguagesBuilder._(
    valueString: 'hr',
    valueEnum: CommonLanguagesBuilderEnum.hr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Croatian',
    ),
  );

  /// it
  static CommonLanguagesBuilder it = CommonLanguagesBuilder._(
    valueString: 'it',
    valueEnum: CommonLanguagesBuilderEnum.it,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Italian',
    ),
  );

  /// it_CH
  static CommonLanguagesBuilder itCh = CommonLanguagesBuilder._(
    valueString: 'it-CH',
    valueEnum: CommonLanguagesBuilderEnum.itCh,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Italian (Switzerland)',
    ),
  );

  /// it_IT
  static CommonLanguagesBuilder itIt = CommonLanguagesBuilder._(
    valueString: 'it-IT',
    valueEnum: CommonLanguagesBuilderEnum.itIt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Italian (Italy)',
    ),
  );

  /// ja
  static CommonLanguagesBuilder ja = CommonLanguagesBuilder._(
    valueString: 'ja',
    valueEnum: CommonLanguagesBuilderEnum.ja,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Japanese',
    ),
  );

  /// ko
  static CommonLanguagesBuilder ko = CommonLanguagesBuilder._(
    valueString: 'ko',
    valueEnum: CommonLanguagesBuilderEnum.ko,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Korean',
    ),
  );

  /// nl
  static CommonLanguagesBuilder nl = CommonLanguagesBuilder._(
    valueString: 'nl',
    valueEnum: CommonLanguagesBuilderEnum.nl,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Dutch',
    ),
  );

  /// nl_BE
  static CommonLanguagesBuilder nlBe = CommonLanguagesBuilder._(
    valueString: 'nl-BE',
    valueEnum: CommonLanguagesBuilderEnum.nlBe,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Dutch (Belgium)',
    ),
  );

  /// nl_NL
  static CommonLanguagesBuilder nlNl = CommonLanguagesBuilder._(
    valueString: 'nl-NL',
    valueEnum: CommonLanguagesBuilderEnum.nlNl,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Dutch (Netherlands)',
    ),
  );

  /// no
  static CommonLanguagesBuilder no = CommonLanguagesBuilder._(
    valueString: 'no',
    valueEnum: CommonLanguagesBuilderEnum.no,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Norwegian',
    ),
  );

  /// no_NO
  static CommonLanguagesBuilder noNo = CommonLanguagesBuilder._(
    valueString: 'no-NO',
    valueEnum: CommonLanguagesBuilderEnum.noNo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Norwegian (Norway)',
    ),
  );

  /// pa
  static CommonLanguagesBuilder pa = CommonLanguagesBuilder._(
    valueString: 'pa',
    valueEnum: CommonLanguagesBuilderEnum.pa,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Punjabi',
    ),
  );

  /// pl
  static CommonLanguagesBuilder pl = CommonLanguagesBuilder._(
    valueString: 'pl',
    valueEnum: CommonLanguagesBuilderEnum.pl,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Polish',
    ),
  );

  /// pt
  static CommonLanguagesBuilder pt = CommonLanguagesBuilder._(
    valueString: 'pt',
    valueEnum: CommonLanguagesBuilderEnum.pt,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Portuguese',
    ),
  );

  /// pt_BR
  static CommonLanguagesBuilder ptBr = CommonLanguagesBuilder._(
    valueString: 'pt-BR',
    valueEnum: CommonLanguagesBuilderEnum.ptBr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Portuguese (Brazil)',
    ),
  );

  /// ru
  static CommonLanguagesBuilder ru = CommonLanguagesBuilder._(
    valueString: 'ru',
    valueEnum: CommonLanguagesBuilderEnum.ru,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Russian',
    ),
  );

  /// ru_RU
  static CommonLanguagesBuilder ruRu = CommonLanguagesBuilder._(
    valueString: 'ru-RU',
    valueEnum: CommonLanguagesBuilderEnum.ruRu,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Russian (Russia)',
    ),
  );

  /// sr
  static CommonLanguagesBuilder sr = CommonLanguagesBuilder._(
    valueString: 'sr',
    valueEnum: CommonLanguagesBuilderEnum.sr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Serbian',
    ),
  );

  /// sr_RS
  static CommonLanguagesBuilder srRs = CommonLanguagesBuilder._(
    valueString: 'sr-RS',
    valueEnum: CommonLanguagesBuilderEnum.srRs,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Serbian (Serbia)',
    ),
  );

  /// sv
  static CommonLanguagesBuilder sv = CommonLanguagesBuilder._(
    valueString: 'sv',
    valueEnum: CommonLanguagesBuilderEnum.sv,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Swedish',
    ),
  );

  /// sv_SE
  static CommonLanguagesBuilder svSe = CommonLanguagesBuilder._(
    valueString: 'sv-SE',
    valueEnum: CommonLanguagesBuilderEnum.svSe,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Swedish (Sweden)',
    ),
  );

  /// te
  static CommonLanguagesBuilder te = CommonLanguagesBuilder._(
    valueString: 'te',
    valueEnum: CommonLanguagesBuilderEnum.te,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Telegu',
    ),
  );

  /// zh
  static CommonLanguagesBuilder zh = CommonLanguagesBuilder._(
    valueString: 'zh',
    valueEnum: CommonLanguagesBuilderEnum.zh,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Chinese',
    ),
  );

  /// zh_CN
  static CommonLanguagesBuilder zhCn = CommonLanguagesBuilder._(
    valueString: 'zh-CN',
    valueEnum: CommonLanguagesBuilderEnum.zhCn,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Chinese (China)',
    ),
  );

  /// zh_HK
  static CommonLanguagesBuilder zhHk = CommonLanguagesBuilder._(
    valueString: 'zh-HK',
    valueEnum: CommonLanguagesBuilderEnum.zhHk,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Chinese (Hong Kong)',
    ),
  );

  /// zh_SG
  static CommonLanguagesBuilder zhSg = CommonLanguagesBuilder._(
    valueString: 'zh-SG',
    valueEnum: CommonLanguagesBuilderEnum.zhSg,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Chinese (Singapore)',
    ),
  );

  /// zh_TW
  static CommonLanguagesBuilder zhTw = CommonLanguagesBuilder._(
    valueString: 'zh-TW',
    valueEnum: CommonLanguagesBuilderEnum.zhTw,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/languages',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Chinese (Taiwan)',
    ),
  );

  /// For instances where an Element is present but not value
  static CommonLanguagesBuilder elementOnly = CommonLanguagesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CommonLanguagesBuilder> values = [
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
  CommonLanguagesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CommonLanguagesBuilder._(
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
}
